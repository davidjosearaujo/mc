import math
import nltk
import numpy as np
import polars as pl
import matplotlib.pyplot as plt
from nltk.stem import WordNetLemmatizer

nltk.download('punkt')
nltk.download('wordnet')
nltk.download('omw-1.4')

class CLF:
    
    def __init__(self):
        self.k = 1
        self.lemmatizer = WordNetLemmatizer()
    
    def _vocab(self, samples):
        vocab = [token for sample in samples for token in sample]
        #print(f'{samples}/{vocab}')
        return list(set(vocab))

    def _compute_likelihood(self, samples):
        likelihood = {}
        vocab = self._vocab(samples)
        
        for w in vocab:
            count = 0
            for sentence in samples:
                if w in sentence:
                    #print(w+":", sentence)
                    count += 1
            #print(f"Number of ham emails with the word '{w}': {count}")
            #prob = (count + self.k)/(len(samples) + 2.0*self.k) # smoothing
            #print(f"Probability of the word '{w}': {prob} ")
            likelihood[w.lower()] = count
        return likelihood
    
    def _p_word_spam(self, token):
        return (self.k + self.likelihood_spam.get(token, 0.0)) / ((2.0 * self.k) + self.num_spam_messages)

    def _p_word_ham(self, token):
        return (self.k + self.likelihood_ham.get(token, 0.0)) / ((2.0 * self.k) + self.num_ham_messages)

    def get_spam_vocab(self, n=10):
        vocab = []
        for k in self.likelihood_spam:
            prob = self._p_word_spam(k)
            vocab.append((k, prob))
        # Sort the vocab
        vocab.sort(reverse=True, key=lambda e: (e[1], e[0]))
        # Return
        return vocab[:min(n, len(vocab))]
    
    def get_ham_vocab(self, n=10):
        vocab = []
        for k in self.likelihood_spam:
            prob = self._p_word_ham(k)
            vocab.append((k, prob))
        # Sort the vocab
        vocab.sort(reverse=True, key=lambda e: (e[1], e[0]))
        # Return
        return vocab[:min(n, len(vocab))]
    
    def fit(self, dataset):
        # compute priors
        dataset_total = len(dataset)
        spam_samples = [txt for txt, label in dataset if label == 1]
        ham_samples = [txt for txt, label in dataset if label == 0]

        #print(f'{spam_samples}')
        #print(f'{ham_samples}')

        self.ps = len(spam_samples) / dataset_total
        self.ph = len(ham_samples) / dataset_total

        #print(f'{self.ps} {self.ph}')

        # Pre-process text
        spam_samples = [nltk.word_tokenize(sample) for sample in spam_samples]
        ham_samples = [nltk.word_tokenize(sample) for sample in ham_samples]

        #print(f'{spam_samples}')
        #print(f'{ham_samples}')

        spam_samples = [[self.lemmatizer.lemmatize(w).lower() for w in tokens if len(self.lemmatizer.lemmatize(w)) > 2] for tokens in spam_samples]
        ham_samples = [[self.lemmatizer.lemmatize(w).lower() for w in tokens if len(self.lemmatizer.lemmatize(w)) > 2] for tokens in ham_samples]
        
        #print(f'{spam_samples}')
        #print(f'{ham_samples}')

        # compute_likelihood
        self.likelihood_spam = self._compute_likelihood(spam_samples)
        self.num_spam_messages = len(spam_samples)
        self.likelihood_ham = self._compute_likelihood(ham_samples)
        self.num_ham_messages = len(ham_samples)
       
    def predict(self, txt):
        # Pre-process text (similar to the train)
        tokens = nltk.word_tokenize(txt)
        tokens = [self.lemmatizer.lemmatize(w).lower() for w in tokens if len(self.lemmatizer.lemmatize(w)) > 2]

        #print(tokens)

        log_p_spam = 0.0
        log_p_ham = 0.0

        for t in tokens:
            log_p_spam += math.log(self._p_word_spam(t))
            log_p_ham += math.log(self._p_word_ham(t))
        
        prob_spam = (math.exp(log_p_spam)*self.ps)/(math.exp(log_p_spam)*self.ps+math.exp(log_p_ham)*self.ph)
        if prob_spam >= 0.5:
            return 'spam', prob_spam
        else:
            return 'ham', prob_spam
import polars as pl
import src.spam as spam


def main():
    df = pl.read_csv('enron_spam_data.csv')
    print(f'{df.describe()}')
    dataset = df.rows()
    idx = int(len(dataset)*.8)
    dataset_train = dataset[0: idx]
    dataset_test = dataset[idx:]
    
    clf = spam.CLF()
    clf.fit(dataset_train)

    acc = 0.0
    for sentence, label in dataset_test:
        predicted_label = clf.predict(sentence)
        if label == predicted_label:
            acc += 1.0
    print(f'Accuracy = {acc/len(dataset_test)}')


if __name__ == '__main__':
    main()
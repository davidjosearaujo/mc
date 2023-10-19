#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <openssl/sha.h>

void keygen(const char *string, unsigned char hash[SHA256_DIGEST_LENGTH])
{
    SHA256_CTX sha256;
    SHA256_Init(&sha256);
    SHA256_Update(&sha256, string, strlen(string));
    SHA256_Final(hash, &sha256);
}

int main()
{
    char input_string[] = "Hello, World!";
    unsigned char hash[SHA256_DIGEST_LENGTH];

    keygen(input_string, hash);

    printf("SHA-256 Hash: ");
    for (int i = 0; i < SHA256_DIGEST_LENGTH; i++)
    {
        printf("%x", hash[i]);
    }
    printf("\n");

    return 0;
}

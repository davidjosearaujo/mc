# Vulnerability Analysis

## Applications

- [niltalk](https://github.com/knadh/niltalk)
- [gitness](https://github.com/harness/gitness)
- [Incubator Answer](https://github.com/apache/incubator-answer)

## Vulnerabilities

The search for weaknesses will target the following vulnerabilities:

| Title | OWASP Code | Description |
| - | :-: | - |
| Path Confusion | 4.2.13 | Read code where the server paths are defined. Check for badly configured paths, usually with improper usage of regular expressions. |
| Directory Traversal File Include | 4.5.1 | Many web applications use and manage files as part of their daily operation. Using input validation methods that have not been well designed or deployed, an aggressor could exploit the system to read or write files that are not intended to be accessible. In particular situations, it could be possible to execute arbitrary code or system commands.|
| JWT | 4.6.10 | Check the algorithm used, signature validation, weak secret key used in the HMAC (if applicable), private information leakage, and improper check of the claims defined in RFC 5719. |
| Stored Cross Site Scripting | 4.7.2 | Stored Cross-site Scripting (XSS) is the most dangerous type of Cross Site Scripting. Web applications that allow users to store data are potentially exposed to this type of attack. |
| Malicious File Upload | 4.10.9 | Identify features with file inclusion, check for malware upload, XML file upload, and filter invasion. |
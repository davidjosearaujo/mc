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

## niltalk

_niltalk was tested, running locally at [localhost:9000](http://localhost:9000/)._

### 4.2.13 - Path Confusion

> _"... replace all the existing paths with paths that do not exist, and then examine the behavior and status code of the target."_
>
>[OWASP](https://owasp.org/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/02-Configuration_and_Deployment_Management_Testing/13-Test_for_Path_Confusion)

First technique was to _fuzz_ the main path, in search for some hidden path that may had misplaced by the developers. This was done, firstly with `dirb` and it's default wordlists, and then with `wfuzz` with common list from [SecLists](https://github.com/danielmiessler/SecLists).

```bash
root@parrot:/usr/share/dirb/wordlists$ for file in $(ls -fA); do dirb http://localhost:9000/ $file; done
```

```bash
root@parrot:/usr/share/wordlists/seclists$ wfuzz -c -z file,Discovery/Web-Content/directory-list-1.0.txt --sc 200 http://10.0.2.2:9000/FUZZ
```

No matches were found fuzzing the application.

By reading the documentation for this particular application tho, we learn that each chat room is given an auto-generated and unique id, which is used to create the URL path for that room. And being that each room is ephemeral and with a very limited timeout, exposed path are improbable to occur.

<!--
Test the /api endpoint
-->

### 4.5.1 - Directory Traversal File Include

> _"... enumerate all parts of the application that accept content from the user."_
>
>[OWASP](https://owasp.org/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/05-Authorization_Testing/01-Testing_Directory_Traversal_File_Include)

<!--
Application is not usable is address is 127.0.0.1 or 0.0.0.0 instead of "localhost"!!
-->



### 4.6.10 - JWT

### 4.7.2 - Stored Cross Site Scripting

### 4.10.9 - Malicious File Upload

## gitness

### 4.2.13 - Path Confusion

### 4.5.1 - Directory Traversal File Include

### 4.6.10 - JWT

### 4.7.2 - Stored Cross Site Scripting

### 4.10.9 - Malicious File Upload

## Incubator Answer

### 4.2.13 - Path Confusion

### 4.5.1 - Directory Traversal File Include

### 4.6.10 - JWT

### 4.7.2 - Stored Cross Site Scripting

### 4.10.9 - Malicious File Upload
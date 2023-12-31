# Lab 03 - Broken authentication and XSS

## Scope

This assessment scope focused on two activities:

- **bWAPP** - bWAPP is a free and open-source deliberately insecure web application.
  - **Broken Auth - Password Attacks**
  - **Session Management - Cookies (HTTPOnly) Medium**
  - **Session Management - Session ID in URL**
- **HTB Toxic Challenge**

# bWAPP

## 1. Broken Auth - Password Attacks

This attack is quite simple, the only procedure occurring is a dictionary attack were we specify a list of word, and the ZAP application will rapidly execute request with every single word until it finds a successful response. 

![01](./prints/2023-10-20_11-32.png)

![02](./prints/2023-10-20_11-51.png)

![03](./prints/2023-10-20_11-53.png)

![04](./prints/Screenshot%20from%202023-10-22%2015-42-08.png)

<P style="page-break-before: always">

## 2. Session Management - Cookies (HTTPOnly) Medium

![05](./prints/Screenshot%20from%202023-10-22%2016-57-57.png)

## 3. Session Management - Session ID in URL 

![06](./prints/Screenshot%20from%202023-10-22%2017-20-12.png)

![07](./prints/Screenshot%20from%202023-10-22%2017-20-42.png)

# Toxic HTB Challenge 

In the downloaded files, we can see that eh “PHPSESSID” cookie value is base64 encoded and it’s content is displayed on the webpage.

![08](./prints/Screenshot%20from%202023-10-24%2000-24-03.png)

Knowing this, we are able to visualize how the cookie is constructed by bas64 decoding it. This is useful because we can now test if the application accepts forged cookies and what type of access we are able to obtain.

![09](./prints/Screenshot%20from%202023-10-23%2012-48-44.png)

<P style="page-break-before: always">

To test for access and level of privilege, we try to access the linux password file, `etc/passwd`,  and we confirm that ,indeed, we have root access.  

![10](./prints/Screenshot%20from%202023-10-23%2021-08-49.png)

From analyzing the network requests and the provided files, we also know that the server uses and nginx service. We can try to access the log file from this server by requesting it via a forged cookie.

![11](./prints/Screenshot%20from%202023-10-24%2000-03-59.png)

<P style="page-break-before: always">

What we learn from this is that the service reflects the `User-Agent` field into the log file, meaning that it is adding the contents of this field directly onto the PHP, without sanitization, which will probably allow us to inject PHP and OS commands.

![12](./prints/Screenshot%20from%202023-10-24%2000-08-42.png)

<P style="page-break-before: always">

This is exactly what we do. Firstly, we find out what theres is in the root folder, and we can clearly see that a `flag` file is present.

![15](./prints/Screenshot%20from%202023-10-24%2000-10-25.png)

Opening this file reveals the flag that we were searching.

<P style="page-break-before: always">


# Juice Shop

Log in with Bender’s user account. This is done via a SQLInjection with the payload `bender@juice-sh.op' OR 1=1 --//`. This results in a successful login.

![11](./prints/2023-10-27_15-25.png)

By decoding the token received, we can see that it is a JWT token, and we are able to obtain information about the user.

![12](./prints/2023-10-27_15-28.png)

<P style="page-break-before: always">

We can also browser the application page by impersonating the user whose cookie we hijacked.

![13](./prints/2023-10-27_15-31.png)

<P style="page-break-before: always">

After that we can change the users password. We analyze the the request that is used for updating the password.

![14](./prints/2023-10-27_15-36.png)

<P style="page-break-before: always">

We can see that it is passed via a GET request and in cleartext. Exploring, we also discovered that we get a successful response when we pass only two of the values, corresponding to the new password we want to set. This means that the system does not verify that the user requesting the change knows the current password.

![15](./prints/2023-10-27_15-37.png)

<P style="page-break-before: always">

By forging a new token based on a valid existing one, we can interact has if we were an existing user, even if the credentials are none existing in the service.

![16](./prints/2023-10-27_16-11.png)

As we can see, we are able to create comments in products as if we were a legitimate user.

![17](./prints/2023-10-27_16-25.png)

<P style="page-break-before: always">

# Author

David José Araújo Ferreira, 93444 - [davidaraujo@ua.pt](mailto:davidaraujo@ua.pt)

Report submitted for the Lab 03 of _Analysis and Vulnerability Exploitation_ course at the University of Aveiro.

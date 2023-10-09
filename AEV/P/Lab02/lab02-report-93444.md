# Lab 02 - Injection

## Part 1 - TryHackMe

_Observe the resolution ans quizz answers at [TryHackMe Resolution](./TryHackMe%20_%20SQL%20Injection.pdf) pdf file.\_

### Scope

The objective of this machine was to explore the types of exploitation and methods of interaction during an SQL Injection attack.

One is expected to have explored:

-   **Types of SQL Injection**: Exploring various types of SQL injection attacks, such as In-Band SQL Injection, Blind SQL Injection and Time-Based Blind SQL Injection.
-   **Tools and Techniques**: Learning about tools like SQLMap and manual techniques to identify and exploit SQL injection vulnerabilities.
-   **Mitigation**: Understanding how to prevent SQL injection by implementing security measures like input validation and parameterized queries.

The main task that demand exploration from the user are task 5 through 8.

### Task 5 - In-Band SQL Injection

In-band SQL injection is a type of SQL injection attack where an attacker uses the same communication channel, such as the application's response, to both inject malicious SQL code and retrieve the results of the injected query.

One starts by exploring the response of the service to SQL statements, and an exposed _Error_ message is ideal.

![01](./prints/Screenshot%20at%202023-10-06%2014-16-26.png)

As we can see, the tables have a **different number of columns**, so we will add columns until it matches. Which in this case is three.

![02](./prints/Screenshot%20at%202023-10-06%2014-17-01.png)

Now that the number or columns is guessed, we can request other information like the database name.

![03](./prints/Screenshot%20at%202023-10-06%2014-17-17.png)

Knowing the database name, we'll view all the available tables within it.

![03](./prints/Screenshot%20at%202023-10-06%2014-17-33.png)

The `staff_users` table should be visited as information regarding users is always prone to have sensitive information.

![04](./prints/Screenshot%20at%202023-10-06%2014-17-48.png)

Sure enough, it does contain usernames and passwords that we can use to ingress further in the website.

![05](./prints/Screenshot%20at%202023-10-06%2014-18-17.png)

### Task 6 - Blind SQLi

Blind SQLi is when we get little to no feedback to confirm whether our injected queries were, in fact, successful or not, this is because the error messages have been disabled, but the injection still works regardless.

First let's try to log in with random credentials to see what the response is.

![06](./prints/Screenshot%20at%202023-10-06%2014-21-20.png)

We can observe that the SQL query that is being formed does not sanitize the user input, that is covinient has we can bypass the authentication by forcing the query to always return **True** by inputting ` OR 1=1; --`

![07](./prints/Screenshot%20at%202023-10-06%2014-21-26.png)

### Task 7 - Boolean Based Blind SQLi

Boolean based SQL Injection refers to the response we receive back from our injection attempts which could be a true/false,yes/no, on/off, 1/0 or any response which can only ever have two outcomes.

Since all we know is that the querie will either return `true` or `false`, we must experiment all possible option that result in a true evaluation. Only when one option returns true, can we processed with the next value of the querie.

![08](./prints/Screenshot%20at%202023-10-06%2014-23-44.png)

![09](./prints/Screenshot%20at%202023-10-06%2014-24-46.png)

Some value we can infer based on the pattern of the already known infrastructure.

![10](./prints/Screenshot%20at%202023-10-06%2014-27-26.png)

![11](./prints/Screenshot%20at%202023-10-06%2014-34-21.png)

For objective values, a brute force tool will be absolutely critical for guessing large amounts of values in short periods of time.

![12](./prints/Screenshot%20at%202023-10-06%2014-42-43.png)


# Author

David José Araújo Ferreira, 93444 - [davidaraujo@ua.pt](mailto:davidaraujo@ua.pt)

Report submitted for the Lab 02 of _Analysis and Vulnerability Exploitation_ course at the University of Aveiro.

# Lab 02 - Injection

## Part 1 - TryHackMe

_Observe the resolution ans quizz answers at [TryHackMe Resolution](./TryHackMe%20_%20SQL%20Injection.pdf) pdf file._

### Scope

The objective of this machine was to explore the types of exploitation and methods of interaction during an SQL Injection attack.

One is expected to have explored:

- **Types of SQL Injection**: Exploring various types of SQL injection attacks, such as In-Band SQL Injection, Blind SQL Injection and Time-Based Blind SQL Injection.
- **Tools and Techniques**: Learning about tools like SQLMap and manual techniques to identify and exploit SQL injection vulnerabilities.
- **Mitigation**: Understanding how to prevent SQL injection by implementing security measures like input validation and parameterized queries.

The main task that demand exploration from the user are task 5 through 8.

### Task 5 - In-Band SQL Injection

In-band SQL injection is a type of SQL injection attack where an attacker uses the same communication channel, such as the application's response, to both inject malicious SQL code and retrieve the results of the injected query.

One starts by exploring the response of the service to SQL statements, and an exposed _Error_ message is ideal.

![01](./prints/Screenshot%20at%202023-10-06%2014-16-26.png)

As we can see, the tables have a **different number of columns**, so we will add columns until it matches. Which in this case is three.

![02](./prints/Screenshot%20at%202023-10-06%2014-17-01.png)

# Author

David José Araújo Ferreira, 93444 - [davidaraujo@ua.pt](mailto:davidaraujo@ua.pt)

Report submitted for the Lab 02 of _Analysis and Vulnerability Exploitation_ course at the University of Aveiro.
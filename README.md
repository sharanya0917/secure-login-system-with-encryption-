# secure-login-system-with-encryption-
Secure Login System with Encryption

 Project Overview

The Secure Login System with Encryption is a Python-based command-line application designed to provide a simple and secure user authentication system.

The application allows users to register an account, securely store their passwords using hashing, log in using their credentials, and log out after a successful login.

Instead of storing passwords in plain text, the system uses the bcrypt hashing algorithm to protect user passwords.



   Features

   User registration

   Secure password hashing using bcrypt

  Stores user credentials in a users.txt file

  Login authentication

  Incorrect password detection

  User-not-found handling

  Logout functionality

  Simple command-line interface

  Passwords are never stored as plain text




  Technologies Used

Programming Language: Python

Library: bcrypt

Storage: Text file (users.txt)

Interface: Command Line Interface (CLI)




  Project Structure

Secure-Login-System/
│
├── encryption.py
├── users.txt
└── README.md

Files Description

File	Description

encryption.py	Main Python program
users.txt	Stores usernames and hashed passwords
README.md	Project documentation




  How Password Security Works

When a user registers, the entered password is converted into a secure hash using bcrypt.

hashed = bcrypt.hashpw(password.encode(), bcrypt.gensalt())

The hashed password is then stored in users.txt.

During login, the entered password is compared with the stored hash:

bcrypt.checkpw(password.encode(), stored_hash.encode())

If the passwords match, the user is successfully logged in.




  Installation

1. Install Python

Make sure Python is installed on your system.

Check the installation using:

python --version

2. Install bcrypt

Open the terminal or command prompt and run:

pip install bcrypt




  How to Run

Run the Python file:

python encryption.py

The program displays:

1. Register
2. Login
3. Exit
Choose option:




  Usage

Register

Select option 1:

Enter username: Sai
Enter password: password123
Registration successful!

The password is converted into a bcrypt hash before being stored.

Login

Select option 2:

Enter username: Sai
Enter password: password123
Login successful!
Press Enter to Logout...
Logged out successfully!

Exit

Select option 3:

Exiting...




  Security Measures

The project implements the following security measure:

Passwords are hashed using bcrypt.

Passwords are not directly stored in the text file.

A unique salt is generated using bcrypt.gensalt().

Login authentication is performed using bcrypt.checkpw().

Incorrect credentials are rejected.


> Note: This is an educational project. For a production system, additional security features such as a database, secure session management, rate limiting, and stronger input validation would be recommended.






  Objectives

The main objectives of this project are:

1. To understand user authentication.


2. To learn password hashing.


3. To implement bcrypt encryption/hashing in Python.


4. To securely store user credentials.


5. To validate login credentials.


6. To understand basic security practices in software applications.






  Future Enhancements

The project can be improved by adding:

Database storage using MySQL or SQLite

Password reset functionality

Password strength checking

Account lockout after multiple failed attempts

Username validation

Secure session management

Graphical User Interface (GUI)

Multi-factor authentication (MFA)

Improved error handling




  Conclusion

The Secure Login System with Encryption demonstrates how authentication can be implemented using Python and bcrypt. By hashing passwords instead of storing them in plain text, the system provides a safer approach to credential storage.

This project provides a good foundation for understanding authentication, password hashing, file handling, and basic cybersecurity concepts.




  Author

Name: K.Sai Sharanya 
Project: Secure Login System with Encryption
Language: Python
Technology: bcrypt
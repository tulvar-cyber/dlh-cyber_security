## Authentication vs Authorization

## 0. User Enumeration
Objective: Find valid users in the application by exploiting enumeration vulnerabilities.
What you need to do:
Use ffuf with SecLists wordlists
Test the /api/check_username endpoint to find which users exist
Identify which user contains the flag (the flag appears in the JSON response)
Repo:
GitHub repository: dlh-cyber_security
Directory: web_application_security/0x0B_WEBSEC
File: 0-flag.txt

## 1. Password Attacks
Objective:
Find weak passwords using brute-forcing and default credentials.
What you need to do:
Use ffuf to brute-force the password of admin
OR identify and exploit default credentials in the system
Login with the found credentials to get the flag
Repo:
GitHub repository: dlh-cyber_security
Directory: web_application_security/0x0B_WEBSEC
File: 1-flag.txt


## 2. Password Reset Token
Objective:
Exploit weak password reset token generation to reset a user's password.
What you need to do:
Enumerate users to find valid usernames
Request a password reset token for a user
Analyze how the token is generated
Bruteforce the token and reset the password
Login to get the flag



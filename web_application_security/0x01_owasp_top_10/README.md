## 0. (A2:2021) - Cryptographic Failures - Scripting


Create a Bash script that decode XOR WebSphere. Your Script should:

Accept the Hash args: $1.
Match the following output.
┌──(yosri㉿hbtn-lab)-[~/…/web_application_security/0x1_owasp_top_10]
└─$ ./1-xor_decoder.sh {xor}KzosKw==
test
Repo:

GitHub repository: dlh-cyber_security
Directory: web_application_security/0x01_owasp_top_10
File: 1-xor_decoder.sh

## 1. (A2:2021) - Cryptographic Failures - Catch The Flag
For this task:

Turn back to the target machine cyber_websec_0x01,
Heads out to: A2 - Cryptographic Failures -> Encoding Failure.
Your goal is finding out the the login credentials in order to retreive the flag on sign in.

Login Page : http://[MACHINE-IP]/a2/crypto_encoding_failure/
Where to start ? (Hints)

Profile Page : /a2/crypto_encoding_failure/profile
hints:

Think about the headers of all Fetch/XHR made requests.
Use the previous task to decrypt the password.
Repo:

GitHub repository: dlh-cyber_security
Directory: web_application_security/0x01_owasp_top_10
File: 2-flag.txt

## 2. (A3:2021) - Injection [Stored XSS] - part 1/3
This set of tasks is designed to mimic the famous Samy worm, which propagated across MySpace in 2005 by exploiting Cross-Site Scripting (XSS) vulnerabilities.

Identifying Profiles to Follow
Your first task is to identify three specific profiles within our web application that you need to follow. These profiles are crucial for the next steps of this exercise.

Instructions:

Navigate and Capture Requests:
Begin by exploring the web application, paying close attention to the network requests and responses.
You can use browser developer tools (F12) to monitor these interactions.
Identify Profile IDs:
Look for requests that return user information.
Within these responses, identify three specific profile IDs that you are instructed to follow.
Follow the Profiles:
Once you have identified the profile IDs, navigate to each profile: http://[MACHINE-IP]/a3/xss_stored/profile/[PROFILE-ID].
Follow each profile by clicking on the heart icon or the designated follow button on their profile page.
Catch the Flag:
Go back to your profile to find your waiting Flag ⛳️.
Repo:

GitHub repository: dlh-cyber_security
Directory: web_application_security/0x01_owasp_top_10
File: 3-flag.txt

## 3. (A3:2021) - Injection [Stored XSS] - part 2/3
Discovering a Vulnerable Input Field
Identify which input field in the profile edit page is vulnerable to Cross-Site Scripting (XSS).

Instructions:

Explore Edit Profile Page:
Navigate to your profile's edit page: http://[MACHINE-IP]/a3/xss_stored/edit.
This page contains multiple input fields where you can enter or update your personal information.
Test for XSS Vulnerability:
Test each input field for XSS vulnerability by entering a simple script such as <script>alert('XSS')</script> into the field and saving your changes.
Observe which input field, when modified, triggers the JavaScript alert upon viewing your profile. This indicates an XSS vulnerability.
Submit the vuln case name:
Observe the source code behavior. Quotes..
Find out the vuln field name.
$ echo "name" > 4-vuln.txt
Repo:

GitHub repository: dlh-cyber_security
Directory: web_application_security/0x01_owasp_top_10
File: 4-vuln.txt

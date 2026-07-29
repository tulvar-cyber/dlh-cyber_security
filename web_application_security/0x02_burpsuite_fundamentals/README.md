## BurpSuite - Fundamentals

0. Getting Started with Burp Suite
Burp Suite stands as a cornerstone tool in web application security testing, offering a vast array of features tailored for security professionals and ethical hackers.
Your first mission is to get Burp Suite up and running, configure it for web traffic interception, and uncover hidden data within TLS certificate details.

1. Client-Side TLS Authentication with Burp Suite
This task involves navigating client-side TLS authentication—a critical aspect of ensuring secure connections between clients and servers.
Upon accessing https://web0x02.hbtn, you'll encounter a welcome screen offering a download link for a .p12 certificate.
Your mission is to correctly install this certificate within Burp Suite to authenticate and reveal hidden content guarded by TLS client authentication.

2. Modifying Page Responses to Reveal Hidden Information
In this task, you will delve deeper into the functionalities of Burp Suite, particularly focusing on manipulating web server responses.
By intercepting and altering responses, you'll learn how to modify web page content in real-time.
Your objective is to reveal a hidden Flag  on the /task2 page by spoofing the frontend through response modification.

3. Exploring the Repeater Tool
Burp Suite's Repeater tool is pivotal for testing and tweaking requests without repeatedly interacting with the web application itself.
Your objective in this task is to utilize Repeater to guess login credentials on a page designed to mimic a router's login portal.
By examining the request details and making educated adjustments, you'll aim to gain unauthorized access and uncover a hidden Flag

4. The Intruder's Path to Hidden Profiles
Burp Suite's Intruder tool is engineered for automating customized attacks against web applications.
This task will have you utilize Intruder to discover hidden user profiles by automating requests with varying parameters.
Your mission is to find a specific profile ID that reveals a hidden Flag ⛳️ by systematically testing different ID values.



## Active Reconnaissance

Introduction
Active reconnaissance is a fundamental phase in cybersecurity assessments and penetration testing. This project introduces techniques used to gather information through direct interaction with target systems and networks. You will explore network scanning methods, port enumeration, service identification, and basic vulnerability assessment techniques. These skills are essential for understanding how attackers map and analyze target environments and how security professionals can detect and defend against such activities.

## 0. Are there any opened Ports ?
In this project, tasks are arranged in a sequential manner to help you understand the basic principles of hacking and develop a logical approach to performing actions

Search for a door!
For this task we need you to:

Connect to the VPN server
Get Target Machine -> cyber_netsec_0x02
App
Endpoint: http://active.hbtn
Scan that Machine top ports using nmap.
echo "<open_port>, <open_port>" > 0-ports.txt
Repo:

GitHub repository: dlh-cyber_security
Directory: network_security/0x02_active_reconnaissance
File: 0-ports.txt

## 1. Inspect the runner


Inspect the website!
For this task we need you to:

Edit /etc/hosts to point active.hbtn domain name to the Target IP.

sudo bash -c 'echo "<target_ip>    active.hbtn" >> /etc/hosts'
Inspect the found website.

Using Wappalyzer, check for webserver name and version

echo "<webserver_name> <webserver_version>" > 1-webserver.txt
App

Endpoint: http://active.hbtn

Repo:

GitHub repository: dlh-cyber_security
Directory: network_security/0x02_active_reconnaissance
File: 1-webserver.txt

## 2. Nothing defeat Manual inspection


Always check the SourceCode
For this challenge we need you to:

Browse active.hbtn
Search for the first flag.
echo "<FLAG_1>" > 100-flag.txt
Hints

Some Developer forgets comments in production.

App

Endpoint: http://active.hbtn

Repo:

GitHub repository: dlh-cyber_security
Directory: network_security/0x02_active_reconnaissance
File: 100-flag.txt

## 3. Trypanophobia
Try to alter params, forms and queries..
For this task we need you to:

Search for vulnerable page.
echo "/<pathname>" > 2-injectable.txt
Don't include params

Example: http://active.hbtn/orders/1511515

echo "/orders" > 2-injectable.txt
App
Endpoint: http://active.hbtn
Repo:

GitHub repository: dlh-cyber_security
Directory: network_security/0x02_active_reconnaissance
File: 2-injectable.txt

## 4. SQLmap is an army \o/
Here we are at our first SQL Injection test

For this task we need you to:

Find the main Database name.
echo "<database_name>" > 3-database.txt
Check how many Tables it does contain
echo "<tables_count>" > 4-tables.txt
Hints

You need to use sqlmap

--dbs to fetch databases names

-D <database_name> --tables To fetch tables names

App

Endpoint: http://active.hbtn

Repo:

GitHub repository: dlh-cyber_security
Directory: network_security/0x02_active_reconnaissance
File: 3-database.txt, 4-tables.txt

## 5. Injections hurt :')


For this challenge we need you to:

Search for the second flag.
echo "<FLAG_2>" > 101-flag.txt
Hints

-D <database_name> --dump to dump the database.
Check for the Users table
Flag is exposed clearly in active.hbtn
App
Endpoint: http://active.hbtn
Repo:

GitHub repository: dlh-cyber_security
Directory: network_security/0x02_active_reconnaissance
File: 101-flag.txt


## 6. My NAV doesn't include all my pages


Directory Enumeration
For this task we need you to:

Find the admin panel login page.
echo "/<pathname>" > 5-hidden_dir.txt
Hints

You need to use gobuster with dir option
-b 302 to ignore 302 status code.
-w /usr/share/wordlists/dirbuster/directory-list-2.3-small.txt for the wordlist
App
Endpoint: http://active.hbtn
Repo:

GitHub repository: dlh-cyber_security
Directory: network_security/0x02_active_reconnaissance
File: 5-hidden_dir.txt

## 7. It may look the same, but it’s not
For this challenge we need you to:

Search for the third flag.
echo "<FLAG_3>" > 102-flag.txt
Hints

Flag is exposed clearly in active.hbtn at Admin panel
App
Endpoint: http://active.hbtn
Repo:

GitHub repository: dlh-cyber_security
Directory: network_security/0x02_active_reconnaissance
File: 102-flag.txt


## Passive Reconnaissance
Introduction
Passive reconnaissance is a critical phase in cybersecurity and penetration testing. This project introduces the techniques used to gather information about targets without directly interacting with them. You will explore open-source intelligence (OSINT) methods, footprinting methodologies, and techniques for collecting data from search engines, social media platforms, and public databases without alerting the target. These skills are essential for identifying publicly exposed information and understanding potential security risks for organizations and individuals.

## 0. Who is it ?
Write a bash script that extract using whois scan in csv format:

Registrant Information
Admin Information
Tech Information

## 1. A record
Write a bash script that retrieve the A record of a specified domain using nslookup command:

┌──(yosri㉿HBTN-LAB)-[~/holbertonschool-cyber_security/network_security/0x01_passive_reconnaissance]
└─$ ./1-a_record.sh holbertonschool.com
Server:         8.8.8.8
Address:        8.8.8.8#53

Non-authoritative answer:
Name:   holbertonschool.com
Address: 75.2.70.75
Name:   holbertonschool.com
Address: 99.83.190.102

## 2. MX Record
Write a bash script that retrieve the MX record of a specified domain using nslookup command:

┌──(yosri㉿HBTN-LAB)-[~/holbertonschool-cyber_security/network_security/0x01_passive_reconnaissance]
└─$ ./2-mx_record.sh holbertonschool.com
Server:         8.8.8.8
Address:        8.8.8.8#53

Non-authoritative answer:
holbertonschool.com     mail exchanger = 1 aspmx.l.google.com.
holbertonschool.com     mail exchanger = 10 alt3.aspmx.l.google.com.
holbertonschool.com     mail exchanger = 10 alt4.aspmx.l.google.com.
holbertonschool.com     mail exchanger = 5 alt1.aspmx.l.google.com.
holbertonschool.com     mail exchanger = 5 alt2.aspmx.l.google.com.

## 3. Check the TXT
Write a bash script that retrieve the TXT record of a specified domain using nslookup command:

┌──(yosri㉿HBTN-LAB)-[~/holbertonschool-cyber_security/network_security/0x01_passive_reconnaissance]
└─$ ./3-txt_record.sh holbertonschool.com
;; Truncated, retrying in TCP mode.
Server:         8.8.8.8
Address:        8.8.8.8#53

Non-authoritative answer:
holbertonschool.com     text = "1C8BC5F558"
holbertonschool.com     text = "MS=BB8A869E4E8A47D208F560DE7D83F199D1BB8F4F"
holbertonschool.com     text = "apple-domain-verification=sqTGlUgV9vVTnBuB"
holbertonschool.com     text = "dropbox-domain-verification=pvxn88z3e06i"
holbertonschool.com     text = "google-site-verification=lnffgexG_GGal6Fa53z0Ve4dJY4z4GXAmy1I2_ldotk"
holbertonschool.com     text = "intacct-esk=A3E9DCEA8FB6B747E0539A220D0A9719"
holbertonschool.com     text = "loaderio=67a0fbf5fb42755902d5415639d826a6"
holbertonschool.com     text = "v=spf1 include:mailgun.org include:_spf.google.com include:spf.exclaimer.net include:mail.zendesk.com include:servers.mcsv.net include:_spf.intacct.com ip4:104.209.35.28 ip4:191.237.4.149 ~all"


## 4. Dig it all !
Write a bash script that retrieve All record of a specified domain using dig command:

Your output should contains answers only, noall

┌──(yosri㉿HBTN-LAB)-[~/holbertonschool-cyber_security/network_security/0x01_passive_reconnaissance]
└─$ ./4-dig_all.sh holbertonschool.com
holbertonschool.com.    300     IN      A       99.83.190.102
holbertonschool.com.    300     IN      A       75.2.70.75
holbertonschool.com.    300     IN      NS      ns-1455.awsdns-53.org.
holbertonschool.com.    300     IN      NS      ns-1619.awsdns-10.co.uk.
holbertonschool.com.    300     IN      NS      ns-176.awsdns-22.com.
holbertonschool.com.    300     IN      NS      ns-792.awsdns-35.net.
holbertonschool.com.    300     IN      SOA     ns-1455.awsdns-53.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400
holbertonschool.com.    300     IN      MX      1 aspmx.l.google.com.
holbertonschool.com.    300     IN      MX      10 alt3.aspmx.l.google.com.
holbertonschool.com.    300     IN      MX      10 alt4.aspmx.l.google.com.
holbertonschool.com.    300     IN      MX      5 alt1.aspmx.l.google.com.
holbertonschool.com.    300     IN      MX      5 alt2.aspmx.l.google.com.
holbertonschool.com.    60      IN      TXT     "1C8BC5F558"
holbertonschool.com.    60      IN      TXT     "MS=BB8A869E4E8A47D208F560DE7D83F199D1BB8F4F"
holbertonschool.com.    60      IN      TXT     "apple-domain-verification=sqTGlUgV9vVTnBuB"
holbertonschool.com.    60      IN      TXT     "dropbox-domain-verification=pvxn88z3e06i"
holbertonschool.com.    60      IN      TXT     "google-site-verification=lnffgexG_GGal6Fa53z0Ve4dJY4z4GXAmy1I2_ldotk"
holbertonschool.com.    60      IN      TXT     "intacct-esk=A3E9DCEA8FB6B747E0539A220D0A9719"
holbertonschool.com.    60      IN      TXT     "loaderio=67a0fbf5fb42755902d5415639d826a6"
holbertonschool.com.    60      IN      TXT     "v=spf1 include:mailgun.org include:_spf.google

## 5. Find the sub !
Write a bash script that fetch subdomains of given domain using subfinder command:

Show only subdomains in output
Write output in Host,IP format
File to write output to <domain>.txt
┌──(yosri㉿HBTN-LAB)-[~/holbertonschool-cyber_security/network_security/0x01_passive_reconnaissance]
└─$ ./5-subfinder.sh holbertonschool.com
www.holbertonschool.com
yriry2.holbertonschool.com
read.holbertonschool.com
apply.holbertonschool.com
rails-assets.holbertonschool.com
staging-rails-assets-apply.holbertonschool.com
staging-apply-forum.holbertonschool.com
..

## 6. Search for us
For this task, we need you to gather as much information as possible about the holbertonschool.com domain using Shodan*:

Collect all ip ranges within holbertonschool.com domaine
Collect Technologies and frameworks used within all subdomains of holbertonschool.com
Write up your notes as a report in markdown format.
Repo:

GitHub repository: dlh-cyber_security
Directory: network_security/0x01_passive_reconnaissance
File: holbertonschool_report.md

## 7. Catch The flag - TXT
Here we come to our first CTF within this module. \o/

For this challenge we are expecting you to:

Target Domain passive.hbtn
Connect to the VPN server
Get a cyber_netsec_0x01 Target Machine
Use this <target IP> as a dns resolver within dig command
dig @<target IP> passive.hbtn
Hints

The flag is hidden within TXT record

## 8. Catch The flag - NS
For this challenge we are expecting you to:

Target Domain passive.hbtn

Connect to the VPN server

Get a cyber_netsec_0x01 Target Machine

Use this <target IP> as a dns resolver within dig command

dig @<target IP> passive.hbtn
Hints

The flag is hidden within TXT record

Try to search within nameserver domains

Repo:

## 9. Catch the flag - MX
For this challenge we are expecting you to:

Target Domain passive.hbtn
Connect to the VPN server
Get a cyber_netsec_0x01 Target Machine
Use this <target IP> as a dns resolver within dig command
dig @<target IP> passive.hbtn
Hints

The flag is hidden within TXT record
Try to search within mail server domains




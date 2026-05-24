## Network Protocols: Auditing and Securing

In the world of cybersecurity, understanding how network protocols work and how they can be exploited is an essential skill.Every time data travels across a network, it relies on protocols to define how that data is sent, received, and protected. In this project, you will explore the landscape of secure and insecure network protocols. You will learn how SSL/TLS secures web traffic, how SSH replaced vulnerable protocols like Telnet, and how VPN technologies like IPSec and WireGuard protect sensitive communications. You will also investigate common misconfigurations in services like NFS, SNMP, and SMTP that attackers frequently exploit. Beyond understanding protocols, you will develop hands-on skills in auditing and hardening Linux systems configuring firewalls with iptables, identifying SSH weaknesses, and using tools like lynis, hping3, and nmap to assess system security.

## 0. Analyze iptables Rules
Write a script to display all current iptables rules in a readable format, including line numbers.

$ sudo ./0-iptables.sh
Chain DOCKER-USER (1 references)
num   pkts bytes target     prot opt in     out     source               destination         
1        0     0 RETURN     0    --  *      *       0.0.0.0/0            0.0.0.0/0
Repo:

GitHub repository: dlh-cyber_security
Directory: linux_security/network_protocols
File: 0-iptables.sh

## 1. Implement Basic Firewall Rules
Write a script to set up basic iptables firewall rules that block all incoming traffic except SSH.

Note: For this specific task, wc -l file should print 3.

Repo:

GitHub repository: dlh-cyber_security
Directory: linux_security/network_protocols
File: 1-firewall.sh

## 2. Harden Linux Server
Write a script to list all world-writable directories and set their permissions to a more secure level.

Your script should do:

Find all world-writable directories, folders where permissions allow "others" to write.
Display the paths of these insecure folders
Fix them by changing permissions so only the owner can write to them
$ sudo ./2-harden.sh
/home/user1
/home/user2
/home/user3
/var/www/html/uploads
Tips

“Scripts finds all folders anyone can change and makes them safe so only the owner can write.”

Repo:

GitHub repository: dlh-cyber_security
Directory: linux_security/network_protocols
File: 2-harden.sh

## 3. Identify Common Vulnerabilities
Write a script to check for unpatched common vulnerabilities using lynis audit tool.

$ sudo ./3-identify.sh
[ Lynis 3.0.9 ]
################################################################################
  Lynis comes with ABSOLUTELY NO WARRANTY. This is free software, and you are
  welcome to redistribute it under the terms of the GNU General Public License.
  See the LICENSE file for details about using this software.
  2007-2021, CISOfy - https://cisofy.com/lynis/
  Enterprise support available (compliance, plugins, interface and tools)
################################################################################
[+] Initializing program
------------------------------------
  ###################################################################
  #                                                                 #
  #   NON-PRIVILEGED SCAN MODE                                      #
  #                                                                 #
  ###################################################################
  NOTES:
  --------------
  * Some tests will be skipped (as they require root permissions)
  * Some tests might fail silently or give different results
  - Detecting OS...                                           [ DONE ]
  - Checking profiles...                                      [ DONE ]
  ---------------------------------------------------
Repo:

GitHub repository: dlh-cyber_security
Directory: linux_security/network_protocols
File: 3-identify.sh

## 4. Audit SSH Configuration
Write a script to check for and report any non-standard SSH configuration settings in /etc/ssh/sshd_config.

$ sudo ./4-audit.sh
Include /etc/ssh/sshd_config.d/*.conf
KbdInteractiveAuthentication no
UsePAM yes
X11Forwarding yes
PrintMotd no
AcceptEnv LANG LC_*
Subsystem       sftp    /usr/lib/openssh/sftp-server
PasswordAuthentication yes
PermitRootLogin yes
AuthorizedKeysFile .ssh/authorized_keys
TCPKeepAlive yes
Repo:

GitHub repository: dlh-cyber_security
Directory: linux_security/network_protocols
File: 4-audit.sh


## 5. SSH Configuration Hardening
Objective:

Review and improve SSH server configuration to follow security best practices, ensuring only secure protocols and authentication methods are used.

Analyze Insecure Configuration:

Search for SSH hardening best practices
Use man sshd_config command or visit sshd_config
Review SSH security documentation
Review this SSH configuration file, this is an INSECURE configuration for educational purposes only
When finished, save and push your updated sshd_config.
cat 5-sshd_config
Protocol 1,2
PermitRootLogin yes
PasswordAuthentication yes
PermitEmptyPasswords yes
PubkeyAuthentication yes
X11Forwarding yes
Port 22
cat 5-sshd_config
# After modification
...
Hints

Check the Protocol directive in man sshd_config.
Look up best practices for PermitRootLogin and PasswordAuthentication.
Repo:

GitHub repository: dlh-cyber_security
Directory: linux_security/network_protocols
File: 5-sshd_config

## 6. Check for NFS Vulnerabilities
Write a script to scan for NFS shares that are accessible by anyone on the network.

$ sudo ./6-nfs.sh 192.168.1.100
Export list for 192.168.1.100:
/data (everyone)
/home (10.0.0.2)
Repo:

GitHub repository: dlh-cyber_security
Directory: linux_security/network_protocols
File: 6-nfs.sh

## 7. Audit SNMP Configuration
Write a script to find SNMP configurations that allow public access.

Note: The output may vary depending on the machine's SNMP configuration, but the script should find all lines containing the public community string.

$ sudo ./7-snmp.sh
com2sec public default public
rocommunity public
Repo:

GitHub repository: dlh-cyber_security
Directory: linux_security/network_protocols
File: 7-snmp.sh

## 8. Examine SMTP Server Settings
Write a script to check the SMTP server configuration for lack of STARTTLS or other security features. If STARTTLS not configured return STARTTLS not configured

$ sudo ./8-smtp.sh
smtpd_tls_security_level = may
Repo:

GitHub repository: dlh-cyber_security
Directory: linux_security/network_protocols
File: 8-smtp.sh

## 9. TLS Version Testing
Objective:

Use command-line tools to test which TLS versions are supported by real websites and understand why older versions are deprecated.

Instructions:

Open your terminal

Test TLS versions for Google using OpenSSL:

Test TLS 1.0 via
 openssl s_client -connect www.google.com:443 -tls1 < /dev/null
Test TLS 1.1 via
openssl s_client -connect www.google.com:443 -tls1_1 < /dev/null
Test TLS 1.2 via
openssl s_client -connect www.google.com:443 -tls1_2 < /dev/null
Test TLS 1.3 via
openssl s_client -connect www.google.com:443 -tls1_3 < /dev/null
Field Requirements:

tls_X_supported: If you get a real cipher name not NONE, answer yes. If you get NONE or errors, answer no.
tls_1.2_cipher: Copy the cipher name from TLS 1.2 test output
tls_1.3_cipher: Copy the cipher name from TLS 1.3 test output
Submission Format:

Submit your answer as JSON based on your actual test results:

cat 9-tls_version.txt
{
  "tls_1.0_supported": "yes or no",
  "tls_1.1_supported": "yes or no",
  "tls_1.2_supported": "yes or no",
  "tls_1.3_supported": "yes or no",
  "tls_1.2_cipher": "cipher name from your test",
  "tls_1.3_cipher": "cipher name from your test"
}
Repo:

GitHub repository: dlh-cyber_security
Directory: linux_security/network_protocols
File: 9-tls_version.txt

## 10. Check for Weak SSL/TLS Ciphers
Write a script to test an SSL/TLS server's ciphers and report any weak ciphers using nmap.

$ sudo ./10-cipher.sh 192.168.1.100
Starting Nmap 7.80 ( https://nmap.org ) at 2024-04-11 15:00 UTC
Nmap scan report for some_random_ip
Host is up (0.042s latency).

PORT    STATE SERVICE
443/tcp open  https

Nmap done: 1 IP address (1 host up) scanned in 2.01 seconds

Host script results:
| ssl-enum-ciphers:
|   TLSv1.2:
|     ciphers:
|       TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (ecdh_x25519) - A
|       TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (ecdh_x25519) - A
|       TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384 (ecdh_x25519) - A
|       TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256 (ecdh_x25519) - A
|     compressors:
|       NULL
|     cipher preference: server
|_  least strength: A
Repo:

GitHub repository: dlh-cyber_security
Directory: linux_security/network_protocols
File: 10-cipher.sh

## 11. HTTP to HTTPS Comparison
Objective:

Compare HTTP and HTTPS websites to understand the security differences and why HTTPS is essential for modern web applications.

Instructions:

Visit an HTTP-only website: neverss , it's intentionally HTTP for testing.

Observe your browser's address bar:
Is there a padlock icon?
Does it show Not Secure warning?
Note the URL starts with http://
Open your browser's Developer Tools (F12 or right-click → Inspect)
Go to the Network tab
Reload the page (Ctrl+R or Cmd+R)
Click on any request and check:
Protocol: HTTP/1.1
No encryption mentioned
Visit an HTTPS website: wikipedia

Check the address bar:

Padlock icon present?
Connection is secure message
URL starts with https://
In Developer Tools → Network tab:

Protocol: HTTP/2 or h2 (over TLS)
Security tab shows certificate info
Try to find any readable sensitive data in HTTP requests vs HTTPS requests

Tools: Web browser with Developer Tools

Submission Format:

Submit your answer as JSON:

cat 11-http_https.txt
{
  "http_site_url": "http://neverssl.com",
  "http_has_padlock": "yes or no",
  "http_warning_message": "exact text you saw",
  "http_protocol_shown": "protocol from Network tab",
  "https_site_url": "https://www.wikipedia.org",
  "https_has_padlock": "yes or no",
  "https_security_message": "text from padlock click",
  "https_protocol_shown": "protocol from Network tab",
  "default_http_port": "port number",
  "default_https_port": "port number"
}
Repo:

GitHub repository: dlh-cyber_security
Directory: linux_security/network_protocols
File: 11-http_https.txt

## 12. Simulate DoS Attack on HTTP Server
Write a script to simulate a basic Denial of Service attack on an HTTP server using hping3.

$ sudo ./12-dos.sh 192.168.1.100
HPING 192.168.1.100 (eth0 10.0.0.2): rand data
Using eth0, addr: 10.0.0.2, MTU: 1500
HPING 192.168.1.100 (eth0 10.0.0.2) with 1460 data bytes
Repo:

GitHub repository: dlh-cyber_security
Directory: linux_security/network_protocols
File: 12-dos.sh

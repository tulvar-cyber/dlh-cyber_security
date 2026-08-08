## Content Discovery


## 0. Manual Discovery - Secrets in Plain Sight
Your goal is to uncover a hidden flag by thoroughly exploring the site's structure.

Use all available discovery methods, including analyzing files such as robots.txt, sitemap.xml, and favicon.ico

Target Machine: cyber_websec_0x04
Target Endpoint: http://web0x04.hbtn/

## 1. Manual Discovery - Headers, Headers, Always Check Headers
HTTP Headers often hide secrets 🤫.
In this task, you'll meticulously inspect HTTP response headers to unearth a hidden Flag ⛳️.
This requires a keen eye and an understanding of how developers might conceal information within the HTTP protocol.

Target Machine: cyber_websec_0x04
Target Endpoint: http://web0x04.hbtn/

## 2. The Buster Series - Initiating with Gobuster `dir mode`
Gobuster is a powerful tool designed to automate the process of content discovery.
It employs various modes, making it indispensable for the modern cybersecurity toolkit.
Your quest involves mastering Gobuster's modes to unearth hidden resources, subdomains, and much more.
We start our journey with an overview of the seven key modes Gobuster offers:

dir: A mode for classic directory brute-forcing.
dns: Brute-forces DNS subdomains.
s3: Enumerates open S3 buckets and checks for their existence and listings.
gcs: Searches for open Google Cloud Storage buckets.
vhost: Conducts brute-forcing of virtual hosts (vhosts), different from DNS subdomain searching.
fuzz: Undertakes basic fuzzing, pinpointing where a keyword (FUZZ) should be replaced.
tftp: Brute-forces TFTP file names.
This comprehensive feature set makes Gobuster adept at revealing the unseen parts of web applications and infrastructure.

Your first mission is to familiarize yourself with Gobuster's dir mode by conducting a directory brute-force attack against a target website.
You'll leverage this mode to discover hidden directories that will return a Flag ⛳️ as content with Task #4 as Website title.

Target Machine: cyber_websec_0x04
Target Website: http://web0x04.hbtn
Dir Word List
WP Word List

## 3. The Buster Series - Unveiling Hidden Subdomains `dns mode`
This powerful feature is designed for DNS subdomain enumeration,
allowing you to uncover hidden or unlinked subdomains which could expose additional facets of the target's online presence or infrastructure vulnerabilities.
Unlock the secrets of DNS by performing a zone transfer to uncover hidden records.
You’ll use advanced DNS querying techniques to reveal alternative DNS records that may not be easily discoverable through standard methods.
You'll leverage this mode to discover hidden subdomain that will return a Flag ⛳️ as content with Task #5 as Website title.

Target Machine: cyber_websec_0x04
Target Domain: web0x04.hbtn


## 4. FFuf Series - Subdomain Fuzzing Frenzy
Explore the web infrastructure by using ffuf to brute-force subdomains (virtual hosts) on the target server.
Discover hidden subdomains that might contain important information, such as a flag or access to alternative environments.

Target Machine: cyber_websec_0x04
Target Domain: web0x04.hbtn

## 5. The Buster Series - Fuzzing for Fun and Profit `fuzz mode`
Fuzzing is a powerful technique used to discover unknown vulnerabilities, misconfigurations, or hidden content by sending a wide range of inputs and observing the application's responses.
You'll leverage this mode to find a page that will return a Flag ⛳️ .

Target Machine: cyber_websec_0x04
Target Website: http://web0x04.hbtn/{¶}/hbtn-{¶}
list_fuzz



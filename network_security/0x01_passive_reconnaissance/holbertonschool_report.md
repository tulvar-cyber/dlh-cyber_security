# Shodan Reconnaissance Report: holbertonschool.com

## Collect all ip ranges within holbertonschool.com domaine
| IP Address     | 
|----------------|
| 52.47.143.83   |  
| 35.181.209.82  | 
| 35.181.162.251 |
| 15.224.50.77   | 
| 13.36.121.115  |
| 13.37.205.47   | 
| 13.38.189.231  |
| 51.45.18.159   |
| 15.224.97.76   | 
| 15.188.217.175 | 


## Collect Technologies and frameworks used within all subdomains of holbertonschool.com

52.47.143.83  WebTechnologies  Reverse proxies Nginx 1.21.6 Web servers Nginx 1.21.6
35.181.209.82 WebTechnologies CDN jsDelivr Font scripts Adobe Fonts Typekit JavaScript libraries jQuery Slick Marketing automation Klaviyo Programming languages Ruby Reverse proxies Nginx 1.20.0 Tag managers Google Tag Manager Web frameworks Ruby on Rails Web servers Nginx 1.20.0
35.181.162.251 WebTechnologies  Reverse proxies Nginx 1.20.0 Security Basic 
15.224.50.77 WebTechnologies: CDN: jsDelivr; Font scripts: Typekit, Adobe Fonts; JavaScript libraries: jQuery, Slick; Marketing automation: Klaviyo; Programming languages: Ruby; Reverse proxies: Nginx 1.20.0; Tag managers: Google Tag Manager; Web frameworks: Ruby on Rails; Web servers: Nginx 1.20.0
13.36.121.115 WebTechnologies: Reverse proxies: Nginx 1.20.0; Security: Basic
13.37.205.47 WebTechnologies: CDN: jsDelivr; Font scripts: Typekit, Adobe Fonts; JavaScript libraries: jQuery, Slick; Load balancers: Amazon ELB; Marketing automation: Klaviyo; PaaS: Amazon Web Services; Programming languages: Ruby; Reverse proxies: Nginx 1.20.0; Tag managers: Google Tag Manager; Web frameworks: Ruby on Rails; Web servers: Nginx 1.20.0
13.38.189.231 WebTechnologies: CDN: jsDelivr; Font scripts: Adobe Fonts, Typekit; JavaScript libraries: jQuery, Slick; Marketing automation: Klaviyo; Programming languages: Ruby; Reverse proxies: Nginx 1.20.0; Tag managers: Google Tag Manager; Web frameworks: Ruby on Rails; Web servers: Nginx 1.20.0
51.45.18.159 WebTechnologies: CDN: jsDelivr; Font scripts: Typekit, Adobe Fonts; JavaScript libraries: jQuery, Slick; Marketing automation: Klaviyo; Programming languages: Ruby; Reverse proxies: Nginx 1.20.0; Tag managers: Google Tag Manager; Web frameworks: Ruby on Rails; Web servers: Nginx 1.20.0
15.224.97.76 WebTechnologies: CDN: jsDelivr; Font scripts: Adobe Fonts, Typekit; JavaScript libraries: jQuery, Slick; Marketing automation: Klaviyo; Programming languages: Ruby; Reverse proxies: Nginx 1.20.0; Tag managers: Google Tag Manager; Web frameworks: Ruby on Rails; Web servers: Nginx 1.20.0
15.188.217.175 WebTechnologies: Reverse proxies: Nginx 1.20.0; Security: Basic

## Write up your notes as a report in markdown format.

- Cloud Provider: All services are hosted on Amazon Web Services (AWS)

- TLS Security: All domains support TLS 1.2. The IP `52.47.143.83` additionally supports TLS 1.3

- HTTP Services: Services are HTTP-based, which makes them potentially vulnerable to interception and MiTM attacks

- Detected Vulnerabilities:
  - CVE-2025-23419 (5.3) - Session resumption can bypass client certificate authentication
  - CVE-2023-44487 (7.5) - HTTP/2 Rapid Reset attack (exploited in wild, Aug-Oct 2023)
  - CVE-2021-23017 (7.7) - nginx resolver memory overwrite
  - CVE-2021-3618 (7.4) - ALPACA cross-protocol TLS attack

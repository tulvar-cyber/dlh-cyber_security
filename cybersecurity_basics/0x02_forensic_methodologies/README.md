## Findings summary

## 0. The Case of the Mysterious Image 

- 1. Execute the exiftool of Y8CYJ34....png.
  I got that the author is that the author is Sherlock_Holbies
- 2. Execute the exitfool with -ee for extractEmbedded information but there is no information, just the Metadata.
- 3. Execute with -u to find unknown nothing pop pup.

After some research it seems that the Author tag is an information by default. Additional the image was created or modified using Photoshop 23.0.

 I notice that the download was modifying the dates what should be avoided. So I used wget -N to get the file without modifications on the date so I found that the file last modification was in 2024/03/08.

## 1. Unraveling Location Clues from Image Metadata

  1-I download the file with Wget -N http... 
  2-Initially I used exiftool -a -u -ee -g1 9ACK7LD8EFPNI6EB.png and I found that 
  3-After a fast research I found that there are specific commands to filter GPS information 
    exiftool -GPSPosition 9ACK7LD8EFPNI6EB.png - you got the position information
    exiftool -n -GPSPosition 9ACK7LD8EFPNI6EB.png -n to format to copy paste in maps
    exiftool -gps:all 9ACK7LD8EFPNI6EB.png to filter by group
  4- I exeucted the exiftool -a -u -g1 9ACK7LD8EFPNI6EB.png to confirm that the GPS information metadata
  5- The output of google maps does not follow the format required by the exercise if you use the coordinates
     https://www.coordenadas-gps.com/ the address is correct.

## 2. Deciphering the Intruder's Intent

  1- The alert details suspicious SSH (Secure Shell) login attempts from an unfamiliar IP address.
  2- Followed by a successful authentication on a high-privilege user account.
  3- Further investigation reveals a command history that includes network mapping and data exfiltration activities. 
  1- One and Two gain access by Password Spraying, Brute force, Credential Stuffing ...
  2- He got 'admin' or similar
  3- Map network probably searching DDBB or sensitive data
  4- Exfiltration data 
   Result --> so option C

## 3. Identifying the Vulnerability Type
   
   1- A web application exploit led to unauthorized access
   2- Inject malicious queries through the application’s user login form.
   3- Exposure of sensitive user data. 
   Result --> SQL injection =malicious queries

## 4. Pinpointing the Attack Method
  
   1 - Gained access to the server by exploiting a service running on an open port.
   2 - This service was intended for remote management and was not updated regularly.
   3 - Escalate privileges shortly after gaining initial access.
   Result --> Exploit of a Known Vulnerability (the service running with the open port and no maintenance)

## 5. Unveiling the Ripple Effect

   1 - The monitoring detects a strange consumption trend. 
   2 - Irregular access patterns within (CRM) system.
   3 - Further probes reveal unauthorized modifications to several customer profiles. (lost of integrity)
   4 - The company strategy prides itself on customer service and data integrity
   Result --> Undermining of brand reputation and customer trust

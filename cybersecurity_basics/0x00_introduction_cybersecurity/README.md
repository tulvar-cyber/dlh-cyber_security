#0x00_cybersecurity_basics

## DESCRIPTION
  Write a bash script that display the distributor ID in a concise single-line output.
  Your Script Should Have one Line and New Line Only

## USE
   Bash commnad 
   lsb_release -i Option for receive the Distribution ID
   cut -d':' - f2  Split the output delimitin by character : and selecting the second section 
   tr -d ' ' translate delete -d specified character
    

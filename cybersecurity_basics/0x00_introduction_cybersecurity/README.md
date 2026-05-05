#0x00_cybersecurity_basics

0-release.sh

## DESCRIPTION
  Write a bash script that display the distributor ID in a concise single-line output.
  Your Script Should Have one Line and New Line Only

## USE
   Bash commnad 
   lsb_release -i -s Option for receive the Distribution ID shortened

1-gen_password.sh

## DESCRIPTION
  Create a Bash script that generates a strong random password:
     Your script should be less than 3 lines long.
     You should accept password length as an args.
     You should use /dev/urandom
     You should use [:alnum:] as character classes.    

## USE 
   Bash command 
   tr -dc [:alnum:] < /dev/urandom | head -c $1 ; echo 
   tr limits the random output to alphanumerical characters -c complement -d delete
   head -c limits the number of characters to $1 that is that parameter that we pass when executing the bash.
   the ; limit the command and allow to introduce a secon command as echo in the line.


2-sha256_validator.sh

## DESCRIPTION
  File integrity verification is a fundamental cybersecurity concept used to detect unauthorized changes to files  by comparing cryptographic hash values. 

## USE
  Bash command
  You need to create an empty file test_file and uses command sha256 to get the hash of the file.
  As you can see in the exercise sample you are passing two parameters $1 contains the name of the file that you   want to compare and $2 the hash that you own to ensure that the file wasn't modified. Then you use if to         compare the files. You extract the hash only using cut -d. Important here is the correct use of the $ to split   the process and the spaces to avoid failure of the if command. 
  if [ "$(sha256sum "$1" | cut -d' ' -f1)" = "$2" ]; then echo "$1: OK"; fi

#!/bin/bash

# -----------------------------------------
# ZIP PASSWORD CRACKING WITH JOHN THE RIPPER
# -----------------------------------------

# Navigate to the lab directory
cd ~/John-the-Ripper-The-Basics/Task09/

# List files to confirm the ZIP archive is present
ls

# Extract the password hash from the ZIP file
# zip2john converts the ZIP file into a hash format readable by John the Ripper
zip2john secure.zip > zip_hash.txt

# Verify the hash file was created
ls

# Launch a dictionary attack using the rockyou wordlist
# John will attempt to match words in the list with the ZIP password
john --wordlist=/usr/share/wordlists/rockyou.txt zip_hash.txt

# Extract the ZIP archive using the recovered password
unzip secure.zip

# Navigate into the extracted directory
cd zippy/

# List extracted files
ls

# Display the flag
cat flag.txt

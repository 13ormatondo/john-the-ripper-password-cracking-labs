#!/bin/bash

# -----------------------------------------
# RAR PASSWORD CRACKING WITH JOHN THE RIPPER
# -----------------------------------------

# Navigate to the lab directory
cd ~/John-the-Ripper-The-Basics/Task10/

# List files in the directory
ls

# Extract the RAR password hash
# rar2john converts the RAR archive into a crackable hash format
rar2john secure.rar > rar_hash.txt

# Verify the hash file
ls

# Perform dictionary attack using rockyou wordlist
john --wordlist=/usr/share/wordlists/rockyou.txt rar_hash.txt

# Extract the RAR archive using the recovered password
unrar x secure.rar

# List extracted files
ls

# Display the flag
cat flag.txt

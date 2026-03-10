#!/bin/bash

# -----------------------------------------
# SSH PRIVATE KEY PASSPHRASE CRACKING
# -----------------------------------------

# Navigate to the lab directory
cd ~/John-the-Ripper-The-Basics/Task11/

# List files to confirm the SSH key exists
ls

# Convert the SSH private key into a hash format usable by John the Ripper
# ssh2john extracts the encrypted passphrase hash
ssh2john.py id_rsa > id_rsa_hash.txt

# Verify the hash file was created
ls

# Launch a dictionary attack using the rockyou wordlist
john --wordlist=/usr/share/wordlists/rockyou.txt id_rsa_hash.txt

# Display the cracked password
john --show id_rsa_hash.txt

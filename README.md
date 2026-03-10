# John the Ripper Password Cracking Labs

This repository contains practical labs demonstrating how to crack different types of protected files using **John the Ripper**.

Labs included:

- ZIP archive password cracking
- RAR archive password cracking
- SSH private key passphrase cracking

Environment used:

- Ubuntu 24.04 LTS
- John the Ripper
- rockyou.txt wordlist
- TryHackMe lab environment

---

# Lab 1 – Cracking a ZIP Archive

## Extract the ZIP hash

```bash
zip2john secure.zip > zip_hash.txt

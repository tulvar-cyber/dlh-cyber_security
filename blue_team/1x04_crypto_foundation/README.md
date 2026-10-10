# README.md — 1x04 Crypto Foundation

**MedDefense Cryptographic Foundation Project — Blue Team**

## 0. The Crypto Inventory
Produce a Data Protection Map (7 data categories × 3 data states = 21 cells) documenting the current cryptographic protection, evidence, and adequacy status of every MedDefense data flow, followed by a gap summary with overall crypto coverage percentage.

## 1. The Symmetric Engine
Master symmetric encryption through hands-on OpenSSL exercises: encrypt/decrypt with AES-256-CBC, AES-256-GCM and AES-128-CBC, measure performance on a 100MB file, and build an automation script `1-symmetric_encrypt.sh` that encrypts a file using AES-256 in the chosen mode (cbc or gcm).

## 2. The Asymmetric Engine
Generate RSA-2048 and ECC P-256 key pairs, discover RSA's size limitation by attempting to encrypt a 100MB file, analyze the hybrid encryption model used by TLS, and produce a key-length comparison table covering AES, RSA, ECC, DES, 3DES, ChaCha20-Poly1305 and RC4 with their MedDefense usage status.

## 3. The Hash Laboratory
Explore hashing through experimentation: demonstrate the avalanche effect with SHA-256 and MD5, calculate collision space and birthday-attack implications, defeat rainbow tables through salting, research key-stretching functions (bcrypt, PBKDF2, Argon2), and build an integrity verification script `3-hash_verify.sh`.

## 4. The Key Exchange
Simulate a Diffie-Hellman key exchange between Alice and Bob using OpenSSL, derive and compare the shared secret from both sides, explain the exchange in non-technical terms, and analyze how man-in-the-middle attacks defeat plain DH and why certificates are required to prevent them.

## 5. Digital Signatures in Practice
Sign and verify a prescription file with OpenSSL using SHA-256 and an RSA key pair, demonstrate signature failure after modifying the file by one character, and build a signing/verification script `5-sign_verify.sh` supporting sign and verify modes.

## 8. The Certificate Anatomy
Inspect three real X.509 certificates (Let's Encrypt, commercial CA, and a broken badssl.com certificate) using `openssl s_client` and `openssl x509 -text`, diagnose what is wrong with the broken certificate, and define the ideal certificate profile for the MedDefense patient portal.

## 11. The TLS Audit
Evaluate real-world TLS configurations with SSL Labs, predict the grade MedDefense's portal would receive based on Findings 005 and 013, write a hardened TLS configuration (TLS 1.2/1.3 only, strong ciphers, HSTS), and explain how TLS downgrade attacks work and how to prevent them.

## 12. The Disk Encryption Lab
Set up LUKS disk encryption on a loop device with cryptsetup, verify that raw data is unreadable after closing the volume, build a LUKS management script `12-luks_manager.sh` (create/open/close modes), and design the encryption-at-rest strategy for NAS-01 backups.

## 13. The Encryption Levels
Compare the six encryption levels (full-disk, partition, volume, file, database, record) across scope, performance impact, key management and use case, then recommend the appropriate level for each MedDefense data store (PostgreSQL, NAS-01, MySQL, PACS, O365, laptops, Alaris pumps).

## 14. Hardware Security and Key Management
Compare TPM, HSM, secure enclave and software KMS technologies, design a complete key management plan for MedDefense (storage, access, rotation, compromise and loss procedures), and evaluate whether investing in an HSM is justified based on 1x03 ALE calculations.

## 15. The Crypto Posture Audit
Revisit the T0 Data Protection Map and produce a formal Crypto Finding for every cell marked Weak or Absent, connecting each to its 1x02 vulnerability reference, 1x03 risk reference, recommended algorithm, encryption level, key management and implementation priority — followed by a posture score and the top 3 crypto risks.

## 20. The Implementation Playbook
Produce a step-by-step operational playbook for the 5 highest-priority cryptographic changes, each with prerequisites, specific steps, validation criteria, rollback plan, maintenance window and communication requirements.

## 21. Review: Algorithm Selection for Healthcare Data
Answer a review scenario on selecting a FIPS 140-2 validated encryption algorithm for 50,000 frequently-accessed patient records in PostgreSQL, balancing security strength against query performance for 200 clinicians.

## 22. Review: Certificate Incident Response
Answer a review scenario on responding to a patient portal TLS private key exposed in a public GitHub repository for 72 hours, covering revocation, reissuance, impact assessment and remediation for 800 daily patient interactions.

## 23. Data Protection States
Answer a review scenario analyzing the three data states (at rest, in transit, in use) across a patient record workflow, identifying the residual risk of screen exposure on a shared nurses' station workstation despite database and HTTPS encryption.

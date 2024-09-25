# OpenSSL util

## Author
Witold Krak, emial: witold.krak@gmail.com

## Prerequisites

- [docker](https://docs.docker.com/) installed

## Build script

To Build the OpenSSL utility docker container, execute the following script:
```bash
./build.sh
```

## Run script

To run the OpenSSL utility docker container, execute the following script:
```bash
./run.sh
```

## Encrypting

To encrypt a file inside the container, execute:
```bash
openssl enc <algorithm> -pbkdf2 -in <file> -out <encrypted_file>
```

Example:
```bash
openssl enc -aes-256-cbc -pbkdf2 -in file.txt -out file.enc
```

## Decrypting

To decrypt a file inside the container, execute:
```bash
openssl enc -d <algorithm> -pbkdf2 -in <encrypted_file> -out <decrypted_file>
```

Example: 
```bash
openssl enc -d -aes-256-cbc -pbkdf2 -in file.enc -out file.dec
```

## Exit

To exit container, execute:
```bash
exit
```
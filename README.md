
<img center width="374" alt="Seculock" src="https://github.com/vinaypatil-132/SecuLock/assets/69195030/4bfbc3fd-bf9d-4731-ae58-627c20fa7738">


SecuLock is written in a bash script, it is a very small , very simple, yet very secure encryption tool that you can use to protect your files. its designed to be focus on security, simplicity, and reliability. SecuLock use a more secure method for key derivation and ensure the passphrase is correctly passed to OpenSSL. We'll use the -pbkdf2 option for key derivation, which is more secure.
## Installation

Install SecuLock with Kali linux

```bash
  sudo apt update
  sudo apt install git wget
  git clone https://github.com/vinaypatil-132/SecuLock.git
  cd SecuLock
  chmod +x SecuLock.sh
```
    
## Usage/Examples

```bash
To Encrypt use:

./SecuLock.sh encrypt input.txt encrypted_output.enc

To Decrypt use:

./SecuLock.sh decrypt encrypted_output.enc decrypted_output.txt
```


## 🔗 Links

[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/vinay-patil-devops-engineering/)



## Support

For support, email vinaycp50@gmail.com


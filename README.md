# Bug Bounty Toolkit

A multiplatform bug bounty toolkit that can be installed on Debian/Ubuntu or setup with Docker.

## Why should you use this toolkit?

- This toolkit offers a multiplatform base to work with as the script can be installed on Linux, setup with Docker or installed on Windows with WSL (Windows Subsystem For Linux).
- The installer script can be customized to add or remove specific tools based on your requirements.
- Tools are constantly being added, updated and fixed.
- Pull once. Update as needed.

## Instructions

### Docker Hub

https://hub.docker.com/r/hackersploit/bugbountytoolkit

```bash
# Pull the image
docker pull hackersploit/bugbountytoolkit

# Run
docker run -it hackersploit/bugbountytoolkit /bin/bash
```

[![asciicast](https://asciinema.org/a/sMorBlA5yzTIwfdiWzdRR3yEh.svg)](https://asciinema.org/a/sMorBlA5yzTIwfdiWzdRR3yEh)

### Docker Build

```bash
# Clone the repo
git clone https://github.com/AlexisAhmed/BugBountyToolkit.git
cd BugBountyToolkit

# Build the image
docker build . -t hackersploit/bugbountytoolkit

# Run
docker run -it hackersploit/bugbountytoolkit /bin/bash
```

### Ubuntu/Debian

```bash
git clone https://github.com/AlexisAhmed/BugBountyToolkit.git
cd BugBountyToolkit
chmod +x install.sh
./install.sh
```

## Tools

| Tool | Command (if relevant) |
| --- | --- |
| [altdns](https://github.com/infosec-au/altdns) | `altdns --help` |
| [Amass](https://github.com/OWASP/Amass) | `amass --help` |
| [bucket_finder](https://github.com/AlexisAhmed/bucket_finder) | `bucket_finder --help` |
| [CloudFlair](https://github.com/christophetd/CloudFlair) | `cloudflair --help` |
| [commix](https://github.com/commixproject/commix) | `commix --help` |
| [dirb](https://tools.kali.org/web-applications/dirb) | `dirb` |
| [dirsearch](https://github.com/maurosoria/dirsearch) | `dirsearch --help` |
| [dnsenum](https://github.com/fwaeytens/dnsenum) | `dnsenum --help` |
| [dnsrecon](https://tools.kali.org/information-gathering/dnsrecon) | `dnsrecon` |
| [dotdotpwn](https://github.com/wireghoul/dotdotpwn) | `perl ~/toolkit/dotdotpwn/dotdotpwn.pl --help` |
| [fierce](https://github.com/mschwager/fierce) | `fierce --help` |
| [gobuster](https://github.com/OJ/gobuster) | `gobuster --help` |
| [joomscan](https://github.com/rezasp/joomscan) | `perl ~/toolkit/joomscan/joomscan.pl` |
| [knock](https://github.com/guelfoweb/knock) | `knock --help` |
| [masscan](https://github.com/robertdavidgraham/masscan) | `masscan --help` |
| [massdns](https://github.com/blechschmidt/massdns) | `massdns --help` |
| [nikto](https://tools.kali.org/information-gathering/nikto) | `nikto --help` |
| [nmap](https://nmap.org/) | `nmap --help` |
| [recon-ng](https://github.com/lanmaster53/recon-ng) | `recon-ng` |
| [s3recon](https://s3recon.readthedocs.io/en/latest/) | `s3recon --help` |
| [sqlmap](http://sqlmap.org/) | `sqlmap --help` |
| [subfinder](https://github.com/projectdiscovery/subfinder) | `subfinder --help` |
| [sublist3r](https://github.com/aboul3la/Sublist3r) | `sublist3r --help` |
| [teh_s3_bucketeers](https://github.com/tomdev/teh_s3_bucketeers) | `bucketeer` |
| [hydra](https://tools.kali.org/password-attacks/hydra) | `hydra -h` |
| [theharvester](https://tools.kali.org/information-gathering/theharvester) | `python3.7 ~/toolkit/theHarvester/theHarvester.py --help` |
| [tmux](https://github.com/tmux/tmux/wiki) | n/a |
| [virtual-host-discovery](https://github.com/AlexisAhmed/virtual-host-discovery) | `virtual-host-discovery --help` |
| [wafw00f](https://github.com/enablesecurity/wafw00f) | `wafw00f --help` |
| [wfuzz](https://wfuzz.readthedocs.io/en/latest/) | `wfuzz --help` |
| [whatweb](https://github.com/urbanadventurer/WhatWeb) | `whatweb --help` |
| [wpscan](https://github.com/wpscanteam/wpscan) | `wpscan --help` |
| [xsstrike](https://github.com/s0md3v/XSStrike) | `xsstrike --help` |
| [zsh](https://ohmyz.sh/) | n/a |

## Wordlists

- [SecLists](https://github.com/danielmiessler/SecLists)

## Tools being added

- aquatone
- AWSBucketDump
- Sn1per
- CommonSpeak
- gitrob
- Lazys3
- unfurl

## Contributors

- https://github.com/brutalgg
- https://github.com/mcnamee
- https://github.com/rishabhdeepsingh
- https://github.com/vimicasa


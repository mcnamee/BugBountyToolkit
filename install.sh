#!/bin/bash

RED='\033[0;32m'
NC='\033[0m'

HOME=/root
DEBIAN_FRONTEND=noninteractive
GOROOT=/usr/local/go
GOPATH=/root/go
GO111MODULE=on
PATH=${GOPATH}/bin:${GOROOT}/bin:${PATH}

echo -e "${RED}[*] ================================================${NC}"
echo -e "${RED}[*] Bug Bounty Toolkit Installer${NC}"
echo -e "${RED}[*] ================================================${NC}"

echo -e "${RED}[*] • Setting Up Directories${NC}"
cd $HOME
mkdir ~/toolkit
mkdir ~/wordlists

echo -e "${RED}[*] • Installing Essentials${NC}"
apt-get update && apt-get install -y --no-install-recommends \
    apt-utils \
    awscli \
    build-essential \
    cpanminus \
    curl \
    dnsutils \
    gcc  \
    git \
    inetutils-ping  \
    libcurl4-openssl-dev \
    libgmp-dev \
    libldns-dev \
    libpcap-dev \
    libwww-perl \
    libxml2 \
    libxml2-dev \
    libxslt1-dev \
    make  \
    nano \
    net-tools \
    nikto \
    nmap  \
    perl  \
    python3 \
    python-dnspython \
    python3-pip \
    python-pycurl \
    python-pip  \
    python3-pip \
    ruby-dev \
    tmux \
    wget \
    whois  \
    vim \
    zlib1g-dev \
    zsh

# go
echo -e "${RED}[*] • Installing Go${NC}"
cd /opt && \
    wget https://dl.google.com/go/go1.13.3.linux-amd64.tar.gz && \
    tar -xvf go1.13.3.linux-amd64.tar.gz && \
    rm -rf /opt/go1.13.3.linux-amd64.tar.gz && \
    mv go /usr/local

# Python common dependencies
echo -e "${RED}[*] • Installing common Python dependencies${NC}"
python -m pip install --upgrade setuptools
python3 -m pip install --upgrade setuptools
python -m pip install --upgrade wheel html_similarity
python3 -m pip install --upgrade wheel html_similarity

# tzdata
echo -e "${RED}[*] • Setip tzdata${NC}"
ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

# altdns
echo -e "${RED}[*] • Installing altdns${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/infosec-au/altdns.git
cd altdns
python3 -m pip install -r requirements.txt
chmod +x setup.py
python setup.py install

# amass
echo -e "${RED}[*] • Installing amass${NC}"
go get -v github.com/OWASP/Amass/v3/...

# bucket_finder
echo -e "${RED}[*] • Installing bucket_finder${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/AlexisAhmed/bucket_finder.git
cd bucket_finder
chmod +x bucket_finder.rb
ln -sf ~/toolkit/bucket_finder/bucket_finder.rb /usr/local/bin/bucket_finder

# CloudFlair
echo -e "${RED}[*] • Installing CloudFlair${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/christophetd/CloudFlair.git
cd CloudFlair
python3 -m pip install -r requirements.txt
chmod +x cloudflair.py
ln -sf ~/toolkit/CloudFlair/cloudflair.py /usr/local/bin/cloudflair

# commix
echo -e "${RED}[*] • Installing commix${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/commixproject/commix.git
cd commix
chmod +x commix.py
ln -sf ~/toolkit/commix/commix.py /usr/local/bin/commix

# dirb
echo -e "${RED}[*] • Installing dirb${NC}"
apt-get install -y dirb

# dirsearch
echo -e "${RED}[*] • Installing dirsearch${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/maurosoria/dirsearch.git
cd dirsearch
chmod +x dirsearch.py
ln -sf ~/toolkit/dirsearch/dirsearch.py /usr/local/bin/dirsearch

# dnsenum
echo -e "${RED}[*] • Installing dnsenum${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/fwaeytens/dnsenum.git
cd dnsenum/
chmod +x dnsenum.pl
ln -s ~/toolkit/dnsenum/dnsenum.pl /usr/bin/dnsenum
cpanm String::Random
cpanm Net::IP
cpanm Net::DNS
cpanm Net::Netmask
cpanm XML::Writer

# dnsrecon
echo -e "${RED}[*] • Installing dnsrecon${NC}"
apt-get install -y dnsrecon

# dotdotpwn
echo -e "${RED}[*] • Installing dotdotpwn${NC}"
cd ~/toolkit
cpanm Net::FTP
cpanm Time::HiRes
cpanm HTTP::Lite
cpanm Switch
cpanm Socket
cpanm IO::Socket
cpanm Getopt::Std
cpanm TFTP
git clone --depth 1 https://github.com/AlexisAhmed/dotdotpwn.git
cd dotdotpwn
chmod +x dotdotpwn.pl

# fierce
echo -e "${RED}[*] • Installing fierce${NC}"
python3 -m pip install fierce

# gobuster
echo -e "${RED}[*] • Installing gobuster${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/OJ/gobuster.git
cd gobuster
go get && go install

# joomscan
echo -e "${RED}[*] • Installing joomscan${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/rezasp/joomscan.git
cd joomscan/
chmod +x joomscan.pl
ln -sf ~/toolkit/joomscan/joomscan.pl /usr/local/bin/joomscan

# knock
echo -e "${RED}[*] • Installing Knockpy${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/guelfoweb/knock.git
cd knock
chmod +x setup.py
python setup.py install
chmod +x knockpy/knockpy.py
ln -sf ~/toolkit/knock/knockpy/knockpy.py /usr/local/bin/knock

# masscan
echo -e "${RED}[*] • Installing masscan${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/robertdavidgraham/masscan.git
cd masscan
make
ln -sf ~/toolkit/masscan/bin/masscan /usr/local/bin/masscan

# massdns
echo -e "${RED}[*] • Installing massdns${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/blechschmidt/massdns.git
cd massdns/
make
ln -sf ~/toolkit/massdns/bin/massdns /usr/local/bin/massdns

# Nmap
echo -e "${RED}[*] • Installing Nmap${NC}"
apt-get install -y nmap

# Recon-ng
echo -e "${RED}[*] • Installing Recon-ng${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/lanmaster53/recon-ng.git
cd recon-ng
pip3 install -r REQUIREMENTS
chmod +x recon-ng
ln -sf ~/toolkit/recon-ng/recon-ng /usr/local/bin/recon-ng

# s3recon
echo -e "${RED}[*] • Installing s3recon${NC}"
pip3 install pyyaml pymongo requests s3recon

# sqlmap
echo -e "${RED}[*] • Installing sqlmap${NC}"
apt-get install -y sqlmap

# subfinder
echo -e "${RED}[*] • Installing subfinder${NC}"
go get -v github.com/projectdiscovery/subfinder/cmd/subfinder

# Sublist3r
echo -e "${RED}[*] • Installing Sublist3r${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/aboul3la/Sublist3r.git
cd Sublist3r/
pip install -r requirements.txt
ln -s ~/toolkit/Sublist3r/sublist3r.py /usr/local/bin/sublist3r

# teh_s3_bucketeers
echo -e "${RED}[*] • Installing teh_s3_bucketeers${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/tomdev/teh_s3_bucketeers.git
cd teh_s3_bucketeers
chmod +x bucketeer.sh
ln -sf ~/toolkit/teh_s3_bucketeers/bucketeer.sh /usr/local/bin/bucketeer

# thc-hydra
echo -e "${RED}[*] • Installing thc-hydra${NC}"
apt-get install -y hydra

# theHarvester
echo -e "${RED}[*] • Installing theHarvester${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/laramies/theHarvester 
cd theHarvester
python3 -m pip install -r requirements.txt
chmod +x theHarvester.py
ln -sf ~/toolkit/theHarvester/theHarvester.py /usr/local/bin/theharvester

# virtual-host-discovery
cd ~/toolkit
git clone --depth 1 https://github.com/AlexisAhmed/virtual-host-discovery.git
cd virtual-host-discovery
chmod +x scan.rb
ln -sf ~/toolkit/virtual-host-discovery/scan.rb /usr/local/bin/virtual-host-discovery

# wafw00f
echo -e "${RED}[*] • Installing wafw00f${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/enablesecurity/wafw00f.git
cd wafw00f
chmod +x setup.py
python setup.py install

# wfuzz
echo -e "${RED}[*] • Installing wfuzz${NC}"
pip install wfuzz

# whatweb
echo -e "${RED}[*] • Installing whatweb${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/urbanadventurer/WhatWeb.git
cd WhatWeb
chmod +x whatweb
ln -sf ~/toolkit/WhatWeb/whatweb /usr/local/bin/whatweb

# wpscan
echo -e "${RED}[*] • Installing wpscan${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/wpscanteam/wpscan.git
cd wpscan/
gem install bundler && bundle install --without test
gem install wpscan

# XSStrike
echo -e "${RED}[*] • Installing XSStrike${NC}"
cd ~/toolkit
git clone --depth 1 https://github.com/s0md3v/XSStrike.git
cd XSStrike
pip3 install -r requirements.txt
chmod +x xsstrike.py
ln -sf ~/toolkit/XSStrike/xsstrike.py /usr/local/bin/xsstrike

# SecLists
echo -e "${RED}[*] • Downloading SecLists${NC}"
cd ~/wordlists
git clone --depth 1 https://github.com/danielmiessler/SecLists.git

# Cleanup
echo -e "${RED}[*] • Tidying up${NC}"
apt-get clean
rm -rf /var/lib/apt/lists/*

echo -e "${RED}[*] ================================================${NC}"
echo -e "${RED}[*] ✓ Installation Complete! ${NC}"
echo -e "${RED}[*] ---${NC}"
echo -e "${RED}[*] Your tools have been installed in: "$HOME"/toolkit"
echo -e "${RED}[*] Your wordlists have been saved in: "$HOME"/wordlists${NC}"
echo -e "${RED}[*] ================================================${NC}"

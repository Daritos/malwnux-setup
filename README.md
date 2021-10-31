# malwnux-setup

Playbooks for configuring an analysis linux workstation

## Get started

Install required dependencies

```bash
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install git ansible -y
```

Clone the repository

```bash
git clone https://github.com/Daritos/malwnux-setup.git
cd malwnux-setup
```

Install required ansible galaxies

```bash
ansible-galaxy install -r requirements.yml --force
```

Now run the playbook from the repository

```bash
ansible-playbook -i inventory/inventory.ini --ask-become-pass -k malwnux_playbook.yml -u <insert_your_username_here>
```

## Included tools and utilities

### Editors

* Visual Studio Code

### Network tools

* Wireshark

### Discover tools

* Nmap
* ffup (Fuzz Faster U Fool) - A fast web fuzzer
* dirb - A Web Content Scanner. It looks for existing (and/or hidden) Web Objects
* gobuster - Gobuster is a tool used to brute-force URIs (directories and files) in web sites, DNS subdomain, (with wildcard support), Virtual Host names on target web servers and Open Amazon S3 buckets
* Burp Suite Community Edition

### Exploit tools

* Metasploit

### Data Sources

* https://github.com/danielmiessler/SecLists

### Other utilities

* OpenVPN
* Python 3
* Python 2.7
* Docker
* Docker Compose
* proxychains

#### Firefox Extensions

* FoxyProxy Basic

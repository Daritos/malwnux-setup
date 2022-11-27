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

(Optional) If you have access configure an OpenVPN client and intent to use your linux host as a gateway you can run the following playbook to push the settings and take care of all the routing.

```bash
ansible-playbook -i inventory/inventory.ini --ask-become-pass -k vpn_setup_playbook.yml -u <insert_your_username_here>
```

(Optional) If you have a VPN tunnel configured you can run the network setup playbook to setup a network killswitch (ensuring no traffic leaves the machine if it is not going through the VPN tunnel)

```bash
ansible-playbook -i inventory/inventory.ini --ask-become-pass -k network_setup_playbook.yml -u <insert_your_username_here>
```

Now run the playbook from the repository

```bash
ansible-playbook -i inventory/inventory.ini --ask-become-pass -k malwnux_playbook.yml -u <insert_your_username_here>
```

## Included tools and utilities

### Editors

* Visual Studio Code
* Cherrytree

### Network tools

* Wireshark

### Discover tools

* Nmap
* ffup (Fuzz Faster U Fool) - A fast web fuzzer
* dirb - A Web Content Scanner. It looks for existing (and/or hidden) Web Objects
* gobuster - Gobuster is a tool used to brute-force URIs (directories and files) in web sites, DNS subdomain, (with wildcard support), Virtual Host names on target web servers and Open Amazon S3 buckets
* Burp Suite Community Edition
* masscan - Mass IP port scanner

### Exploit tools

* Metasploit
* Empire-Suite (post-exploitation framework)
  * Empire
  * Starkiller
  * DeathStar

### Passive Reconnaissance tools

* whois
* dig
* nslookup

### Active Reconnaissance tools

* ping
* traceroute
* nc
* masscan
* dnsrecon
* sublist3r

### Service Enumeration tools

* enum4linux-ng

### Password Cracking tools

* hydra

### Data Sources

* https://github.com/danielmiessler/SecLists
* https://github.com/pentestmonkey/php-reverse-shell

### Other utilities

* OpenVPN
* Python 3
* Python 2.7
* Docker
* Docker Compose
* proxychains
* CyberChef
* binwalk

#### Firefox Extensions

* FoxyProxy Basic
* User-Agent Switcher and Manager

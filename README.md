# malwnux-setup

Playbooks for configuring an analysis linux workstation

## Get started

Install required dependencies

```bash
sudo apt install git ansible -y
```

Clone the repository

```bash
git clone https://github.com/Daritos/malwnux-setup.git
cd malwnux-setup
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

### Exploit tools

* Metasploit

### Other utilities

* OpenVPN
* Python 3
* Python 2.7
* Docker
* Docker Compose
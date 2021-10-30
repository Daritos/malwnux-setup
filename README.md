# malwnux-setup
Playbooks for configuring an analysis linux workstation


## Get started
```bash
sudo apt install git ansible -y
git clone https://github.com/Daritos/malwnux-setup.git
cd malwnux-setup
```

Now run the playbook from the repo

```bash
ansible-playbook -i inventory/inventory.ini --ask-become-pass -k malwnux_playbook.yml -u <insert_your_username_here>
```
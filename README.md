# configure-ubuntu-desktop


## Usage

1. Clone the repository.

1. Install Ansible.

```bash
# Install
bash bin/install-ansible.sh
# Reload your environment
source ~/.profile
```

1. Install module requirements
```bash
ansible-galaxy install -r requirements.yml
```

1. Run Ansible playbook.

```bash
ansible-playbook -i localhost, -c local playbooks/example-playbook.yml --ask-become-pass
```

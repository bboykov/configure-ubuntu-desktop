# Configure work environment


## Usage

1. Clone the repository.

1. Install Ansible and reload the environment.

```bash
bash bin/install-ansible.sh && source ~/.profile
```

1. Install module requirements.

```bash
ansible-galaxy install -r requirements.yml
```

1. Run an Ansible playbook.

```bash
alias play-local="ansible-playbook -i localhost, -c local --ask-become-pass"
play-local playbooks/example-playbook.yml
```

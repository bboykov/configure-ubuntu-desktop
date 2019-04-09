# Configure workstation


1. Clone the repository.

1. Install Ansible

```bash
bash install-ansible.sh
```

1. Install requirements

```bash
ansible-galaxy install -r requirements.yml
```

1. Run an Ansible playbook.

```bash
alias ansible-local="ansible-playbook -i localhost, -c local --ask-become-pass"
ansible-local playbooks/example-playbook.yml
```

#!/bin/sh

echo "Install Ansible Roles."
ansible-galaxy install --force --ignore-errors -r requirements.yml -p roles

echo "Test Ansible Roles."
# ansible-playbook -i inventory test.yml -e '{"action": "create", "username":"test1", "password":"1111"}'
# 
# ansible-playbook -i inventory test.yml -e '{"action": "update", "username":"test1", "password":"1123"}'

ansible-playbook -i inventory test.yml -e '{"action": "delete", "username":"test1"}'

Ansible Role: Manage Account on Linux
=========

- 리눅스에서 계정을 관리합니다.
- 생성, 수정, 삭제가 가능합니다.

Requirements
------------
None.

Role Variables
--------------
- `defaults/main.yml` 참조
```yaml
# common
action: "" # create | update | delete
username: ""
comment: "Ansible Managed Account."
password: ""

home_dir: ""

shell: "/bin/bash"
group: ""

remove_home: true
```

Dependencies
------------
Unknown.

Example Playbook
----------------
- `test/` 참조
```yaml
- hosts: vms
  remote_user: root
  roles:
    - ansible.roles.account_manager
```

License
------------
BSD


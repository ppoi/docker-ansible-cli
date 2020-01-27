# docker-ansible-cli
Docker image of Ansible CLI(`ansible,` `ansible-playbook`), based on Alpine Linux 3.11 and Ansible 2.9.3-r0

## USAGE ##

### 1. prepare your ansible project ###

**Example**
- <project_dir>
    - inventory
        - hosts
        - ...
    - playbook.xml
    - ...


#### 2. Running ansible-playbook with your ansible project ####

````
docker run --rm -v /path/to/project:/workspace -e PLAYBOOK=sometasks.yml tbdev/ansible-cli
````

## REFERENCE ##

### Volumes ###

- `/workspace`: project dir. this directory is used as current working dir.

### Environment variables ###

- `PLAYBOOK`: a relative path of playbook in the project dir for runnning. default `playbook.yml`
- `INVENTORY`: a relative path of inventory in the project dir for runnning. default `inventory`
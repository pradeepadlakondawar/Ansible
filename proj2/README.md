# Project 2: Docker Installation using an Ansible role from Galaxy to install Docker on remote machines.


## Overview
This project demonstrates the automation of Docker installation on remote machines using **Ansible**. The playbook leverages an Ansible role from **Ansible Galaxy** to ensure Docker is installed and running on all target machines.

### Objective
- Pull a pre-built Ansible role from [Ansible Galaxy](https://galaxy.ansible.com) for Docker installation.
- Install Docker on remote machines using this role.
- Automate the configuration and setup for Docker containers on remote servers.

## Prerequisites
Before running the playbook, ensure that the following prerequisites are met:

1. **Ansible** installed on your local machine. If not, you can install Ansible using the following command:
    ```
    sudo apt install ansible
    ```

2. **SSH access** to the target machines where Docker needs to be installed.

3. **Inventory file** that contains the host details for the remote machines.

4. The required **Ansible role** for Docker installation from Galaxy. This role installs Docker and configures it.

## Folder Structure
The project directory structure is as follows:

```
proj2/
│
├── inventory.ini            # Inventory file containing host information
├── playbook.yml             # The main Ansible playbook
├── ansible.cfg              # Optional: Configuration file for Ansible
└── README.md                # This file
```

## Step-by-Step Guide

### Step 1: Install the Docker Ansible Role from Ansible Galaxy

First, we need to install the official **Docker** role from Ansible Galaxy. Run the following command to install the role:

```bash
ansible-galaxy install bsmeding.docker
```

### Step 2: Create the Inventory File

The **inventory.ini** file contains the IP addresses or hostnames of the remote machines on which Docker will be installed. Here is an example inventory:


### Step 3: Create the Playbook

In the `playbook.yml` file, the task is to run the Docker installation role. Here’s an example playbook:

```yaml
---
- name: Install Docker on all servers
  hosts: all
  become: true
  roles:
    - bsmeding.docker
```

This playbook will run the `bsmeding.docker` role on all the hosts defined in your inventory file, installing Docker and ensuring it is running.

### Step 4: Run the Playbook

To run the playbook, execute the following command:

```bash
ansible-playbook -i inventory.ini playbook.yml
```

This will trigger the Ansible playbook, which will install Docker on the remote machines listed in the inventory file.

### Step 5: Verify Docker Installation

Once the playbook finishes executing, verify that Docker is installed and running on the remote machines by SSHing into them and running the following command:

```bash
docker --version
```

You should see the installed Docker version.

## Notes

- Ensure that SSH key-based authentication is set up between your local machine and the remote machines to avoid entering passwords manually.
- If you want to run the playbook as a non-root user, ensure that the user has sufficient privileges to install Docker (you can use `become: true` in your playbook for `sudo` access).
  
## Troubleshooting

If you encounter any issues during the playbook run, the following steps may help:

1. **Check the SSH Connectivity**: Ensure that you can SSH into the remote servers from your local machine using the command:
   ```bash
   ssh ubuntu@<remote-ip>
   ```

2. **Check Docker Status**: If Docker is not starting or there are issues, run the following on the target machine:
   ```bash
   sudo systemctl status docker
   ```

3. **Verbose Output**: To get more detailed output from Ansible during playbook execution, use the `-v` flag:
   ```bash
   ansible-playbook -i inventory.ini playbook.yml -v
   ```

## Conclusion

This project demonstrates the use of Ansible to automate the installation and configuration of Docker on multiple remote machines. By utilizing a pre-built role from Ansible Galaxy, we streamline the process of setting up Docker in an automated, repeatable manner.

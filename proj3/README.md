# Project 3: AWS povisionig | EC2 Instance Creation on AWS with Ansible

## Overview

This project demonstrates the usage of **Ansible** to automate the creation of AWS EC2 instances. The automation leverages an **Ansible Galaxy collection** to interact with AWS services, simplifying the infrastructure provisioning process. Additionally, the project highlights the use of **Ansible variable precedence** to manage and override variables efficiently during playbook execution.

## Features

- Automated creation of EC2 instances on AWS using Ansible.
- Utilized a **Galaxy collection** for AWS integration.
- Managed and customized instance configurations using **variables** in Ansible.
- Demonstrated **variable precedence** to handle variable overrides in different scopes.

## Prerequisites

Before running the playbooks, ensure you have the following set up:

1. **AWS Account**: You need an active AWS account to provision EC2 instances.
2. **AWS Credentials**: Ensure your AWS credentials are set up for access. This can be done by configuring the AWS CLI or setting environment variables:
   ```
   export AWS_ACCESS_KEY_ID=your-access-key-id
   export AWS_SECRET_ACCESS_KEY=your-secret-access-key
   ```
3. **Ansible Installed**: Install Ansible on your local machine:
   ```
   sudo apt install ansible
   ```

4. **Boto3 and Botocore**: Install the necessary dependencies for interacting with AWS.
   ```
   pip install boto3 botocore
   ```

5. **Ansible Galaxy Collection for AWS**: Install the `amazon.aws` collection from Ansible Galaxy:
   ```
   ansible-galaxy collection install amazon.aws
   ```

## Setup and Configuration

1. **Inventory File (`inventory.ini`)**: This file defines the target hosts and AWS configuration for Ansible playbooks.

   Example:
   ```ini
   [aws_instances]
   ec2_instance ansible_host=your-ec2-public-ip

   [aws_instances:vars]
   ansible_user=ubuntu
   ansible_ssh_private_key_file=~/.ssh/your-private-key.pem
   ```

2. **Ansible Playbook**: The playbook `ec2_create.yaml` is used to create the EC2 instances on AWS.


3. **Variable Precedence in Ansible**: In this project, **Ansible variable precedence** was explored to ensure the correct configuration values are used. This allows overriding variables in different levels (e.g., playbook, inventory, and command-line), which provides flexibility during automation.

   Example of variable precedence:
   - **Command-line variables**: These will override values in inventory or playbook.
   - **Inventory variables**: These can be set to customize settings per host group.
   - **Playbook variables**: Defaults defined in the playbook.

   Example:
   ```yaml
   ---
   - name: Test variable precedence
     hosts: localhost
     vars:
       instance_type: t2.micro
     tasks:
       - name: Display instance type
         debug:
           msg: "Instance type is {{ instance_type }}"
   ```

## Running the Playbook

To run the playbook, use the following command:

```
ansible-playbook -i inventory.ini ec2_create.yml
```

This will create the EC2 instances as defined in your playbook. You can customize the playbook variables or use command-line arguments to override settings like the **instance_type** or **region**.

## Conclusion

This project automates the process of provisioning EC2 instances on AWS using Ansible, reducing the manual effort and ensuring consistency. It also serves as an example of how to effectively manage variables in Ansible playbooks and utilize variable precedence.

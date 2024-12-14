# Automating AWS EC2 Instance Creation and Management with Ansible

## Project Overview

This project uses **Ansible** to automate the creation of AWS EC2 instances and manage them. The key objectives of the project include:

1. Creating one AWS Linux instance and two Ubuntu instances using an Ansible playbook.
2. Setting up a passwordless SSH connection from the base instance to the newly created instances.
3. Writing and executing a playbook to stop only the Ubuntu instances while leaving other instances unaffected.

---

## Prerequisites

Before starting, ensure the following:

- An AWS account with access to create EC2 instances.
- AWS credentials (Access Key and Secret Key) with sufficient permissions to manage EC2.
- Ansible installed on your local machine or base instance.
- A pre-generated SSH key pair (e.g., `.pem` file) to enable passwordless SSH connections.

---

## Inventory File

The **inventory.ini** file is used to define the instances and their connection details. Below is the content of the `inventory.ini` file:

```ini
[all]
ec2-user@<public-ip-of-linux-instance>
ubuntu@<public-ip-of-ubuntu-instance-1>
ubuntu@<public-ip-of-ubuntu-instance-2>
```

Replace `<public-ip>` with the actual public IP addresses of your EC2 instances.

---

## Playbooks

### 1. EC2 Instance Creation Playbook

This playbook (`ec2_create.yml`) is used to create three EC2 instances: one AWS Linux instance and two Ubuntu instances.

---

## Project Workflow

1. **Create Instances**: The first playbook uses the `amazon.aws.ec2_instance` module to create one AWS Linux instance and two Ubuntu instances in the specified AWS region.
2. **Passwordless SSH Setup**: The base instance (control node) establishes a passwordless SSH connection to the newly created instances using an SSH key.
3. **Stop Ubuntu Instances**: The second playbook identifies instances running Ubuntu (Debian OS family) and stops them while leaving the AWS Linux instance unaffected.

---

## Tools & Technologies

- **Ansible**: Automation tool for configuration management and application deployment.
- **AWS**: Cloud platform for EC2 instance provisioning.
- **SSH**: Secure communication between instances.
- **YAML**: Format for writing Ansible playbooks.

---

## Future Enhancements

- Automate the SSH key distribution process directly within the instance creation playbook.
- Add more tasks to manage instances, such as starting, terminating, or updating configurations.

---


# Ansible Project: Apache2 Installation and Static File Deployment

## Overview
This project demonstrates an Ansible playbook that automates the installation of Apache2 on a remote machine and deploys a static HTML file (`index.html`) to the Apache2 web server. Once the playbook is executed, the web server will host the static HTML file, which can be accessed using the public IP or hostname of the instance.

---

## Features
1. **Install Apache2**: Automatically installs the Apache2 web server on the target machine.
2. **Deploy Static File**: Copies the `index.html` file to the `/var/www/html` directory, which is the default document root for Apache2.
3. **Ensure Proper Permissions**: Sets ownership and permissions for the deployed static file.

---

## Prerequisites
1. Ansible installed on the control machine.
2. Target machine(s) configured in the Ansible inventory file.
3. SSH access to the target machine(s) with the necessary permissions to become a superuser.

---

## How to Run
Clone this repository to your Ansible control machine:

git clone https://github.com/pradeepadlakondawar/Ansible.git
cd proj1
Ensure your inventory file (inventory) contains the IPs or hostnames of the target machines.

Place your index.html file (the static file to be deployed) in the same directory as the playbook.

---

## Run the playbook using the following command:

ansible-playbook -i inventory playbook.yaml
Replace inventory with the path to your inventory file.
Replace playbook.yaml with the actual filename of your playbook.
Once the playbook completes successfully:

Apache2 will be installed on the target machine(s).
The index.html file will be deployed to /var/www/html.
You can access the static file in a web browser using the public IP or hostname of the machine.
Example Output
After running the playbook, open a browser and visit:

http://<public-ip-or-hostname>

You should see the content of your index.html file displayed.

---

## Troubleshooting
Permission Denied: Ensure the user in the inventory file has the necessary privileges and can use sudo without a password prompt.
Apache2 Not Starting: Check the status of the Apache2 service:

sudo systemctl status apache2
File Not Found: Verify the index.html file exists in the same directory as the playbook and has the correct name.
Notes

This playbook is designed for Ubuntu/Debian-based systems that use apt for package management.

---

## Author
Pradeep Adlakondawar

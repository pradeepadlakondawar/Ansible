## Ansible Projects Repository

This repository contains a collection of projects and automation playbooks built using **Ansible**. Each project aims to automate various tasks such as provisioning infrastructure, configuration management, and application deployment, with a focus on using Ansible’s powerful automation capabilities.

Each project has its own directory, with a dedicated README detailing the specific steps and instructions for that project.

---

## Projects Overview

The following projects are included in this repository:

1. **[Project 1: Example Project 1](./proj1/README.md)**  
   This project demonstrates a basic Ansible playbook for automating a simple task (e.g., installing a software package, configuring services, etc.).

2. **[Project 2: Docker Installation using an Ansible role](./proj2/README.md)**  
   This project demonstrates the automation of Docker installation on remote machines using Ansible.

3. **[Project 3: Creating EC2 Instances on AWS with Ansible](./proj3/README.md)**  
   Automates the provisioning of EC2 instances on AWS by using a custom collection and leveraging variable precedence for flexibility.

4. **[Project 4: Stop Specific Ubuntu Instances](./proj4/README.md)**  
   Created playbooks to **shut down specific Ubuntu instances** from a centralized AWS Linux base instance. The playbooks ensure precise targeting and automation of shutdown tasks using instance filtering.

---

## Prerequisites

Before using the playbooks in any project, ensure the following requirements are met:

1. **Ansible Installed**: Install Ansible on your machine.  
   You can install it using the following command:  
   ```bash
   sudo apt install ansible
   ```
   Or using `pip` for Python-based installation:  
   ```bash
   pip install ansible
   ```

2. **AWS Credentials**: For projects that interact with AWS, ensure you have your AWS credentials configured.  
   Set environment variables:  
   ```bash
   export AWS_ACCESS_KEY_ID=your-access-key-id
   export AWS_SECRET_ACCESS_KEY=your-secret-access-key
   ```
   Or configure them using the AWS CLI:  
   ```bash
   aws configure
   ```

3. **Dependencies**: Some projects require additional dependencies like `boto3` (for AWS integration) or `botocore`:  
   ```bash
   pip install boto3 botocore
   ```

4. **Ansible Galaxy Collections**: For specific AWS-related tasks, Ansible Galaxy collections are required. Use the following to install the required collection for AWS:  
   ```bash
   ansible-galaxy collection install amazon.aws
   ```

---

## How to Use

### Running the Playbooks

Each project contains its own Ansible playbook and instructions on how to use it. Below is a generic example of how to execute an Ansible playbook for any project:

1. Navigate to the project directory:  
   ```bash
   cd proj1  # Replace with the appropriate project folder
   ```

2. Ensure the necessary inventory file is set up (`inventory.ini` for EC2-related projects).

3. Run the Ansible playbook:  
   ```bash
   ansible-playbook -i inventory.ini your_playbook.yml
   ```

---

### Example Workflow: Project 4

For **Project 4: Stop Specific Ubuntu Instances**, the steps would include:

1. Ensure your AWS credentials are configured using `aws configure` or environment variables.  
2. Navigate to the **Project 4** folder:  
   ```bash
   cd proj4
   ```
3. Update the playbook variables to include the instance IDs or tags of the specific Ubuntu instances you wish to stop.  
4. Run the playbook:  
   ```bash
   ansible-playbook -i inventory.ini stop_ubuntu_instances.yml
   ```

---

## Project Details

Each project folder has a **README.md** file that explains the specific tasks, instructions, and configurations used in the playbook for that project.

For example:

- **Project 1**: Example Project 1 → [README](./proj1/README.md)  
- **Project 2**: Docker Installation using an Ansible role → [README](./proj2/README.md)  
- **Project 3**: Creating EC2 Instances on AWS with Ansible → [README](./proj3/README.md)  
- **Project 4**: Stop Specific Ubuntu Instances → [README](./proj4/README.md)

---

## Contributing

If you’d like to contribute to any of the projects, feel free to fork the repository and submit a pull request. Make sure to adhere to the following guidelines:

- Clearly describe the problem you are solving or the feature you are adding.
- Add appropriate documentation and tests where necessary.
- Ensure your changes are well-tested and compatible with existing playbooks.

---

## License

This repository is open-source and available under the [MIT License](LICENSE).

---

### Key Additions:
- Added **Project 4: Stop Specific Ubuntu Instances** to both "Projects Overview" and "Project Details" sections.
- Included a specific example workflow for **Project 4**.
- Ensured consistency with existing formatting.

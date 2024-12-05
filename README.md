Here’s a general template for the **README** of your main repository (Ansible repo), which contains all your individual projects. The README includes a section for each project and its respective README.

---

# Ansible Projects Repository

This repository contains a collection of projects and automation playbooks built using **Ansible**. Each project aims to automate various tasks such as provisioning infrastructure, configuration management, and application deployment, with a focus on using Ansible’s powerful automation capabilities.

Each project has its own directory, with a dedicated README detailing the specific steps and instructions for that project.

## Projects Overview

The following projects are included in this repository:

- [**Project 1: Example Project 1**](./proj1/README.md): This project demonstrates a basic Ansible playbook for automating a simple task (e.g., installing a software package, configuring services, etc.).
- [**Project 2: EC2 Instance Creation on AWS**](./proj2/README.md): This project showcases how to automate the creation of AWS EC2 instances using an Ansible Galaxy collection.
- [**Project 3: Creating EC2 Instances on AWS with Ansible**](./proj3/README.md): Automates the provisioning of EC2 instances on AWS by using a custom collection and leveraging variable precedence for flexibility.

## Prerequisites

Before using the playbooks in any project, ensure the following requirements are met:

1. **Ansible Installed**: Install Ansible on your machine. You can install it using the following command:
   ```bash
   sudo apt install ansible
   ```
   Or using `pip` for Python-based installation:
   ```bash
   pip install ansible
   ```

2. **AWS Credentials**: For projects that interact with AWS, ensure you have your AWS credentials configured. You can do this by either setting environment variables:
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

### Example Workflow

For **Project 2** (EC2 instance creation), for example, the steps would include:

1. Set up the `inventory.ini` file with your EC2 details.
2. Customize variables in the `ec2_create.yml` playbook (e.g., instance type, region).
3. Run the playbook:
   ```bash
   ansible-playbook -i inventory.ini ec2_create.yml
   ```

## Project Details

Each project folder has a **README.md** file that explains the specific tasks, instructions, and configurations used in the playbook for that project.

For example:
- **Project 1: Example Project 1**: [README](./proj1/README.md)
- **Project 2: EC2 Instance Creation on AWS**: [README](./proj2/README.md)
- **Project 3: Creating EC2 Instances on AWS with Ansible**: [README](./proj3/README.md)

## Contributing

If you’d like to contribute to any of the projects, feel free to fork the repository and submit a pull request. Make sure to adhere to the following guidelines:

- Clearly describe the problem you are solving or the feature you are adding.
- Add appropriate documentation and tests where necessary.
- Ensure your changes are well-tested and compatible with existing playbooks.

## License

This repository is open-source and available under the [MIT License](LICENSE).


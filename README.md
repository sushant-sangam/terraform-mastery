# Terraform Mastery

A practice demo for mastering Terraform concepts and configurations. This repository contains examples and exercises to help you learn and implement Terraform best practices.

---

## 1. Overview
This project is designed to provide hands-on practice with Terraform, covering basic to advanced concepts such as:
- Resource creation and management
- Variables and outputs
- Modules and reusable configurations
- Data sources and dependencies

---

## 2. Features

- **EC2 Instance Management**: Learn how to create and manage EC2 instances with and without SSH access.
- **S3 Bucket Provisioning**: Automate the creation of AWS S3 buckets with custom tags and lifecycle rules.
- **Dynamic Configurations**: Use variables, outputs, and data blocks for real-world scenarios.
- **Terraform Best Practices**: Structure your Terraform files for scalability and maintainability.

---

## 3. Directory Structure

```
terraform-mastery/
├── aws-ec2-advanced-dynamic-setup/ # Advanced EC2 setup with variables and outputs
├── aws-ec2-no-ssh-setup/          # EC2 instances without SSH access
├── aws-ec2-ssh-enabled/           # EC2 instances with SSH access
├── aws-s3-bucket-setup/           # S3 bucket creation examples
├── local-file-generator/          # Examples for local file creation with Terraform
└── README.md                      # Documentation
```

---

## 4. Prerequisites

1. **Terraform**
   - Install [Terraform](https://www.terraform.io/downloads) (version 1.0 or later).
   - Verify installation:
     ```bash
     terraform -version
     ```

2. **AWS CLI**
   - Install AWS CLI:
     
     **Step 1:**
     ```bash
     curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
     ```
     
     **Step 2:**
     ```bash
     unzip awscliv2.zip
     ```
     
     **Step 3:**
     ```bash
     sudo ./aws/install
     ```
     
     **Step 4:**
     You can now run:
     ```bash
     /usr/local/bin/aws --version
     ```

     **NOTE:** If `unzip` is not installed:
     ```bash
     sudo apt install unzip
     ```

   - Configure the AWS CLI with your credentials:
     ```bash
     aws configure
     ```

3. **Permissions**
   - Ensure proper IAM permissions for managing resources like EC2 and S3.

---

## 5. Getting Started

1. Clone this repository:
   ```bash
   git clone https://github.com/your-repo/terraform-mastery.git
   cd terraform-mastery
   ```

2. Navigate to a specific example directory (e.g., `aws-ec2-no-ssh-setup/`).

3. Initialize Terraform:
   ```bash
   terraform init
   ```

4. Plan the configuration:
   ```bash
   terraform plan
   ```

5. Apply the configuration:
   ```bash
   terraform apply
   ```

6. Destroy resources (optional):
   ```bash
   terraform destroy
   ```

---

## 6. Notes
- Always review the `terraform plan` output before applying changes.
- Use proper file structures and naming conventions for scalability.
- Clean up resources after use to avoid unnecessary costs.

---

## 7. License
This project is open-sourced under the MIT License.

---

## 8. Contributing
Contributions are welcome! Feel free to open an issue or submit a pull request for improvements or new examples.
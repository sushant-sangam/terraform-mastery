# Terraform AWS S3 Bucket Creation

This module demonstrates how to create and manage an AWS S3 bucket using Terraform.

---

## 1. Features

### AWS S3 Bucket
- Create an S3 bucket with custom tags.  
- Manage bucket lifecycle using Terraform.  

---

## 2. Prerequisites

1. **Terraform**
   - Download and Install [Terraform](https://www.terraform.io/downloads) (version 1.0 or later).  
   - Check the installation:
     ```bash
     terraform -version
     ```

2. **AWS CLI**
   - Install AWS CLI for managing AWS services:
     ```bash
     curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
     unzip awscliv2.zip
     sudo ./aws/install
     ```
   - Verify installation:
     ```bash
     aws --version
     ```

   - Configure AWS CLI with your credentials:
     ```bash
     aws configure
     ```

3. **Permissions**
   - Ensure Terraform has write permissions for the target directory.
   - For AWS S3, ensure you have permissions to create and manage buckets.

---

## 3. AWS S3 Bucket Creation

### 3.1. Files & Code
Create the following files in your working directory:

**s3.tf**
```hcl
resource "aws_s3_bucket" "demo_bucket" {
  bucket = "s3-terraform-demo-bucket"
  tags = {
    name        = "s3_terraform_demo_bucket"
    environment = "dev"
  }
}
```

**provider.tf**
```hcl
provider "aws" {
  region = "us-east-1"
}
```

### 3.2. Steps to Create the S3 Bucket

#### Step 1: Initialize Terraform
```bash
terraform init
```
- Downloads AWS provider plugins.
- Prepares the working directory.

#### Step 2: Plan the Deployment
```bash
terraform plan
```
- Displays the actions Terraform will take to create the bucket.

#### Step 3: Apply the Configuration
```bash
terraform apply
```
Confirm by typing `yes`.

**Expected Output:**
```text
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

#### Step 4: Verify the S3 Bucket

**AWS Management Console**
- Navigate to S3 in the `us-east-1` region.
- Verify the bucket `s3-terraform-demo-bucket`.

**AWS CLI**
```bash
aws s3 ls
```
- Look for `s3-terraform-demo-bucket` in the output.

#### Step 5: Destroy the Configuration (Optional)
```bash
terraform destroy
```
Confirm by typing `yes`.

**Expected Output:**
```text
Destroy complete! Resources: 1 destroyed.
```

---

## 4. Notes
- Always review the `terraform plan` output before applying changes.
- Ensure AWS credentials and Terraform configurations are correct to avoid errors.
- Use `terraform destroy` to clean up resources and avoid unnecessary charges.

---

## 5. License
This project is open-sourced under the MIT License.

---

## 6. Contributing
Contributions are welcome! Please open an issue or submit a pull request for improvements or bug fixes.
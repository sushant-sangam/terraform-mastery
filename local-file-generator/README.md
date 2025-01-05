# Terraform Local File Generator

This module creates a user-specified content for a local file using the `local_file` resource in Terraform.

---

## 1. Features

- Create a local file with the user defined content for a particular user using a single variable.  
- Specify the file name and content via variables.  
- Simple and reusable Terraform module for local development and testing.

---

## 2. Prerequisites

1. **Terraform**  
   - Download and Install [Terraform](https://www.terraform.io/downloads) (version 1.0 or later).  
   - Check if the installation was successful:
     ```bash
     terraform -version
     ```

2. **Permissions**  
   - Please make sure Terraform has the necessary write permissions for the folder where the configuration will be run.

---

## 3. Steps to Use This Module

### 3.1. Clone the Repository
```bash
git clone https://github.com/sushant-sangam/terraform-mastery.git
cd local-file-generator

## Steps

### 3.2. Initialize Terraform
The `terraform init` command initializes the working directory containing the Terraform configuration. This step is required before any other Terraform command.

```bash
terraform init
```

**What it does:**
- Downloads provider plugins.
- Prepares the working directory.
- Validates the configuration files.

---

### 3.3. Plan the Configuration
The `terraform plan` command creates an execution plan, showing what Terraform will do when you apply the configuration. Always review the plan to ensure it matches your expectations.

```bash
terraform plan
```

**Optional:** Provide variable values as CLI arguments:

```bash
terraform plan -var="filename=customfile.txt" -var="content=Hello, Terraform!"
```

---

### 3.4. Apply the Configuration
The `terraform apply` command executes the plan and applies the configuration to create the local file.

```bash
terraform apply
```

- Review the execution plan and confirm by typing `yes`.

---

### 3.5. Verify the Output
After successful execution, check the outputs displayed in the terminal:

```bash
# Outputs:
# file_path = "devops.txt"
```

You can also manually verify the file creation in the current directory:

```bash
cat devops.txt
# Output: This is a terraform generated file
```

---

### 3.6. Destroy the Configuration (Optional)
To clean up resources created by the configuration, use the `terraform destroy` command:

```bash
terraform destroy
```

- Review the planned destruction and confirm by typing `yes`.

---

## 4. Advanced Usage

### 4.1. Passing Variables
You can pass variables dynamically using:

**Command-line arguments:**
```bash
terraform apply -var="filename=example.txt" -var="content=Sample content"
```

**Variable files:**
Create a file named `terraform.tfvars`:
```hcl
filename = "example.txt"
content  = "This content is loaded from tfvars"
```

Then run:
```bash
terraform apply

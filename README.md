# Terraform AWS EC2 Instance Setup 🚀

This repository contains Terraform code to provision an **AWS EC2 instance** using Infrastructure as Code (IaC). Perfect for beginners exploring DevOps and Terraform!

## 📌 What this does:
- Creates an EC2 instance on AWS
- Uses Terraform for provisioning
- Easy to modify for personal use

## 🧰 Tools & Services Used:
- Terraform
- AWS EC2
- GitHub
- Ubuntu (on EC2)

## 💡 What I Learned:
- Writing Terraform configurations
- Using `terraform init`, `plan`, `apply`
- Handling common issues like:
  - Git clone directory structure
  - AWS vCPU limit error

## 📂 Project Structure:

terraform-practice/ │ ├── main.tf ├── variables.tf ├── terraform.tfvars ├── outputs.tf └── provider.tf


## 🛠️ How to Use:
1. Clone the repo:

git clone https://github.com/amanchoudhary-07/Terraform-practice.git

2. Navigate into the directory:

cd Terraform-practice

3. Initialize Terraform:

terraform init

4. Preview the changes:

terraform plan

5. Apply the configuration:

terraform apply

> ✅ Make sure your AWS credentials and region are properly configured.

## 🔗 Connect with Me
- 💼 [LinkedIn](https://www.linkedin.com/in/aman-choudhary)
- 💻 [GitHub](https://github.com/amanchoudhary-07)

---

Feel free to star 🌟 the repo if you find it helpful!

---

### How to Add This:
1. Create a file named `README.md` in the root folder of your repo.
2. Paste the above content.
3. Commit and push:
```bash
git add README.md
git commit -m "Add project README"
git push origin main

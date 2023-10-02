# Project Name

## Description
🚀 This project demonstrates the infrastructure provisioning using Terraform for two environments: dev and prod.

## Steps

1. Create two workspaces: dev and prod. 🏢
    - Run the following command to create the workspaces:
     ```
     terraform workspace new dev
     terraform workspace new prod
     ```


2. Create two variable definition files (.tfvars) for the two environments. 📝
    - Create a `dev.tfvars` file with the required variables for the dev environment.
    - Create a `prod.tfvars` file with the required variables for the prod environment.

3. Separate network resources into a network module. 🌐
    - Create a `network` module that contains the necessary resources for networking.

4. Apply your code to create two environments, one in us-east-1 and eu-central-1. ⚙️
    - Run the following command to apply the code for the dev environment:
     ```
     terraform apply -var-file=dev.tfvars
     ```
   - Run the following command to apply the code for the prod environment:
     ```
     terraform apply -var-file=prod.tfvars
     ```

5. Run a local-exec provisioner to print the public IP of the bastion EC2 instance. 🖥️
    - Add a local-exec provisioner to your Terraform code to execute a command that prints the public IP of the bastion EC2 instance.

          
6. Upload the infrastructure code to your GitHub project. 📁
    - Create a new repository on GitHub.
    - Push your Terraform code to the repository.

7. Create a Jenkins image with Terraform installed inside it. 🛠️
    - Follow the instructions to create a Jenkins image with Terraform installed.
    - create dockerfile 🐳 
    - Build and run container 

    docker build -t jenkins-with-terraform .
    docker run -p 8081:8080 -p 50000:50000 jenkins-with-terraform

8. Create a pipeline that takes an env-param to apply the Terraform code on a certain environment. 🚦
    - Configure a Jenkins pipeline that accepts an environment parameter and runs the Terraform apply command with the corresponding variable file.
    - I create two pipeline one for **Apply** and anothor to **Destroy** 

9. Verify your email in the SES service. ✉️
    - Follow the instructions to verify your email in the Amazon SES service.

10. Create a Lambda function to send an email. 📧
    - Write a Lambda function that uses the SES service to send an email.

11. Create a trigger to detect changes in the state file and send the email. 📈
    - Configure a trigger that detects changes in the Terraform state file and triggers the Lambda function to send an email.


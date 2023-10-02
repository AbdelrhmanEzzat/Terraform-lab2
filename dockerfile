FROM jenkins/jenkins:latest

USER root

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y curl unzip && \
    rm -rf /var/lib/apt/lists/*

# Install Terraform
RUN curl -LO https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_linux_amd64.zip && \
    unzip terraform_1.5.7_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_1.5.7_linux_amd64.zip

USER jenkins
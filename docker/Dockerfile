#FROM mcr.microsoft.com/powershell:lts-7.2-ubuntu-20.04
FROM ubuntu:20.04

#Update
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install wget apt-transport-https gnupg ca-certificates curl software-properties-common -y

# #Packer
# RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/hashicorp.gpg
# RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
# RUN apt-get install packer -y
# RUN packer version


# # #terraform
# RUN DEBIAN_FRONTEND=noninteractive wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
# RUN DEBIAN_FRONTEND=noninteractive gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint
# RUN DEBIAN_FRONTEND=noninteractive echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list
# RUN DEBIAN_FRONTEND=noninteractive apt-get update
# RUN DEBIAN_FRONTEND=noninteractive apt-get install terraform -y
# RUN terraform version

# # #AZ Cli 
# RUN DEBIAN_FRONTEND=noninteractive curl -sL https://aka.ms/InstallAzureCLIDeb | bash


# Download the Microsoft repository GPG keys
RUN DEBIAN_FRONTEND=noninteractive wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"
# Register the Microsoft repository GPG keys
RUN DEBIAN_FRONTEND=noninteractive dpkg -i packages-microsoft-prod.deb
# Delete the the Microsoft repository GPG keys file
RUN DEBIAN_FRONTEND=noninteractive rm packages-microsoft-prod.deb
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y powershell

# #AZ Modules 
RUN DEBIAN_FRONTEND=noninteractive pwsh -ExecutionPolicy Bypass -Command "Install-Module -Name Az -Repository PSGallery -Force -AllowClobber -scope allusers -verbose" 


# #Ansible
# RUN DEBIAN_FRONTEND=noninteractive apt-add-repository ppa:ansible/ansible -y
# RUN DEBIAN_FRONTEND=noninteractive apt update
# RUN DEBIAN_FRONTEND=noninteractive apt install ansible -y
# RUN DEBIAN_FRONTEND=noninteractive apt install python3-pip -y
# RUN DEBIAN_FRONTEND=noninteractive pip install pywinrm[credssp]
# RUN DEBIAN_FRONTEND=noninteractive pip install pywinrm --upgrade
# RUN DEBIAN_FRONTEND=noninteractive mkdir /usr/share/ansible/collections
# RUN DEBIAN_FRONTEND=noninteractive ansible-galaxy collection install azure.azcollection -p /usr/share/ansible/collections
# RUN DEBIAN_FRONTEND=noninteractive pip3 install -r /usr/share/ansible/collections/ansible_collections/azure/azcollection/requirements-azure.txt




# RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -qq --no-install-recommends \
#     apt-transport-https \
#     apt-utils \
#     ca-certificates \
#     curl \
#     git \
#     iputils-ping \
#     jq \
#     lsb-release \
#     software-properties-common \
#     libicu66

# RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# # Can be 'linux-x64', 'linux-arm64', 'linux-arm', 'rhel.6-x64'.
# ENV TARGETARCH=linux-x64

# WORKDIR /azp

# COPY ./start.sh .
# RUN chmod +x start.sh

# ENTRYPOINT [ "./start.sh" ]
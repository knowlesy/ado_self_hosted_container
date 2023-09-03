# ado_self_hosted_container
Azure Devops Self Hosted Container 


This is a lab only !

## Pre-Req's

* Azure Devops Organization and Project for testing
* terraform installed locally
* VSCode with TF Extension and Git
* AZ Cli or AZ PS Module 
* Azure Environment 
* Azure Service Principle created  and set up in Azure devops [guide](https://learn.microsoft.com/en-us/azure/devops/integrate/get-started/authentication/service-principal-managed-identity?view=azure-devops) , [alt guide](https://learn.microsoft.com/en-us/cli/azure/create-an-azure-service-principal-azure-cli)

## Instructions

Git clone in VS Code and cd into the TF folder then run through the motions

Import the repo into your test project in ADO





In your VSCode Terminal 

Log in to azure [AZ CLI](https://learn.microsoft.com/en-us/cli/azure/authenticate-azure-cli) or [Powershell](https://learn.microsoft.com/en-us/powershell/azure/authenticate-azureps?view=azps-10.1.0)

Initialize TF Code

    terraform init -upgrade

Plan TF Code

    terraform plan -out main.tfplan

Apply TF Code

    terraform apply main.tfplan


Once this has run add your SPN as a contributor to the ACR

In ADO under your project go to project settings > service connections > new service connection > docker registry > next

Click Azure Container Reg... set to Service Principle Click Add 








In Azure portal or via your connection to Azure run thr following AZ Cli command to see the images stored in the repository

    az acr repository list --name <acrName> --output table

To get a list of the versions run the following substituting reponame for your image name / build shown in the previous step

    az acr repository show-tags -n <RegistryName> --repository <reponame> --orderby time_desc --output table


DESTROY!!!!!!!!!!!!!

    terraform plan -destroy -out main.destroy.tfplan
    terraform apply "main.destroy.tfplan"

References below have helped in making this example 
* [Run a self-hosted agent in Docker](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops)
* [Packer install on ubuntu](https://computingforgeeks.com/how-to-install-and-use-packer/?expand_article=1)
* [Hashicorp Packer Container](https://github.com/hashicorp/docker-hub-images/tree/master/packer)
* [Powershell installation Ubuntu](https://learn.microsoft.com/en-us/powershell/scripting/install/install-ubuntu?view=powershell-7.3)
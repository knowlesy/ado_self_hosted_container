# ado_self_hosted_container
Azure Devops Self Hosted Container 


This is a lab only !

## Pre-Req's

* Docker
* ADO Project / API Token / Pool name

## Instructions

Clone the docker\* files locally to a folder 

in a command window cd int ot that directory and run the following command

    docker build -t adoagent:latest --no-cache

This will compile the container for you 

You can then run the container by populating the folling variables <> below 


    docker run -e AZP_URL="https://dev.azure.com/<orgname>/" -e AZP_TOKEN=<token> -e AZP_AGENT_NAME=<agentname> -e AZP_POOL=<poolname> adoagent:latest

If you want to run some basic tests you can use the "pipeline\BasicTest.yml" within ADO (remember to update the pool name variable)

References below have helped in making this example 
* [Run a self-hosted agent in Docker](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops)
* [Packer install on ubuntu](https://computingforgeeks.com/how-to-install-and-use-packer/?expand_article=1)
* [Hashicorp Packer Container](https://github.com/hashicorp/docker-hub-images/tree/master/packer)
* [Powershell installation Ubuntu](https://learn.microsoft.com/en-us/powershell/scripting/install/install-ubuntu?view=powershell-7.3)
* [ADO Docker Env Variables](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#environment-variables)
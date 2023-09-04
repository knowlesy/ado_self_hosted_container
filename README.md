# ado_self_hosted_container
Azure Devops Self Hosted Container 

Docker file for creating a container based self hosted agent with packer / terraform / ansible installed in addition. 

This is a lab only !

## Pre-Req's

* Docker
* ADO Project / API Token / Pool name

## Instructions

Clone the docker\* files locally to a folder 

in a command window cd int ot that directory and run the following command

    docker build -t adoagent:latest --no-cache

![image](https://github.com/knowlesy/ado_self_hosted_container/assets/20459678/fdaad45f-9289-4396-a5c3-768ad06a70cd)


This will compile the container for you 

You can then run the container by populating the folling variables <> below 

    docker run -e AZP_URL="https://dev.azure.com/<orgname>/" -e AZP_TOKEN=<token> -e AZP_AGENT_NAME=<agentname> -e AZP_POOL=<poolname> adoagent:latest

![image](https://github.com/knowlesy/ado_self_hosted_container/assets/20459678/b5c54834-6401-4bbc-bd88-b11b8dba5340)

![image](https://github.com/knowlesy/ado_self_hosted_container/assets/20459678/0d8003ef-4369-4d11-98c6-22e081195ea3)


If you want to run some basic tests you can use the "pipeline\BasicTest.yml" within ADO (remember to update the pool name variable)
![image](https://github.com/knowlesy/ado_self_hosted_container/assets/20459678/49159ed6-8297-46a2-9145-7ef4ce81819d)
![image](https://github.com/knowlesy/ado_self_hosted_container/assets/20459678/ccb80912-1d86-4616-993d-a8df7f3a43aa)
![image](https://github.com/knowlesy/ado_self_hosted_container/assets/20459678/606609a8-af37-4053-b524-84f83d970bf9)
![image](https://github.com/knowlesy/ado_self_hosted_container/assets/20459678/ac310fda-e069-42b1-8d4d-2ea7230cf499)
![image](https://github.com/knowlesy/ado_self_hosted_container/assets/20459678/9f4c766e-812d-4c77-89cb-30da99b0cb23)
![image](https://github.com/knowlesy/ado_self_hosted_container/assets/20459678/b7dc0e4d-a6c3-4747-aa28-ca9bfc1ba8c6)


References below have helped in making this example 
* [Run a self-hosted agent in Docker](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops)
* [Packer install on ubuntu](https://computingforgeeks.com/how-to-install-and-use-packer/?expand_article=1)
* [Hashicorp Packer Container](https://github.com/hashicorp/docker-hub-images/tree/master/packer)
* [Powershell installation Ubuntu](https://learn.microsoft.com/en-us/powershell/scripting/install/install-ubuntu?view=powershell-7.3)
* [ADO Docker Env Variables](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#environment-variables)

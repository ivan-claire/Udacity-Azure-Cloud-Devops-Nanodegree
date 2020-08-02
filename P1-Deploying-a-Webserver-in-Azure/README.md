# Azure Infrastructure Operations Project: Deploying a scalable IaaS web server in Azure

### Introduction
In this project, a Packer template and a Terraform template were written to deploy a customizable, scalable web server in Azure. 
Customizable because anyone can clone this repo and provide user specific arguments like subscription id, client id and secret etc to deploy a webserver to Azure without necessarily modifying the code. 
Scalable because users can configure the number of virtual machines they want to be deployed.

### Getting Started
1. Clone this repository

2. Install dependencies

### Dependencies
1. Create an [Azure Account](https://portal.azure.com) 
2. Install the [Azure command line interface](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
3. Install [Packer](https://www.packer.io/downloads)
4. Install [Terraform](https://www.terraform.io/downloads.html)

### Instructions
1. Get necessary azure credentials needed for your deployment
    - On your terminal do `az login`, the results will give your subscription id which is the id field in the ouput.
        ```
        [
            {
                "cloudName": "AzureCloud",
                "homeTenantId": "xxxxxxxxxxxxxxxxxxxx",
                "id": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                "isDefault": true,
                "managedByTenants": [],
                "name": "Free Trial",
                "state": "Enabled",
                "tenantId": "xxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                "user": {
                "name": "xxxxxxx@gmail.com",
                "type": "user"
                }
            }
        ]

        ```
    - Create an azure service principal for terraform using the command 
        ` az ad sp create-for-rbac --query "{ client_id: appId, client_secret: password, tenant_id: tenant }"`. You should get an output similar to:
         ```
        {
            "client_id": "xxxxxxxxxxxxxxxxxxxx",
            "client_secret": "xxxxxxxxxxxxxxxxxxx",
            "tenant_id": "xxxxxxxxxxxxxxxxxxxxxxx"
        }

        ```
        for more information on service principals, use [this link](https://www.terraform.io/docs/providers/azurerm/guides/service_principal_client_secret.html)

    - Create a resource group using the command
        ```
        az group create -n theResourceGroup -l eastus

        ```
 2. Create and Deploy virtual machine Image to Azure using Packer.
    Set the client_id,client_secret and tenant_id as environment variables or copy them into a file say packer-vars.json and run the following command to create and deploy your image to azure.
    
        packer build -var-file packer-vars.json server.json
        ```
 3. Customize terraform IaaS code and Deploy
    In the terrafom.tfvars file, the vm_count variable can be modified to the number of virtual machines you want created. By default, 2 VMs are created.
    Also, in this file, provide the client id, secret and other required information.
    Run the following commands to deploy your infrastructure:
    first you initialise your terraform state, then get the plan of the resources that are to be deployed and finally run the apply command to create those resources on azure
       
        $ terraform init
        $ terraform plan 
        $ terrafrom apply --auto-approve
        ```
 4. Destroy Infrastructure
    When you are done using the infrastructure, destroy it using the command
      
        terrafrom apply --auto-approve
        ```
    
### Output
#### Below is a screenshot of what to expect after running the building and deploying your packer image to azure.
![alt packer image in azure (https://github.com/ivan-claire/Udacity-Azure-Cloud-Devops-Nanodegree/blob/master/P1-Deploying-a-Webserver-in-Azure/ScreenShots/02PackerImageinAzure.png)

#### Below is a screenshot of the results of the terraform apply command
![alt resources provisioned (https://github.com/ivan-claire/Udacity-Azure-Cloud-Devops-Nanodegree/blob/master/P1-Deploying-a-Webserver-in-Azure/ScreenShots/04TerraformApplyDone.png)


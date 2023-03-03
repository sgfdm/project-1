# project-1
Terraform Project, (DevOps Week 1)

This repository includes four files (main.tf, providers.tf, variable.tf, output.tf.)
The purpose of the project is to create and provision cloud infrastructure on AWS and Azure using Terraform. 

AWS resources created are: 4 IAM accounts via for_each, 2 S3 buckets via vars and count.

Azure resources created are: 2 Azure accounts, where 1 is required to reset password. Resource Group, Virtual Machine and Storage Account. 

All provider information is kept in provider.tf. Providers aused are AWS, Azurerm and AzureAD.

All variables are stored within the variable.tf file. 

The code will output the region of the AWS and AZURE servers. 

The AWS IAM Accounts have been tagged as "trainees", for cost tracking reasons. 

The Azure Storage Account has been tagged as "DEV" as it will be used for Dev projects.  

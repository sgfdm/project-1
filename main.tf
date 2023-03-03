terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.56.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.45.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.15.0"
    }
  }
  
}


resource "azuread_user" "create_user_sathu" {
  user_principal_name = "s.ganesathasan@fdmgroup.com"
  display_name = "Sathu"

 
  
}

resource "azuread_user" "create_user_ibrahim" {
  user_principal_name = "Sathusan.Ganesathasan@fdmgroup.com"
  display_name = "Ibrahim"
  force_password_change = true

   
}


resource "aws_iam_user" "new-users"{
    for_each = toset(var.aws-users-names)
    name = each.value
     tags = {
    user-type = "trainee"
  }
}

resource "aws_s3_bucket" "two_buckets_creation"{
    bucket = "${var.bucket_name}-${count.index}"
    count = var.number_of_buckets
}

resource "azurerm_resource_group" "rg-project1" {
  name     = var.az-rg-name
  location = var.az-location
}

resource "azurerm_virtual_network" "vm-project1" {
  name                = "sathu-az-vm-project1"
  address_space       = ["10.0.0.0/16"]
  location            = var.az-location
  resource_group_name = var.az-rg-name
}

resource "azurerm_storage_account" "storage-account-project1" {
  name                     = "sathu0storageaccount"
  resource_group_name      = var.az-rg-name
  location                 = var.az-location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "dev"
  }
}
provider "aws" {
  region = var.aws-location
}

provider "azurerm" {
  # configuration options
  features {

  }
  }
provider "azuread" {
  tenant_id = "00000000-0000-0000-0000-000000000000"
}

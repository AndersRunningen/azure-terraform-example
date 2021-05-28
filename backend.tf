backend "azurerm" {
  resource_group_name  = "anders-test"
  storage_account_name = "terraformtesttf"
  container_name       = "statefile"
  key                  = "terraformgithubexample.tfstate"
}
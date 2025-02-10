terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "3.1.0"
    }
  }
  required_version = ">=1.10.0"
}

provider "azuread" {
  #subscription_id = "1b51bb52-95ce-4445-aece-557a3f7b6279"
  #features {}
}

resource "azuread_user" "user" {
  for_each = { for idx, user in var.azuread_user_details : idx => user }

  user_principal_name = each.value.user_principal_name
  display_name        = each.value.display_name
  mail_nickname       = each.value.mail_nickname
  password            = each.value.password
  account_enabled     = each.value.account_enabled
  company_name        = each.value.company_name
  department          = each.value.department
  employee_hire_date  = each.value.employee_hire_date
  given_name          = each.value.given_name
  job_title           = each.value.job_title
  surname             = each.value.surname
}
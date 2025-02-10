variable "azuread_user_details" {
  type = list(object({
    user_principal_name = string
    display_name        = string
    mail_nickname       = string
    password            = string
    account_enabled     = bool
    company_name        = string
    department          = string
    employee_hire_date  = string
    given_name          = string
    job_title           = string
    surname             = string
  }))
  default = [{
    user_principal_name = "goutham.javadev801_gmail.com#EXT#@himajagarrepally95gmail.onmicrosoft.com"
    display_name        = "Goutham B Gummadi"
    mail_nickname       = "goutham.javadev801"
    password            = "GC$it$02092025"
    account_enabled     = true
    company_name        = "InfraEntratrial"
    department          = "IT"
    employee_hire_date  = "2025-02-09T00:00:00Z"
    given_name          = "Goutham"
    job_title           = "IT Specialist"
    surname             = "B Gummadi"
  }]

}
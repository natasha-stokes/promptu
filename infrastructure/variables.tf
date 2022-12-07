locals {
  promptu_mongodb_name = "promptu-db"
}

variable "prompt_api_cidr_range" {
  type = string
  description = "The CIDR range for the Promptu API application to be whitelisted by MongoDB Atlas"
}

variable "promptu_mongodb_org_id" {
    type = string
    description = "The MongoDB org ID that Promptu will be hosted in"
}

variable "promptu_mongodb_fake_init_password" {
    type = string
    description = <<EOF
(Source from environment variable only) The initial password used to 
create the Promptu MongoDB Atlas. In order to create a DB, we have to set 
a fictional first time password then create a real password in the MongoDB 
Atlas UI. Updating the password in the UI will not cause configuration drift 
in Terraform.
EOF
}
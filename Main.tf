locals {
  config_data = jsondecode(file("${path.module}/config/config.json"))
}



module "storage_account" {
  source = "./module/s3"

  for_each = { for entry in local.config_data["aws_s3_bucket"] : entry["aws_s3_bucket"] => entry }

  config = each.value
}

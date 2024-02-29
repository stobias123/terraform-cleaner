terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.1"
    }
  }
}

module "test" {
    source = "./1"
}

module "test" {
    source = "./1"
}

output "test" {
  value = module.test.outputs.test
}

output "test2" {
  value = module.test.outputs.test
}

provider "null" {
  region = var.region
}

data "null_data_source" "values" {
  inputs = var.name
}

locals {
  dummy = "this is not used"
  tags = {
    service : "cleaner"
  }
  dummy2 = "not used either"
}

resource "null_resource" "cluster" {
  # Changes to any instance of the cluster requires re-provisioning
  triggers = {
    instance_ids = var.instance_ids
    tags         = local.tags
  }
}

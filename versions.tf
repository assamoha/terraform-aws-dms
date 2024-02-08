terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.31"
    }
    time = {
      source  = "hashicorp/time"
      version = ">= 0.9"
    }
  }
}
output "replication_subnet_group_id" {
  description = "The ID of the subnet group"
  value       = try(aws_dms_replication_subnet_group.this[0].id, null)
}


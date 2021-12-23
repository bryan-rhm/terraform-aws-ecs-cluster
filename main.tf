locals {
  capacity_providers = ["FARGATE", "FARGATE_SPOT"]
}

resource "aws_ecs_cluster" "cluster" {
  name               = var.name
  capacity_providers = var.capacity_provider_name == null ? local.capacity_providers : concat(local.capacity_providers, [var.capacity_provider_name])

  default_capacity_provider_strategy {
    capacity_provider = var.default_capacity_provider
    weight            = var.default_capacity_provider_weight
  }

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  configuration {
    execute_command_configuration {
      kms_key_id = var.kms_key_arn
      logging    = var.logging_setting

      dynamic "log_configuration" {
        for_each = var.logging_setting == "OVERRIDE" ? [1] : []

        content {
          cloud_watch_encryption_enabled = var.cloud_watch_encryption
          cloud_watch_log_group_name     = var.cloud_watch_log_group_name
          s3_bucket_name                 = var.s3_bucket_name
          s3_bucket_encryption_enabled   = var.s3_bucket_encryption
          s3_key_prefix                  = var.s3_key_prefix
        }
      }
    }
  }

  tags = var.tags
}

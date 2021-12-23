# ------------------------------------------------------------------------
# Amazon ECS Cluster variables
# ------------------------------------------------------------------------

variable "name" {
  type        = string
  description = "The name of the ECS cluster. Must be less than or equal to 255 characters in length."
}

variable "capacity_provider_name" {
  type        = string
  default     = null
  description = "Name to give to the capacity provider created out of the ASG specified."
}

variable "default_capacity_provider" {
  type        = string
  default     = "FARGATE"
  description = "Name of the capacity provider to use by default for the cluster."
}

variable "default_capacity_provider_weight" {
  type        = number
  default     = 1
  description = "The relative percentage of the total number of launched tasks that should use the specified capacity provider."
}

variable "kms_key_arn" {
  type        = string
  default     = null
  description = "The AWS Key Management Service key ID to encrypt the data between the local client and the container."
}

variable "logging_setting" {
  type        = string
  default     = "NONE"
  description = "The log setting to use for redirecting logs for your execute command results."
}

variable "cloud_watch_encryption" {
  type        = bool
  default     = true
  description = "Whether or not to enable encryption on the CloudWatch logs."
}

variable "cloud_watch_log_group_name" {
  type        = string
  default     = null
  description = "The name of the CloudWatch log group to send logs to."
}

variable "s3_bucket_name" {
  type        = string
  default     = null
  description = "The name of the S3 bucket to send logs to."
}

variable "s3_bucket_encryption" {
  type        = bool
  default     = true
  description = "Whether or not to enable encryption on the logs sent to S3."
}

variable "s3_key_prefix" {
  type        = string
  default     = null
  description = "An optional folder in the S3 bucket to place logs in."
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "A map of tags to assign to all the resources"
}

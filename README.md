## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.43.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.70.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecs_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capacity_provider_name"></a> [capacity\_provider\_name](#input\_capacity\_provider\_name) | Name to give to the capacity provider created out of the ASG specified. | `string` | `null` | no |
| <a name="input_cloud_watch_encryption"></a> [cloud\_watch\_encryption](#input\_cloud\_watch\_encryption) | Whether or not to enable encryption on the CloudWatch logs. | `bool` | `true` | no |
| <a name="input_cloud_watch_log_group_name"></a> [cloud\_watch\_log\_group\_name](#input\_cloud\_watch\_log\_group\_name) | The name of the CloudWatch log group to send logs to. | `string` | `null` | no |
| <a name="input_default_capacity_provider"></a> [default\_capacity\_provider](#input\_default\_capacity\_provider) | Name of the capacity provider to use by default for the cluster. | `string` | `"FARGATE"` | no |
| <a name="input_default_capacity_provider_weight"></a> [default\_capacity\_provider\_weight](#input\_default\_capacity\_provider\_weight) | The relative percentage of the total number of launched tasks that should use the specified capacity provider. | `number` | `1` | no |
| <a name="input_kms_key_arn"></a> [kms\_key\_arn](#input\_kms\_key\_arn) | The AWS Key Management Service key ID to encrypt the data between the local client and the container. | `string` | `null` | no |
| <a name="input_logging_setting"></a> [logging\_setting](#input\_logging\_setting) | The log setting to use for redirecting logs for your execute command results. | `string` | `"NONE"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the ECS cluster. Must be less than or equal to 255 characters in length. | `string` | n/a | yes |
| <a name="input_s3_bucket_encryption"></a> [s3\_bucket\_encryption](#input\_s3\_bucket\_encryption) | Whether or not to enable encryption on the logs sent to S3. | `bool` | `true` | no |
| <a name="input_s3_bucket_name"></a> [s3\_bucket\_name](#input\_s3\_bucket\_name) | The name of the S3 bucket to send logs to. | `string` | `null` | no |
| <a name="input_s3_key_prefix"></a> [s3\_key\_prefix](#input\_s3\_key\_prefix) | An optional folder in the S3 bucket to place logs in. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to all the resources | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_output"></a> [output](#output\_output) | ECS cluster object |

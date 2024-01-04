<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.47 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.47 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lb_listener.port_443](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/lb_listener) | data source |
| [aws_lb_listener.port_80](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/lb_listener) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [aws_resourcegroupstaggingapi_resources.acm_certificate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/resourcegroupstaggingapi_resources) | data source |
| [aws_resourcegroupstaggingapi_resources.dms_replication_subnet_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/resourcegroupstaggingapi_resources) | data source |
| [aws_resourcegroupstaggingapi_resources.ecs_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/resourcegroupstaggingapi_resources) | data source |
| [aws_resourcegroupstaggingapi_resources.lb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/resourcegroupstaggingapi_resources) | data source |
| [aws_security_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/security_group) | data source |
| [aws_subnets.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets) | data source |
| [aws_vpc.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |
| [aws_vpc_endpoint.apigw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc_endpoint) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_resources"></a> [resources](#input\_resources) | List of resources to find | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to find | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_acm_certificate_arn"></a> [acm\_certificate\_arn](#output\_acm\_certificate\_arn) | n/a |
| <a name="output_dms_replication_subnet_group_arn"></a> [dms\_replication\_subnet\_group\_arn](#output\_dms\_replication\_subnet\_group\_arn) | n/a |
| <a name="output_ecs_cluster_arn"></a> [ecs\_cluster\_arn](#output\_ecs\_cluster\_arn) | n/a |
| <a name="output_ecs_cluster_name"></a> [ecs\_cluster\_name](#output\_ecs\_cluster\_name) | n/a |
| <a name="output_lb_arn"></a> [lb\_arn](#output\_lb\_arn) | n/a |
| <a name="output_lb_listener_443_arn"></a> [lb\_listener\_443\_arn](#output\_lb\_listener\_443\_arn) | n/a |
| <a name="output_lb_listener_80_arn"></a> [lb\_listener\_80\_arn](#output\_lb\_listener\_80\_arn) | n/a |
| <a name="output_security_group"></a> [security\_group](#output\_security\_group) | n/a |
| <a name="output_vpc_endpoint_id_apigw"></a> [vpc\_endpoint\_id\_apigw](#output\_vpc\_endpoint\_id\_apigw) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
| <a name="output_vpc_subnets"></a> [vpc\_subnets](#output\_vpc\_subnets) | n/a |
<!-- END_TF_DOCS -->
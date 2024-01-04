output "vpc_id" {
  value = length(data.aws_vpc.this) > 0 ? data.aws_vpc.this[0].id : null
}

output "vpc_subnets" {
  value = length(data.aws_subnets.this) > 0 ? data.aws_subnets.this[0].ids : null
}

output "vpc_endpoint_id_apigw" {
  value = length(data.aws_vpc_endpoint.apigw) > 0 ? data.aws_vpc_endpoint.apigw[0].id : null
}

output "ecs_cluster_arn" {
  value = length(data.aws_resourcegroupstaggingapi_resources.ecs_cluster) > 0 ? data.aws_resourcegroupstaggingapi_resources.ecs_cluster[0].resource_tag_mapping_list[0].resource_arn : null
}

output "ecs_cluster_name" {
  value = length(data.aws_resourcegroupstaggingapi_resources.ecs_cluster) > 0 ? reverse(split("/", data.aws_resourcegroupstaggingapi_resources.ecs_cluster[0].resource_tag_mapping_list[0].resource_arn))[0] : null
}

output "lb_arn" {
  value = length(data.aws_resourcegroupstaggingapi_resources.lb) > 0 ? data.aws_resourcegroupstaggingapi_resources.lb[0].resource_tag_mapping_list[0].resource_arn : null
}

output "lb_listener_80_arn" {
  value = length(data.aws_lb_listener.port_80) > 0 ? data.aws_lb_listener.port_80[0].arn : null
}

output "lb_listener_443_arn" {
  value = length(data.aws_lb_listener.port_443) > 0 ? data.aws_lb_listener.port_443[0].arn : null
}

output "security_group" {
  value = length(data.aws_security_group.this) > 0 ? data.aws_security_group.this[0].id : null
}

output "acm_certificate_arn" {
  value = length(data.aws_resourcegroupstaggingapi_resources.acm_certificate) > 0 ? data.aws_resourcegroupstaggingapi_resources.acm_certificate[0].resource_tag_mapping_list[0].resource_arn : null
}

output "dms_replication_subnet_group_arn" {
  value = length(data.aws_resourcegroupstaggingapi_resources.dms_replication_subnet_group) > 0 ? data.aws_resourcegroupstaggingapi_resources.dms_replication_subnet_group[0].resource_tag_mapping_list[0].resource_arn : null
}
data "aws_region" "current" {}

data "aws_vpc" "this" {
  count = contains(var.resources, "vpc") ? 1 : 0
  tags  = var.tags
}

data "aws_subnets" "this" {
  count = contains(var.resources, "vpc") ? 1 : 0
  tags  = var.tags

  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.this[0].id]
  }
}

data "aws_vpc_endpoint" "apigw" {
  count        = contains(var.resources, "vpce-apigw") ? 1 : 0
  service_name = "com.amazonaws.${data.aws_region.current.name}.execute-api"
  vpc_id       = data.aws_vpc.this[0].id
}

data "aws_resourcegroupstaggingapi_resources" "ecs_cluster" {
  count                 = contains(var.resources, "ecs") ? 1 : 0
  resource_type_filters = ["ecs:cluster"]

  dynamic "tag_filter" {
    for_each = var.tags
    content {
      key    = tag_filter.key
      values = [tag_filter.value]
    }
  }
}

data "aws_resourcegroupstaggingapi_resources" "lb" {
  count                 = contains(var.resources, "lb") ? 1 : 0
  resource_type_filters = ["elasticloadbalancing:loadbalancer"]

  dynamic "tag_filter" {
    for_each = var.tags
    content {
      key    = tag_filter.key
      values = [tag_filter.value]
    }
  }
}

data "aws_lb_listener" "port_80" {
  count             = contains(var.resources, "lb") ? 1 : 0
  load_balancer_arn = data.aws_resourcegroupstaggingapi_resources.lb[0].resource_tag_mapping_list[0].resource_arn
  port              = 80
}

data "aws_lb_listener" "port_443" {
  count             = contains(var.resources, "lb") ? 1 : 0
  load_balancer_arn = data.aws_resourcegroupstaggingapi_resources.lb[0].resource_tag_mapping_list[0].resource_arn
  port              = 443
}

data "aws_security_group" "this" {
  count = contains(var.resources, "sg") ? 1 : 0
  tags  = var.tags
}

data "aws_resourcegroupstaggingapi_resources" "acm_certificate" {
  count    = contains(var.resources, "acm") ? 1 : 0

  resource_type_filters = ["acm:certificate"]

  dynamic "tag_filter" {
    for_each = var.tags
    content {
      key    = tag_filter.key
      values = [tag_filter.value]
    }
  }
}

data "aws_resourcegroupstaggingapi_resources" "dms_replication_subnet_group" {
  count    = contains(var.resources, "dms") ? 1 : 0

  resource_type_filters = ["dms:subgrp"]

  dynamic "tag_filter" {
    for_each = var.tags
    content {
      key    = tag_filter.key
      values = [tag_filter.value]
    }
  }
}

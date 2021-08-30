resource "aws_lb" "general" {
  name = var.name
  internal = var.internal
  load_balancer_type = var.load_balancer_type
  security_groups = var.security_groups
  //subnets = ["${aws_subnet.public.*.id}"]
  subnets = var.subnets
  enable_deletion_protection = var.enable_deletion_protection
  enable_cross_zone_load_balancing = var.enable_cross_zone_load_balancing
  //customer_owned_ipv4_pool = var.customer_owned_ipv4_pool //causing problems
  ip_address_type = var.ip_address_type
  
  //Application Load Balancer Settings (not Network LB)
  enable_http2 = var.enable_http2
  drop_invalid_header_fields = var.drop_invalid_header_fields
  idle_timeout = var.idle_timeout 

  access_logs {
    bucket  = var.access_logs_s3bucket
    prefix  = var.name
    enabled = var.access_logs_enabled
  }

////Please note that one of either subnets or subnet_mapping is required.
//  dynamic subnet_mapping {
//    for_each = var.subnet_mapping == null ? [] : list(var.subnet_mapping)
//    content {
//      subnet_id = var.subnet_id
//      allocation_id = var.allocation_id
//      private_ipv4_address = var.private_ipv4_address
//    }
//  }

  tags = var.tags
  
}

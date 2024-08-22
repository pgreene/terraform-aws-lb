variable "name" {
  description = "use naming module https://github.com/Voyanta/terraform-terraform-label"
  default = ""
}

variable "prefix" {
  default = null
}

variable "tags" {
  default = {}
}

variable "internal" {
  default = "false"
}

variable "load_balancer_type" {
  default = null
}

variable "security_groups" {
  description = "(Optional) A list of security group IDs to assign to the LB. Only valid for Load Balancers of type application."
  //default = []
  default = null
}

variable "subnets" {
  description = "(Optional) A list of subnet IDs to attach to the LB. Subnets cannot be updated for Load Balancers of type network. Changing this value for load balancers of type network will force a recreation of the resource."
  default = []
}

variable "enable_deletion_protection" {
  description = " (Optional) If true, deletion of the load balancer will be disabled via the AWS API. This will prevent Terraform from deleting the load balancer. Defaults to false."
  default = "false"
}

variable "enable_cross_zone_load_balancing" {
  description = "(Optional) If true, cross-zone load balancing of the load balancer will be enabled. This is a network load balancer feature. Defaults to false."
  default = "false"
}

variable "enable_http2" {
  description = "(Optional) Indicates whether HTTP/2 is enabled in application load balancers. Defaults to true."
  //default = "true"
  default = null
}

variable "access_logs_s3bucket" {
  default = ""
}

variable "access_logs_enabled" {
  default = "false"
}

variable "drop_invalid_header_fields" {
  default = null
}

variable "idle_timeout" {
  default = null
}

variable "ip_address_type" {
  default = null
}

variable "enable_waf_fail_open" {
  default = null
}

variable "desync_mitigation_mode" {
  default = null
}
// variable "subnet_mapping" {
//   default = null
// }

// variable "subnet_id" {
//   default = null
// }

// variable "allocation_id" {
//   default = null
// }

// variable "private_ipv4_address" {
//   default = null
// }


# General 

variable "database_name" {
  description = "The name of the database"
}

variable "username" {
  default     = "root"
  description = "The master username of the database"
}

# Engine 

variable "engine" {
  description = "Aurora database engine type, currently aurora, aurora-mysql or aurora-postgresql"
}

variable "engine_version" {
  description = "Aurora database engine version."
}

# Network

variable "vpc_id" {
  description = "The ID of the VPC where to place the cluster"
}

variable "subnets" {
  type        = "list"
  description = "The list of subnet IDs to use"
}

variable "allowed_security_groups" {
  type        = "list"
  description = "The security groups allowed to communicate with the cluster"
}

# Size

variable "instance_class" {
  default     = "db.t2.small"
  description = "The instance class to use for the cluster"
}

variable "replica_count" {
  description = "The number of reader nodes to create"
}

variable "apply_immediately" {
  default     = false
  description = "Determines whether or not any DB modifications are applied immediately, or during the maintenance window"
}

# Instance parameter group

variable "instance_parameter_group_name" {
  description = "The name of the parameter group to use"
  default     = ""
}

variable "create_instance_parameter_group" {
  description = "True to create a custom parameter group"
  default     = false
}

variable "instance_parameter_group_family" {
  description = "The custom parameter group's family"
  default     = ""
}

variable "instance_parameters" {
  description = "A list of DB parameter maps to apply to the custom parameter group"
  default     = []
}

# Cluster parameter group

variable "cluster_parameter_group_name" {
  description = "The name of the cluster parameter group to use"
  default     = ""
}

variable "create_cluster_parameter_group" {
  description = "True to create a custom cluster parameter group"
  default     = false
}

variable "cluster_parameter_group_family" {
  description = "The custom cluster parameter group's family"
  default     = ""
}

variable "cluster_parameters" {
  description = "A list of cluster parameter maps to apply to the custom cluster parameter group"
  default     = []
}

# Resource naming

variable "prefix_name" {
  description = "The prefix for the name of the resources"
  default     = "my"
}

variable "default_tags" {
  type        = "map"
  description = "The default tags to apply to the resoures"

  default = {
    Terraform = "true"
  }
}

variable "snapshot_identifier" {
  description = "DB snapshot to create this database from"
  default     = ""
}

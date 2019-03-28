locals {
  instance_parameter_group_name          = "${coalesce(var.instance_parameter_group_name, module.instance_parameter_group.id)}"
  enable_create_instance_parameter_group = "${var.instance_parameter_group_name == "" ? var.create_instance_parameter_group : 0}"

  cluster_parameter_group_name          = "${coalesce(var.cluster_parameter_group_name, module.cluster_parameter_group.id)}"
  enable_create_cluster_parameter_group = "${var.cluster_parameter_group_name == "" ? var.create_cluster_parameter_group : 0}"
}

module "cluster" {
  source  = "terraform-aws-modules/rds-aurora/aws"
  version = "1.9.0"

  name                            = "${var.prefix_name}-db"
  engine                          = "${var.engine}"
  engine_version                  = "${var.engine_version}"
  db_parameter_group_name         = "${local.instance_parameter_group_name}"
  db_cluster_parameter_group_name = "${local.cluster_parameter_group_name}"
  vpc_id                          = "${var.vpc_id}"
  subnets                         = "${var.subnets}"
  instance_type                   = "${var.instance_class}"
  replica_count                   = "${var.replica_count}"
  allowed_security_groups         = ["${var.allowed_security_groups}"]
  allowed_security_groups_count   = "${length(var.allowed_security_groups)}"
  apply_immediately               = "${var.apply_immediately}"
  database_name                   = "${var.database_name}"
  username                        = "${var.username}"
  tags                            = "${var.default_tags}"
}

module "instance_parameter_group" {
  source = "./modules/instance_parameter_group"

  create      = "${local.enable_create_instance_parameter_group}"
  prefix_name = "${var.prefix_name}"
  family      = "${var.instance_parameter_group_family}"
  parameters  = ["${var.instance_parameters}"]
  tags        = "${var.default_tags}"
}

module "cluster_parameter_group" {
  source = "./modules/cluster_parameter_group"

  create      = "${local.enable_create_cluster_parameter_group}"
  prefix_name = "${var.prefix_name}"
  family      = "${var.cluster_parameter_group_family}"
  parameters  = ["${var.cluster_parameters}"]
  tags        = "${var.default_tags}"
}

resource "aws_rds_cluster_parameter_group" "this" {
  count = "${var.create ? 1 : 0}"

  name      = "${var.prefix_name}-cluster-pg"
  family    = "${var.family}"
  parameter = ["${var.parameters}"]

  tags = "${var.tags}"

  lifecycle {
    create_before_destroy = true
  }
}

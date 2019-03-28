output "id" {
  description = "The cluster parameter group id"
  value       = "${element(split(",", join(",", aws_rds_cluster_parameter_group.this.*.id)), 0)}"
}

output "arn" {
  description = "The ARN of the cluster parameter group"
  value       = "${element(split(",", join(",", aws_rds_cluster_parameter_group.this.*.arn)), 0)}"
}

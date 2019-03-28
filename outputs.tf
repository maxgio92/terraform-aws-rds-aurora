output "this_rds_cluster_endpoint" {
  description = "The cluster endpoint"
  value       = "${module.cluster.this_rds_cluster_endpoint}"
}

output "this_rds_cluster_port" {
  description = "The port"
  value       = "${module.cluster.this_rds_cluster_port}"
}

output "this_rds_cluster_database_name" {
  description = "Name for an automatically created database on cluster creation"
  value       = "${var.database_name}"
}

output "this_rds_cluster_master_username" {
  description = "The master username"
  value       = "${module.cluster.this_rds_cluster_master_username}"
}

output "this_rds_cluster_master_password" {
  description = "The master password"
  value       = "${module.cluster.this_rds_cluster_master_password}"
}

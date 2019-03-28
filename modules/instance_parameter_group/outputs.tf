output "id" {
  description = "The instance parameter group id"
  value       = "${element(split(",", join(",", aws_db_parameter_group.this.*.id)), 0)}"
}

output "arn" {
  description = "The ARN of the instance parameter group"
  value       = "${element(split(",", join(",", aws_db_parameter_group.this.*.arn)), 0)}"
}

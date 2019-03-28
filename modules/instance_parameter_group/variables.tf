variable "create" {
  description = "Whether to create this resource or not?"
  default     = true
}

variable "prefix_name" {
  description = "Creates a unique name beginning with the specified prefix"
}

variable "family" {
  description = "The family of the instance parameter group"
}

variable "parameters" {
  description = "A list of instance parameter maps to apply"
  default     = []
}

variable "tags" {
  type        = "map"
  description = "A mapping of tags to assign to the resource"
  default     = {}
}

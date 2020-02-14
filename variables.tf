## RDS Subnet Group
variable "name_prefix" {
  description = "Creates a unique name beginning with the specified prefix."
}

variable "description" {
  description = "The description of the DB subnet group."
}

variable "subnet_ids" {
  description = "A list of VPC subnet IDs."
  type        = list(string)
}

## Tags
variable "tags" {
  description = "Resources Tags"
  type        = map(string)
}


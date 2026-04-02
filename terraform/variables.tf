# variables.tf
# variable "ami_id" {
#   description = "The AMI ID for the EC2 instance (Amazon Linux 2)"
#   type        = string
#   default     = null
# }


variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "odogwu1"
  type        = string
}

variable "root_volume_size" {
  description = "The size of the root volume in GB"
  type        = number
  default     = 20
}

variable "root_volume_type" {
  description = "The type of the root volume"
  type        = string
  default     = "gp2"
}
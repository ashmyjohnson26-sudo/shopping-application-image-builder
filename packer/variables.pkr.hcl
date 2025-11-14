variable "region" {
  description = " My aws region"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "My project name"
  type        = string
  default     = "zomato"
}

variable "project_environment" {
  description = "My project environment"
  type        = string
  default     = "production"
}

variable "ami_id" {
  description = "My ami id"
  type        = string
  default     = "ami-06fa3f12191aa3337"
}

variable "instance_type" {
  description = "My instance type"
  type        = string
  default     = "t2.micro"
}

locals {
  timestamp  = formatdate("YYYY-MM-DD-HH-mm", timestamp())
  image_name = "${var.project_name}-${var.project_environment}-${local.timestamp}"
}

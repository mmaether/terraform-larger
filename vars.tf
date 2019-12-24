variable "region" {
  default = "us-east-1"
}

variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "alb_name" {
  default = "Shorn Sheep ALB"
}

variable 
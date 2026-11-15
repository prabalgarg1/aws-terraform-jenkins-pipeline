variable "aws_region" {
  type        = string
  default     = "eu-north-1" # Aap apne zaroorat ke mutabiq region change kar sakte hain
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
}

variable "instance_name" {
  type        = string
  default     = "Jenkins-Automated-Server"
}

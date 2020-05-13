variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "eu-central-1"
}

variable "AMIS" {
  default = {
    eu-central-1 = "ami-3c15ca53"
  }
}
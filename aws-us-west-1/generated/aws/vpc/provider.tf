provider "aws" {
  region = "us-west-1"
}

terraform {
	required_providers {
		aws = {
	    version = "~> 3.70.0"
		}
  }
}

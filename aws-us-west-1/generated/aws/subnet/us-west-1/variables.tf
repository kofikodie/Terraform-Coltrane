data "terraform_remote_state" "vpc" {
  backend = "local"

  config = {
    path = "../../../../generated/aws/vpc/us-west-1/terraform.tfstate"
  }
}

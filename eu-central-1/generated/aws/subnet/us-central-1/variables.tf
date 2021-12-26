data "terraform_remote_state" "vpc" {
  backend = "local"

  config = {
    path = "../../../../generated/aws/vpc/us-central-1/terraform.tfstate"
  }
}

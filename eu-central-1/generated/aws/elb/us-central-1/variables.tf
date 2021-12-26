data "terraform_remote_state" "subnet" {
  backend = "local"

  config = {
    path = "../../../../generated/aws/subnet/us-central-1/terraform.tfstate"
  }
}

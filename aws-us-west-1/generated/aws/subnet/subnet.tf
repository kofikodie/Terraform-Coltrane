resource "aws_subnet" "tfer--subnet-2f55a249" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "172.31.16.0/20"
  map_customer_owned_ip_on_launch = "false"
  map_public_ip_on_launch         = "true"
  vpc_id                          = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-6db4b00a_id}"
}

resource "aws_subnet" "tfer--subnet-b69a99ed" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = "172.31.0.0/20"
  map_customer_owned_ip_on_launch = "false"
  map_public_ip_on_launch         = "true"
  vpc_id                          = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-6db4b00a_id}"
}

resource "aws_vpn_gateway" "vpn_gw" {
  vpc_id = var.vpc_id

  tags = {
    Name = "vpg-${join("",[for i in split("-",var.region): substr(i,0,1)])}-vpc-${join("",[for i in split("-",var.region): substr(i,0,1)])}-${var.env}-${var.customer_location}"
  }
}
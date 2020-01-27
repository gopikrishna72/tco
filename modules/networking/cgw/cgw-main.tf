resource "aws_customer_gateway" "cgw" {
  bgp_asn    = var.bgp_asn
  ip_address = var.ip_address
  type       = var.type

  tags = {
    Name = "cgw-${join("",[for i in split("-",var.region): substr(i,0,1)])}-vpc-${join("",[for i in split("-",var.region): substr(i,0,1)])}-${var.env}-${var.customer_name}"
  }
}
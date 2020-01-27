resource "aws_route" "r" {

  route_table_id            = "rtb-4fbb3ac4"
  destination_cidr_block    = "10.0.1.0/22"
  egress_only_gateway_id = "pcx-45ff3dc1"
  
}

resource "aws_route" "r" {

  route_table_id            = "rtb-4fbb3ac4"
  destination_cidr_block    = "10.0.1.0/22"
  gateway_id = "pcx-45ff3dc1"
  
}

resource "aws_route" "instance_id" {
  
  count = var.id ? 
  route_table_id            = "rtb-4fbb3ac4"
  destination_cidr_block    = "10.0.1.0/22"
  instance_id = "pcx-45ff3dc1"
  
}

resource "aws_route" "nat_gateway_id" {

  route_table_id            = "rtb-4fbb3ac4"
  destination_cidr_block    = "10.0.1.0/22"
  nat_gateway_id = "pcx-45ff3dc1"
  
}

resource "aws_route" "network_interface_id" {

  route_table_id            = "rtb-4fbb3ac4"
  destination_cidr_block    = "10.0.1.0/22"
  network_interface_id = "pcx-45ff3dc1"
  
}

resource "aws_route" "transit_gateway_id" {

  route_table_id            = "rtb-4fbb3ac4"
  destination_cidr_block    = "10.0.1.0/22"
  transit_gateway_id = "pcx-45ff3dc1"
  
}

resource "aws_route" "vpc_peering_connection_id" {

  route_table_id            = "rtb-4fbb3ac4"
  destination_cidr_block    = "10.0.1.0/22"
  vpc_peering_connection_id = 
  
}
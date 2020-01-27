resource "aws_subnet" "public_subnet" {

  for_each = var.public_subnets_cidr
  
  vpc_id     = var.vpc_id 
  cidr_block = each.value[2]
  availability_zone = each.value[1]
  
  tags = {
    Name = "subnet-${join("",[for i in split("-",each.value[1]): substr(i,0,1)])}-${split("-",each.value[1])[2]}-${var.route_type}-${each.value[0]}-${var.env}" 
  }
  
}
resource "aws_security_group" "public_sg" {
  
  /*locals {
    name = "security-grp-${join("",[for i in split("-",each.value[0]): substr(i,0,1)])}-${var.env}-${each.value[1]-${each.value[2]}}"
  }*/
  
  for_each = var.sg_meta_data
  #name = local.name
  vpc_id      = var.vpc_id
  
  tags = {
    Name =  "security-grp-${join("",[for i in split("-",each.value[0]): substr(i,0,1)])}-${var.env}-${each.value[1]}-${each.value[2]}"

  }
  
}
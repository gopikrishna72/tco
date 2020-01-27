resource "aws_security_group_rule" "rules" {

  for_each = var.sg_rules
  type            = each.value[0]
  from_port       = each.value[1]
  to_port         = each.value[2]
  protocol        = each.value[3]
  
  cidr_blocks = each.value[4]
  

  security_group_id = "${var.sg_info[each.value[5]].id}"
}
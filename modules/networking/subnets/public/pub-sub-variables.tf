variable "env" {

  type = string 
  
}
variable "route_type" {

  type = string
  
  default = "public"

}

variable "public_subnets_cidr" {

  type = map

}


variable "vpc_id"{

  type = string

}






variable "region" {
  
  type = string

}




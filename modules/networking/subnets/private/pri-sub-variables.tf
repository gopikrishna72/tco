variable "env" {

  type = string 
  
}
variable "route_type" {

  type = string
  
  default = "private"

}

variable "private_subnets_cidr" {

  type = map

}


variable "vpc_id" {

  type = string

}




variable "AZs" {
  
  type = list(string)
  default = ["a","b","c","d","e","f"]

}

variable "region" {
  
  type = string

}




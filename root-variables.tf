/*
variable "routes" {

  type = map
  default = {
    
	id_info = {
	
	  "gateway_id" = "test-id-1"
	  ""
	}
  
  }
  
  
}
*/
variable "sg_meta_data" {

  type = map
  default = {
    #sg name = [region,tier,appName]
    "public_sg" = ["us-east-1","app","tco-web"]
	"private_sg" = ["us-east-1","db","tco-db"]

   }
}

variable "sg_rules" {

  type = map
  default = {
    #rule_name = ["ingress/egress",from_port,to_port,protocol,cidr_blocks,sg_name]
    "rule1" = ["ingress",443,443,"tcp",["10.0.1.0/24","10.0.2.0/24"],"public_sg"]
    "rule2" = ["ingress",80,80,"tcp",["10.0.1.0/24","10.0.2.0/24"],"private_sg"]
	"rule3" = ["egress",0,0,"-1",["0.0.0.0/0"],"public_sg"]
	"rule4" = ["egress",0,0,"-1",["0.0.0.0/0"],"private_sg"]
	
  
  }

}



variable "environment" {

  type = string 

  default = "dev"

}


variable "vpc_cidr" {

  type = string
  
  default = "10.0.0.0/16"
  
}

variable "region" {

  type = string
  
  default = "eu-west-2"

}


variable "public_subnets_cidr" {
  
  type = map
  
  default= {
 
	  "subnet1"=["app","eu-west-2a","10.0.1.0/24"]
	  "subnet2"=["app","eu-west-2b","10.0.2.0/24"]
	  "subnet3"=["db","eu-west-2c","10.0.3.0/24"]
	
  }
}


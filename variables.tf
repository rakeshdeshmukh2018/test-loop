variable "subscription_id" {
  type        = string
  default     = "xxxx-xxxx-xxxx"
  description = "subsrption varibale for deploy workload. You can add in default or in terraform.varstf"
}

variable "rg_name" {

}


# Location variable 
#type is map. A map in Terraform is a key-value data structure that stores values associated with unique keys

variable "location" {
  type        = map(any)
  description = "Map of locations"

}

# CIDR range List for VNET
variable "cidr_range" {

  type = list(any)

}

# Subnet Varible with map type
variable "subnet_map" {
  type = map(any)

}

variable "subnet_map1" {
  type = map(any)

}
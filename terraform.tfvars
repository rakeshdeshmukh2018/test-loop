### Paste subscriptio ID 

subscription_id = "8a4dab15-fbf0-4518-9fe9-446c94b5283c"

# resource group name
rg_name = "rd-demo"


# Map of locations (key-value pair)
location = {

  apac = "eastasia"
  emea = "northeurope"
  amer = "eastus"

}

# VNET CIDR List

cidr_range = ["10.20.0.0/16", "10.30.0.0/16"]

subnet_map = {
  web_sub  = "10.20.1.0/24"
  app_sub  = "10.20.2.0/24"
  data_sub = "10.20.3.0/24"
  data1_sub1 = "10.20.4.0/24"

}


subnet_map1 = {
  web_sub  = "10.30.1.0/24"
  app_sub  = "10.30.2.0/24"
  data_sub = "10.30.3.0/24"
  data1_sub1 = "10.30.4.0/24"

}
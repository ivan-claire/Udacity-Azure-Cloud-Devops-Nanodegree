# Azure subscription vars
subscription_id = "xxxxxxxxxxxxxxxxxxxxxx"
client_id = "xxxxxxxxxxxxxxxx"
client_secret = "xxxxxxxxxxxxxxx"
tenant_id = "xxxxxxxxxxxxxxxxxxx"

# Resource Group/Location
location = "eastus"
resource_group = "udacityResources"
application_type = "webApp"

# Network
address_space = ["10.5.0.0/16"]
address_prefix_test = "10.5.1.0/24"

packer_image_id =  "/subscriptions/<id>/resourceGroups/udacityGroup/providers/Microsoft.Compute/images/webserverPackerImage"
vm_count = 2
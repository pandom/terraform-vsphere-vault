module "networks" {
  source  = "app.terraform.io/burkey/quickstart-module/nsx"
  version = "0.0.7"

  create_dhcp_server = true
  environment = var.environment
  private_subnets = [
    "10.0.23.0/28",
    "10.0.23.16/28",
    "10.0.23.32/28"
  ]
  public_subnets = [
    "10.0.23.48/28",
    "10.0.23.64/28",
    "10.0.23.80/28"
  ]
  

}

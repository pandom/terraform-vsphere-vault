module "networks" {
  source  = "app.terraform.io/burkey/quickstart-module/nsx"
  version = "0.0.7"

  create_dhcp_server = true
  environment = var.environment
  private_subnets = [
    "10.140.23.0/28",
    "10.140.23.16/28",
    "10.140.23.32/28"
  ]
  public14_subnets = [
    "10.140.23.48/28",
    "10.140.23.64/28",
    "10.140.23.80/28"
  ]
  

}

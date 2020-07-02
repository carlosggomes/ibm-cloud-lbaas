resource "ibm_lbaas" "lbaas" {
  name        = "cguarany-test2"
  description = "Load Balance created via Schematics - Terraform - multiple IP"
  subnets     = [1492041]
 # datacenter  = "dal13"

  protocols {
    frontend_protocol     = "HTTP"
    frontend_port         = 80
    backend_protocol      = "HTTP"
    backend_port          = 80
    load_balancing_method = "round_robin"
    
  }
}

resource "ibm_lbaas_server_instance_attachment" "lbaas_member" {
  count              = 1
  private_ip_address = "10.95.58.114"
  weight             = 40
  lbaas_id           = "${ibm_lbaas.lbaas.id}"
}

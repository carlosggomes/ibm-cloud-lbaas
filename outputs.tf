  
# virtual ip address of lbaas
output "vip" {
  value = http://ibm_lbaas.lbaas.vip
  
  # Version 0.11.x
  #  value = "http://${ibm_lbaas.lbaas.vip}"
}

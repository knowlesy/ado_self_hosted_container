
source "azure-arm" "basic" {
  azure_tags = {
    environment = "dev"
  }
  communicator                      = "winrm"
  image_offer                       = "WindowsServer"
  image_publisher                   = "MicrosoftWindowsServer"
  image_sku                         = "2016-Datacenter"
  location                          = "uksouth"
  managed_image_name                = "Windows_test_packer_image1"
  managed_image_resource_group_name = "TestRG-Terram"
  os_type                           = "Windows"
  #subscription_id                   = "aaaa-aaaa-aaaa-aaaa-aaaa-aaaa"
  use_azure_cli_auth                = "true"
  vm_size                           = "Standard_D2_v2"
  winrm_insecure                    = true
  winrm_timeout                     = "5m"
  winrm_use_ssl                     = true
  winrm_username                    = "packer"
}

build {
  sources = ["source.azure-arm.basic"]


}
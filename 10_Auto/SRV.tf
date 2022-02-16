
resource "vsphere_virtual_machine" "SRV" {

  name             = "SRV"
  resource_pool_id = data.vsphere_resource_pool.resource_pool.id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = 2
  memory   = 2048
  guest_id = "windows2019srv_64Guest"
  firmware = "efi"

  cpu_performance_counters_enabled = true
  cpu_hot_add_enabled              = true
  memory_hot_add_enabled           = true

  network_interface {
    network_id = data.vsphere_network.network_pg_rtrl.id

  }

  disk {
    label = "disk0"
    size  = 25
  }
  cdrom {
    datastore_id = data.vsphere_datastore.datastore.id
    path         = "ISO/WindowsServer_2019_x64_en-us.iso"
  }
  ####
  wait_for_guest_ip_timeout  = -1
  wait_for_guest_net_timeout = -1

}
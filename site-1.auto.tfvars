# Hyperflex Cluster
intersight_organization_name = "default"
cluster_name                 = "edge1"
disk_cleanup                 = "true"
vdi_opt                      = "false"
laz_config                   = "false"
#cluster_action = "Validate"
#cluster_action = "Deploy"

# Management Platform - for standard clusters enter false, for HX Edge clusters enter true
edge_cluster = "true"

# Network Policies
jumbo_frame = "false"

# Uplink speed, only needed for HX Edge clusters. Valid options are 1G or 10G.
uplink_speed = "10G"

# Replication Factor
replication = "2"

# HX Management IP
mgmt_vlan_name = "hx-mgmt-0"
mgmt_vlan_id   = "0"
hx_mgmt_ip     = "198.18.135.100"
hx_ip_start    = "198.18.135.103"
hx_ip_end      = "198.18.135.104"
hx_netmask     = "255.255.192.0"
hx_gateway     = "198.18.128.1"

# MAC prefix
mac_prefix = "00:25:B5:01"

# Storage VLAN
storage_vlan_name = "hx-storage-102"
storage_vlan_id   = "100"

# HXDP Version
hxdp_version = "5.0(2a)"

# UCSM Firmware Version
firmware_version = "4.1(2b)"

# HX password
hx_password = "CIsco123!!"

# ESXi admin account
esx_admin = "root"

# ESXi admin password
esx_password = "CIsco123!!"

# ESXi Management IP
node_prefix   = "hx-edge-esxi"
mgmt_ip_start = "198.18.135.101"
mgmt_ip_end   = "198.18.135.102"
mgmt_netmask  = "255.255.192.0"
mgmt_gateway  = "198.18.128.1"

# Time
timezone = "Etc/GMT"
ntp      = ["198.18.128.1"]

# DNS
dns_domain = "dcloud.cisco.com"
dns        = ["198.18.133.1"]

# UCSM KVM IP
kvm_ip_start = "198.18.135.116"
kvm_ip_end = "198.18.135.117"
kvm_netmask = "255.255.192.0"
kvm_gateway = "198.18.128.1"

# VCenter
vcenter_hostname   = "198.18.133.30"
vcenter_username   = "administrator@vsphere.local"
vcenter_password   = "C1sco12345!"
vcenter_datacenter = "dCloud-DC"

# VMotion
vmotion_vlan_name = "hx-vm-migration-103"
vmotion_vlan_id   = "103"

# Guest VM networks
vm_vlans = [
  {
    name                  = "vm-network-200",
    vlan_id               = "200"
    additional_properties = null
    class_id              = "hyperflex.NamedVlan"
    object_type           = "hyperflex.NamedVlan"
  },
  {
    name                  = "vm-network-201",
    vlan_id               = "201"
    additional_properties = null
    class_id              = "hyperflex.NamedVlan"
    object_type           = "hyperflex.NamedVlan"
  }
]

# FC Additional vHBAs
additional_vHBAs    = "false"
fc_vsan_a_name      = "vsan-10"
fc_vsan_a_id        = "10"
fc_vsan_b_name      = "vsan-20"
fc_vsan_b_id        = "20"
wwxn_prefix         = "20:00:00:25:B5:7F"
fc_wwxn_range_start = "20:00:00:25:B5:7F"
fc_wwxn_range_end   = "20:00:00:25:B5:7F"

# iSCSI Additional vNICs
additional_vNICs  = "false"
iscsi_vlan_a_name = "iscsi-110"
iscsi_vlan_a_id   = "110"
iscsi_vlan_b_name = "iscsi-111"
iscsi_vlan_b_id   = "111"

# Auto Support
auto_support_enable    = "true"
auto_support_recipient = "support@cisco.com"

# Proxy Server
proxy_enable   = "false"
proxy_hostname = "proxy.company.com"
proxy_port     = "80"
proxy_username = "proxy"
proxy_password = "password"


 server_names = {
  "WZP23300NU2" = { hostname = "hx-edge-esxi-01", esx_ip = "198.18.135.101", hx_ip = "198.18.135.103" },
  "WZP2330059G" = { hostname = "hx-edge-esxi-02", esx_ip = "198.18.135.102", hx_ip = "198.18.135.104" }
  }
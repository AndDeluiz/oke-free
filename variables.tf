# ----------> Compartment <----------

variable "compartment_name" {
  type    = string
  default = "k8s"
}

variable "region" {
  type    = string
  default = "sa-vinhedo-1"
}

# ---------->VM's----------

variable "shape" {
  type    = string
  default = "VM.Standard.A1.Flex"
}

variable "ocpus_per_node" {
  type    = number
  default = 1
}

variable "memory_in_gbs_per_node" {
  type    = number
  default = 6
}

# Link to a list of available images (Be sure to select the correct region and CPU architecture. We are using Oracle-Linux-8.8-aarch64-2023.09.26-0-OKE-1.28.2-653)
<<<<<<< HEAD
# https://docs.oracle.com/en-us/iaas/images/image/d4c060a5-041c-477b-8226-2d25d91c4ffb/
=======
# https://docs.cloud.oracle.com/iaas/images/
variable "image_id" {
  type    = string
  default = "ocid1.image.oc1.sa-vinhedo-1.aaaaaaaayhunnbhchmcgnefwfvvszci5z7zu2krbylf452dfecyyallfrb4q"
}
>>>>>>> e7fae5e (Alterada a região e imagem.)

# ----------> Cluster <----------
variable "k8s_version" {
  type    = string
  default = "v1.28.2"
}

variable "node_size" {
  type    = string
  default = "3"
}

variable "cluster_name" {
  type    = string
  default = "k8s-cluster"
}

# ----------> Network <----------

variable "vcn_name" {
  type    = string
  default = "k8s-vcn"
}

variable "vcn_dns_label" {
  type    = string
  default = "k8svcn"
}

# ----------> Load Balancer <----------

variable "load_balancer_name_space" {
  type    = string
  default = "loadbalancer"
}

variable "node_port_http" {
  type    = number
  default = 30080
}

variable "node_port_https" {
  type    = number
  default = 30443
}

variable "listener_port_http" {
  type    = number
  default = 80
}

variable "listener_port_https" {
  type    = number
  default = 443
}

# ----------> Auth <----------

variable "ssh_public_key" {
  type    = string
}

variable "fingerprint" {
  type    = string
}

variable "private_key_path" {
  type    = string
}

variable "tenancy_ocid" {
  type    = string
}

variable "user_ocid" {
  type    = string
}

variable "oci_profile" {
  type    = string
}

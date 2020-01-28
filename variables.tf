variable "space" {}
variable "org" {}
variable "region" {}
variable "region_short" {
  type        = "map"

  default = {
    "au-syd"   = "syd"
    "jp-tok"   = "tok"
    "eu-de"    = "fra"
    "eu-gb"    = "lon"
    "us-south" = "dal"
    "us-east"  = "wdc"
  }
}

variable "zones" {
  type        = "list"
  default     = ["dal10", "dal12","dal13"]
}

variable "zone_router_map_public" {
  type = "map"
  default = {
    "dal10" = "fcr01a.dal10"
    "dal12" = "fcr01a.dal12"
    "dal13" = "fcr01a.dal13"
  }
}

variable "zone_router_map_private" {
  type = "map"
  default = {
    "dal10" = "bcr01a.dal10"
    "dal12" = "bcr01a.dal12"
    "dal13" = "bcr01a.dal13"
  }
}



variable "team" {
  default = "poc"
}
 
variable "cloud_service"{
  default = "iks"
}

variable "service" { 
  default = "env"
}
variable "group" {
  default = "Default"
}

variable "machine_type" {
  default = "b2c.4x16"
}

variable "hardware" {
  default = "shared"
}

variable "pool_size" {
  default = "1"
}

variable "kube_version" {
  default = "1.13.7"
}

variable "update_all_workers" {
  default = "false"
}


variable "multizone_pool_name" {}
variable "multizone_machine_type" {}
variable "multizone_hardware" {}
variable "multizone_pool_size_per_zone" {}

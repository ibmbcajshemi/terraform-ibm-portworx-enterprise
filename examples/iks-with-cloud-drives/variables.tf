variable "region" {
  type    = string
  default = "us-east"
}

variable "iks_cluster_name" {
  type = string
}

variable "resource_group" {
  type = string
}

variable "ibmcloud_api_key" {
  description = "Get the ibmcloud api key from https://cloud.ibm.com/iam/apikeys"
  type        = string
  sensitive   = true
}
variable "use_cloud_drives" {
  type    = bool
  default = true
}

variable "classic_infra" {
  type    = bool
  default = false
}

variable "portworx_version" {
  type    = string
  default = "2.11.0"
}

variable "upgrade_portworx" {
  type    = bool
  default = false
}


variable "use_external_etcd" {
  type        = bool
  default     = false
  description = "Do you want to create an external_etcd? `true` or `false`"
}

variable "etcd_secret_name" {
  type        = string
  description = "The name of etcd secret certificate, required only when external etcd is used"
  default     = null
}

variable "external_etcd_connection_url" {
  type        = string
  description = "The connection string with port number for the etcd, required only when external etcd is used"
  default     = null
}

variable "pwx_plan" {
  description = "Portworx plan type "
  type        = string
  default     = "px-enterprise"
}

variable "secret_type" {
  description = "secret type"
  type        = string
  default     = "k8s"
}


variable "max_storage_node_per_zone" {
  type        = number
  description = "Maximum number of strorage nodes per zone"
  default     = 1
}

variable "num_cloud_drives" {
  type        = number
  description = "Number of cloud drives per zone"
  default     = 1
}

variable "cloud_drives_sizes" {
  type        = list(number)
  description = "Size of Cloud Drive in GB, ex: [50, 60, 70]"
  default     = [100]
}

variable "storage_classes" {
  type        = list(string)
  description = "Storage Classes for each cloud drive"
  default     = ["ibmc-vpc-block-10iops-tier"]
}

variable "csi" {
  type        = bool
  description = "Enable CSI, `true` or `false`"
  default     = false
}

variable "portworx_service_name" {
  type        = string
  description = "Name to be provided to the portworx cluster to be deployed"
  default     = "portworx-service"
}

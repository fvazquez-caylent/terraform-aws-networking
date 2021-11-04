variable "ingress_cidr_blocks" {
  type        = list(string)
  description = "The cidr range that will be accessing the tamr vm"
  default     = ["0.0.0.0/0"]
}

variable "tls_certificate_arn" {
  type        = string
  description = "The tls certificate ARN"
}

variable "availability_zones" {
  type        = list(string)
  description = "The list of availability zones where we should deploy resources"
}

variable "tamr_unify_port" {
  type        = string
  description = "Identifies the default access HTTP port"
  default     = "9100"
}

variable "tamr_dms_port" {
  type        = string
  description = "Identifies the DMS access HTTP port"
  default     = "9155"
}

variable "enable_dms" {
  type        = bool
  description = "Enabled the DMS proxying on the port specified in tamr_dms_port"
  default     = true
}

variable "tamr_dms_hosts" {
  type        = list(string)
  description = "Specify list of host headers to use in host based routing"
  default     = ["dms.*.*"]
}

variable "ami_id" {
  type        = string
  description = "The AMI to use for the tamr vm"
  default     = ""
}

variable "name-prefix" {
  type        = string
  description = ""
  default     = "tamr-"
}

variable "key_pair" {
  type = string
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to add to all resources."
  default = {
    "Name" : "tamr-vpc"
    "application" : "tamr",
    "Terraform" : "true"
  }
}
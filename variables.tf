variable "bucket_name" {
  type = string
  validation {
    condition = (
      length(var.bucket_name) <= 60
    )
    error_message = "The no.of VM's should less than or equal to 5."
  }
}

variable "acl" {
  type = string
}

variable "force_destroy" {
  type = bool
}

variable "object_lock_enabled" {
  type = bool
}

variable "tags" {
  type = object({})
}

variable "enable_logging" {
  type    = bool
  default = false
}

variable "loging_target_prefix" {
  type    = string
  default = "logs/"
}

variable "enable_versioning" {
  type    = bool
  default = false
}

variable "environment" {
  type = string
}

variable "project_name" {
  type = string
}

variable "costcode" {
  type = string
}
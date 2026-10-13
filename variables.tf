variable "project_network" {
  description = "Name of the existing project network. Required so the VM is attached to the intended network."
  type        = string
}

variable "name_prefix" {
  description = "Prefix used to name the VM and its related resources."
  type        = string
  default     = "web"
}

variable "ssh_public_key_path" {
  description = "Path to your SSH public key file; the private key should never be uploaded."
  type        = string
}

variable "ssh_allowed_cidr" {
  description = "IPv4 CIDR range allowed to connect by SSH. Required to avoid accidentally exposing SSH to an unintended range."
  type        = string

  validation {
    condition     = can(cidrnetmask(var.ssh_allowed_cidr))
    error_message = "ssh_allowed_cidr must be a valid IPv4 CIDR, such as 203.0.113.7/32."
  }
}

variable "image_name" {
  description = "OpenStack image name to use for the VM (use the image specified in step 6)."
  type        = string
}

variable "flavor_name" {
  description = "OpenStack flavor name to use for the VM (use the flavor specified in step 6)."
  type        = string
}

variable "student_name" {
  description = "Name shown on the VM's web page. Required to avoid silently deploying with a placeholder identity."
  type        = string
}

variable "page_message" {
  description = "Message displayed on the VM's web page."
  type        = string
  default     = "Hello from my OpenStack VM!"
}
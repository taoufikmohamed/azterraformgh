variable "resource_group_name" {
  description = "The name of your Azure Resource Group."
  default     = "default-rg"
}

variable "prefix" {
  description = "This prefix will be included in the name of some resources."
  default     = "tf01"
}
variable "subscription" {
  description = "Subscription Id to be used."
  default     = ""
}
variable "tenant" {
  description = "tenant Id to be used."
  default     = ""
}
variable "client" {
  description = "App Id to be used."
  default     = ""
}
variable "clientsecret" {
  description = "Client secret to be used."
  default     = ""
}
variable "location" {
  type        = string
  description = "The region where the virtual network is created."
  default     = "west Europe"
}
variable "secret_name" {
  type        = string
  description = "Secret in keyvault."
  default     = "def-sec"
}
variable "secret_value" {
  type        = string
  description = "Value Secret in keyvault."
  default     = "def-sec"
  sensitive   = true
}
variable "secret_valuespdlsec" {
  type        = string
  description = "Value Secret in keyvault."
  default     = "def-sec"

}

variable "sec_tenant" {
  type        = string
  description = "Secret in keyvault."
  default     = "deftenant"
}
variable "client_secret" {
  type        = string
  description = "Secret in keyvault."
  default     = "defclientsecret"
}


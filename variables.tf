variable "resource_group_name" {
  description = "(Required) Resource group for automation account"
}

variable "auto_name" {
    description = "(Required) Name for the automation account"
}

variable "location" {
    description = "(Required) Location for the automation acount"
}

variable "tags" {
    description = "(Required) Tags for the automation account"
}  

variable "la_workspace_id" {
  description = "(Required) Log Analytics Repository"
}
variable "diagnostics_map" {
 description = "(Required) Map with the diagnostics settings."
}

variable "opslogs_retention_period" {
  description = "(Optional) Number of days to keep operations logs inside storage account"
  default = 60
}
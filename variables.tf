variable "resource_group_name" {
  description = "Resource group for automation account"
}

variable "auto_name" {
    description = "Name for the automation account"
  
}

variable "location" {
    description = "Location for the automation acount"
}

variable "tags" {
    description = "Tags for the automation account"
}  


variable "la_workspace_id" {
  
}
variable "diagnostics_map" {
 description = "map with the diagnostics"
}

variable "opslogs_retention_period" {
  description = "(Optional) Number of days to keep operations logs inside storage account"
  default = 60
}
# Creates an Azure Automation Account
Creates an Azure Automation Account


Reference the module to a specific version (recommended):
```
module "automation" {
    source                  = "git://github.com/aztfmod/automation.git?ref=v0.1"
  
    auto_name               = var.auto_account
    resource_group_name     = var.rg
    location                = var.location["region1"] 
    tags                    = var.tags
    la_workspace_id         = var.log_analytics_workspace.id
    diagnostics_map         = var.diagnostics_map
}
```

Or get the latest version
```
module "automation" {
    source                  = "git://github.com/aztfmod/automation.git?ref=latest"
  
    auto_name               = var.auto_account
    resource_group_name     = var.rg
    location                = var.location["region1"] 
    tags                    = var.tags
    la_workspace_id         = var.log_analytics_workspace.id
    diagnostics_map         = var.diagnostics_map
}
```

# Parameters
## auto_name
(Required) Name for the automation account
```
variable "auto_name" {
    description = "(Required) Name for the automation account"
}

```
Example
```
auto_name = "myautomation"
```

## resource_group_name
(Required) Name of the resource group to deploy the automation account.
```
variable "resource_group_name" {
  description = "(Required) Resource group for automation account"
}
```
Example
```
resource_group_name = "operations-rg"
```

## location
(Required) Define the region where the ASR vault will be created.
```

variable "location" {
  description = "(Required) Define the region where the ASR vault will be created"
  type        = string
}
```
Example
```
    location    = "southeastasia"
```

## tags
(Required) Map of tags for the deployment
```
variable "tags" {
  description = "(Required) map of tags for the deployment"
}
```
Example
```
tags = {
    environment     = "DEV"
    owner           = "Arnaud"
    deploymentType  = "Terraform"
  }
```

## opslogs_retention_period
(Optional) Number of days to keep operations logs inside storage account
```
variable "opslogs_retention_period" {
  description = "(Optional) Number of days to keep operations logs inside storage account"
  default = 60
}
```
Example
```
opslogs_retention_period = 180
```

## la_workspace_id
(Required) Log Analytics Repository ID
```
variable "la_workspace_id" {
  description = "Log Analytics Repository"
}
```
Example
```
la_workspace_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/arnaud-hub-operations/providers/microsoft.operationalinsights/workspaces/mylalogs"
```

## diagnostics_map
(Required) Map with the diagnostics repository information"
```
variable "diagnostics_map" {
 description = "(Required) Map with the diagnostics repository information"
}
```
Example
```
  diagnostics_map = {
      diags_sa      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/arnaud-hub-operations/providers/Microsoft.Storage/storageAccounts/opslogskumowxv"
      eh_id         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/arnaud-hub-operations/providers/Microsoft.EventHub/namespaces/opslogskumowxv"
      eh_name       = "opslogskumowxv"
  }
```



# Output
## id
Returns the automation account id.

output "id" {
  value = azurerm_automation_account.auto_account.id
}
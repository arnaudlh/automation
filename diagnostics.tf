resource "azurerm_monitor_diagnostic_setting" "diagnostics_auto" {
    name                            = "diag-${azurerm_automation_account.auto_account.name}"
    target_resource_id              = "${azurerm_automation_account.auto_account.id}"
    eventhub_name                   = "${var.diagnostics_map.eh_name}"
    eventhub_authorization_rule_id  = "${var.diagnostics_map.eh_id}/authorizationrules/RootManageSharedAccessKey"
    log_analytics_workspace_id      = "${var.la_workspace_id}"
    storage_account_id              = "${var.diagnostics_map.diags_sa}"
    
    log {
            category    = "JobLogs"
            enabled     = true
            retention_policy {
                days    = 90
                enabled = true
            }
        }
    log {
            category    = "JobStreams"
            enabled     = true
            retention_policy {
                days    = 90
                enabled = true
            }
        }
    log {
            category    = "DscNodeStatus"
            enabled     = true
            retention_policy {
                days    = 90
                enabled = true
            }
        }
 
    metric {
            category = "AllMetrics"

            retention_policy {
                days    = 90
                enabled = true
      
                 }
        }

}
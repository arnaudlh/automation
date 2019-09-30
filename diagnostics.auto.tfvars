#diagnostics settings for automation object
diagnostics_settings = {
    log = [
                # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period] 
                ["JobLogs", true, true, 30],
                ["JobStreams", true, true, 30],
                ["DscNodeStatus", true, true, 30],
        ]
    metric = [
                # ["Category name",  "Metric Enabled(true/false)", "Retention Enabled(true/false)", Retention_period] 
                ["AllMetrics", true, true, 30],
    ]
}
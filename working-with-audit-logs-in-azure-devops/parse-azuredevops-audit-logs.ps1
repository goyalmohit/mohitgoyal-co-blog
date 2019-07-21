# This code parse the audit logs exported from azure devops and saved as file auditlog.json

function Parse-AzureDevOpsAuditLogs {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [string] $Path
    )

    Begin {
        Write-Verbose "In Begin Block: Parse-AzureDevOpsAuditLogs"
    }

    Process{
        Write-Verbose "In Process Block: Parse-AzureDevOpsAuditLogs"

        if (!(Test-Path $Path)){
            Write-Host "The mentioned file: $Path not found."
            return
        }

        $auditLogs = Get-Content -Path $Path | ConvertFrom-Json
        
        Write-Host "Timestamp `t ScopeType `t ProjectName `t IpAddress `t Details `t Area `t CategoryDisplayName"

        foreach($auditlog in $auditLogs){
            Write-Host "$($auditLog.Timestamp) `t $($auditLog.ScopeType) `t $($auditLog.ProjectName) `t $($auditLog.IpAddress) `t $($auditLog.Details) `t $($auditLog.Area) `t $($auditLog.CategoryDisplayName)"
        }
    }

    End {
        Write-Verbose "In End Block: Parse-AzureDevOpsAuditLogs"
    }
}

Parse-AzureDevOpsAuditLogs -Path .\auditLog.json

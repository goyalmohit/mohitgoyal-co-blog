# Gets the Azure DevOps logs using the REST API

Function Get-AzureDevOpsAuditLogs {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [String] $OrganizationName,

        [Parameter(Mandatory=$false)]
        [ValidateNotNullOrEmpty()]
        [String] $OutFilePath = "auditlogs.json",

        [Parameter(Mandatory=$false,ParameterSetName='TimeRange')]
        [ValidateNotNullOrEmpty()]
        [String] $StartTime,

        [Parameter(Mandatory=$false,ParameterSetName='TimeRange')]
        [ValidateNotNullOrEmpty()]
        [String] $EndTime
    )

    Begin {
        Write-Verbose "In Begin Block: Get-AzureDevOpsAuditLogs()"
        $pat = Get-Content -Path ".\.token"
        $user = ""
        $base64AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(("{0}:{1}" -f $user,$pat)))

    }
    
    Process{
        Write-Verbose "In Process Block: Get-AzureDevOpsAuditLogs()"

        $url = ""
        if ($StartTime -or $EndTime){
            $url = "https://auditservice.dev.azure.com/$($OrganizationName)/_apis/audit/downloadlog?format=$($LogType)&startTime=$($StartTime)&endTime=$($EndTime)&api-version=5.1-preview.1"
        }
        else{
            $url = "https://auditservice.dev.azure.com/$($OrganizationName)/_apis/audit/downloadlog?format=$($LogType)&api-version=5.1-preview.1"
        }
        
        Invoke-RestMethod -Uri $url -Method GET -ContentType "application/json" -Headers @{Authorization=("Basic {0}" -f $base64AuthInfo)} -OutFile $OutFilePath

    }

    End {
        Write-Verbose "In End Block: Get-AzureDevOpsAuditLogs()"
    }

}

Get-AzureDevOpsAuditLogs -OrganizationName {organization-name}
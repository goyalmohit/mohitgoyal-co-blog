# Install from PowerShell Gallery via PowerShellGet
Install-Module -Name Az.PolicyInsights

# Import the downloaded module
Import-Module Az.PolicyInsights -Verbose

# Login with Connect-AzAccount if not using Cloud Shell
Connect-AzAccount
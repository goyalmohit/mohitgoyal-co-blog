Function Get-Sum {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [int] $Number1,

        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [int] $Number2
    )

    Begin {
        Write-Verbose "Inside Begin Block: Get-Sum"
    }

    Process{
        Write-Verbose "Inside process block: Get-Sum"
        Write-Verbose "Adding both numbers: $Number1 and $Number2"
        $Sum = $Number1 + $Number2
        return $Sum
    }
    
    end {
        Write-Verbose "In end block: Get-Sum"
    }
}

# calls function without using verbose parameter
Write-host "Calling Get-Sum without using verbose parameter"
Get-Sum -Number1 10 -Number2 7

# calls function with using verbose parameter
Write-Host "Calling Get-Sum with using verbsose parameter"
Get-Sum -Number1 10 -Number2 7 -Verbose
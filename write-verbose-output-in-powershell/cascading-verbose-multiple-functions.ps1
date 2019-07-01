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

Function Get-Difference {
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
        Write-Verbose "Inside Begin Block: Get-Difference"
    }

    Process{
        Write-Verbose "Inside process block: Get-Difference"
        Write-Verbose "Subtracting both numbers: $Number1 and $Number2"
        $Diff = $Number1 - $Number2
        return $Diff
    }
    
    end {
        Write-Verbose "In end block: Get-Difference"
    }
}


Function Get-SumandDifference {
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
        Write-Verbose "Inside Begin Block: Get-SumandDifference"
    }

    Process{
        Write-Verbose "Inside process block: Get-SumandDifference"
        $Sum = Get-Sum -Number1 $Number1 -Number2 $Number2
        $Diff = Get-Difference -Number1 $Number1 -Number2 $Number2
        Write-Host "Sum: $Sum"
        Write-Host "Diff: $Diff"
    }
    
    end {
        Write-Verbose "In end block: Get-SumandDifference"
    }
}



# calls function without using verbose parameter
Write-host "Calling Get-SumandDifference without using verbose parameter"
Get-SumandDifference -Number1 10 -Number2 7

# calls function with using verbose parameter
Write-Host "Calling Get-SumandDifference with using verbsose parameter"
Get-SumandDifference -Number1 10 -Number2 7 -Verbose
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
        Write-Verbose "In Begin Block: Get-PersonDetails"
        $Sum = 0
    }
    Process{
        Write-Verbose "In Process Block: Get-PersonDetails"
        $Sum = $Number1 + $Number2
    }
    End{
        Write-Verbose "In End Block: Get-PersonDetails"
        return $Sum
    }
}

$Sum = 0
$Sum = Get-Sum -Number1 5 -Number2 7
Write-Host $Sum
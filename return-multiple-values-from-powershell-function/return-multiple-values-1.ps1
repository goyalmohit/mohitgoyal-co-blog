Function Get-PersonDetails {
    Begin {
        Write-Verbose "In Begin Block: Get-PersonDetails"
        $PersonName = @()
        $PersonAge = @()
    }
    Process{
        Write-Verbose "In Process Block: Get-PersonDetails"
        $PersonName = "Keith", "Eddy", "Kevin", "Kate"
        $PersonAge = 29, 34, 23, 15
    }
    End{
        Write-Verbose "In End Block: Get-PersonDetails"
        return $PersonName, $PersonAge
    }
}

$PersonName = @()
$PersonAge = @()
$PersonName, $PersonAge = Get-PersonDetails
foreach($item in 0..3){
    Write-Host "$($PersonName[$item]) is $($PersonAge[$item]) years old"
}
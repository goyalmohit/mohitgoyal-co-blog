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
        $PersonName
        $PersonAge
    }
}

$PersonName = @()
$PersonAge = @()
$returnedData = Get-PersonDetails
$PersonName = $returnedData[0], $returnedData[1], $returnedData[2], $returnedData[3]
$PersonAge = $returnedData[4], $returnedData[5], $returnedData[6], $returnedData[7]
foreach($item in 0..3){
    Write-Host "$($PersonName[$item]) is $($PersonAge[$item]) years old"
}
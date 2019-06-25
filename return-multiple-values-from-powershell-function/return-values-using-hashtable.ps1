Function Get-PersonDetails {
    Begin {
        Write-Verbose "In Begin Block: Get-PersonDetails"
        [hashtable] $PersonDetails = @{}
    }
    Process{
        Write-Verbose "In Process Block: Get-PersonDetails"
        $PersonDetails = @{Keith=29; Eddy=24; Kevin=23; Kate=15}
    }
    End{
        Write-Verbose "In End Block: Get-PersonDetails"
        return $PersonDetails
    }
}
    
[hashtable] $PersonDetails = @{}
$PersonDetails = Get-PersonDetails
foreach($key in $PersonDetails.Keys){
    Write-Host "$key is $($PersonDetails[$key]) years old"
}
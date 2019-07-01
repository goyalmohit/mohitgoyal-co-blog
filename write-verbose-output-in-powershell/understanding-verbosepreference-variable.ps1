Write-Output 'Understand how $PreferenceVariable controls verbose output'

# prints current value of $verbosepreference
Write-Host "VerbosePreference is set to: $VerbosePreference"

# understanding how $VerbosePreference controls the verbose output
# case 1: set to bypass verbose stream
$VerbosePreference = "SilentlyContinue"
Write-Host "VerbosePreference is set to: $VerbosePreference"
Write-Verbose -message "This line will not be shown"
Write-Verbose -message "This line will be shown" -Verbose

# case 2: set to output verbose stream
$VerbosePreference = "Continue"
Write-Host "VerbosePreference is set to: $VerbosePreference"
Write-Verbose -message "This line will be shown"
Write-Verbose -message "This line will not be shown" -Verbose:$false

# remember to set the default value again
$VerbosePreference = "SilentlyContinue"
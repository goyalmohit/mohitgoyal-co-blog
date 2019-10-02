# Login into Azure Account
Connect-AzAccount

# Import Policy definition from GitHub
$definition = New-AzPolicyDefinition -Name "audit-resourceGroup-tags" -DisplayName "Audit resource groups missing tags" -Description "Audit resource groups that doesn't have particular tag" -Policy 'https://raw.githubusercontent.com/Azure/azure-policy/master/samples/ResourceGroup/audit-resourceGroup-tags/azurepolicy.rules.json' -Parameter  'https://raw.githubusercontent.com/Azure/azure-policy/master/samples/ResourceGroup/audit-resourceGroup-tags/azurepolicy.parameters.json' -Mode All

# Defining Policy Scope - Subscription Scope
$scope = '/subscriptions/{subscription-id}'

# Create Assignment for the policy
$assignmentName = 'audit-resourceGroup-tags'
$assignment = New-AzPolicyAssignment -Name $assignmentName -Scope $scope  -tagName {tag-name} -PolicyDefinition $definition

# View Assignment
$assignment
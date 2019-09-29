# Access Overall Policy Compliance State
Get-AzPolicyStateSummary

# Gets latest policy state records generated in the last day for all resources within the subscription in current session context
Get-AzPolicyState

# Gets latest policy state records generated in the last day for all resources within the specified management group.
Get-AzPolicyState -ManagementGroupName "myManagementGroup"

# Gets latest policy state records generated in the last day for all resources within the specified subscription (in current session context)
Get-AzPolicyState -SubscriptionId "mySubscriptionId"

# Gets latest policy state records generated in the last day for all resources within the specified subsc
Get-AzPolicyState -SubscriptionId {subscriptionId} | Where-Object {$_.PolicyAssignmentName -eq {policyAssignmentName} }
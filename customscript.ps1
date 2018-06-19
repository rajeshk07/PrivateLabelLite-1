Write-Output "hellorajesh**************";
Requires -Module AzureRM.Resources
# Make outputs from resource group deployment available to subsequent tasks
Write-Output $outputs.branch.Value;


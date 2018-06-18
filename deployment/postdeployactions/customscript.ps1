Write-Host "hellorajesh**************";
Requires -Module AzureRM.Resources
# Make outputs from resource group deployment available to subsequent tasks
Write-Host $outputs.branch.Value;


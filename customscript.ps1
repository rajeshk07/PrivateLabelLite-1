Write-Host "hellorajesh**************";
# Make outputs from resource group deployment available to subsequent tasks
Write-Host $outputs.branch.Value

param ([string]$resourceGroup)
$outputs = (Get-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroup | Select -Last 1).Outputs
$outputs.Keys | % { Write-Host ("##vso[task.setvariable variable="+$_+";]"+$outputs.branch.Value) }



#Requires -Version 3.0

Write-Output "hellorajesh**************";


gci env:* | sort-object name;

Get-ChildItem Env:WEBSITE_SITE_NAME;

#Get-AzureRmResourceGroup -Name "$env:WEBSITE_SITE_NAME";
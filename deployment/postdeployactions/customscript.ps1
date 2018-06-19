Write-Output "hellorajesh**************";

gci env:* | sort-object name;

sitename = Get-ChildItem Env:WEBSITE_RESOURCE_GROUP

Get-AzureRmResourceGroup -Name "EngineerBlog"


Get-ChildItem Env:SQLCONNSTR_DefaultConnection

Write-Output $SQLCONNSTR_DefaultConnection;
# Make outputs from resource group deployment available to subsequent tasks
Write-Output $outputs;
Write-Output $outputs.branchCode.Value;

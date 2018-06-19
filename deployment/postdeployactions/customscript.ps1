Write-Output "hellorajesh**************";

gci env:* | sort-object name;
Write-Output $SQLCONNSTR_DefaultConnection;
# Make outputs from resource group deployment available to subsequent tasks
Write-Output $outputs;
Write-Output $outputs.branchCode.Value;

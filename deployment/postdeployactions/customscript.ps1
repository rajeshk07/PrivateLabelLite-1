#Requires -Version 3.0

Write-Output "hellorajesh**************";
try {
    [Microsoft.Azure.Common.Authentication.AzureSession]::ClientFactory.AddUserAgent("VSAzureTools-$UI$($host.name)".replace(' ','_'), '3.0.0')
} catch { }



gci env:* | sort-object name;

Get-ChildItem Env:WEBSITE_SITE_NAME;
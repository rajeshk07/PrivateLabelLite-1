Write-Host "hellorajesh**************";
#Login-AzureRmAccount;
#Get-AzureRmResourceGroupDeployment -ResourceGroupName testliteapp13;

#Requires -Module AzureRM.Resources
Param(
   [string] [Parameter(Mandatory=$true)] $ResourceGroupLocation,
   [string] [Parameter(Mandatory=$true)] $ResourceGroupName,
   [string] [Parameter(Mandatory=$false)] $MobileAppRepositoryUrl = $null
)

# Variables
[string] $TemplateFile = '..\azuredeploy.json'
[string] $ParametersFile = '..\ARM\azuredeploy.params.json'

Import-Module Azure -ErrorAction Stop

$TemplateFile = [System.IO.Path]::Combine($PSScriptRoot, $TemplateFile)
$ParametersFile = [System.IO.Path]::Combine($PSScriptRoot, $ParametersFile)

write-Output $ResourceGroupName

# verify if user is logged in by querying his subscriptions.
# if none is found assume he is not
Write-Output ""
Write-Output "**************************************************************************************************"
Write-Output "* Retrieving Azure subscription information..."
Write-Output "**************************************************************************************************"
try
{
	$Subscriptions = Get-AzureRmSubscription
	if (!($Subscriptions)) {
		Login-AzureRmAccount 
	}
}
catch
{
    Login-AzureRmAccount 
}

# fail if we still can retrieve any subscription
$Subscriptions = Get-AzureRmSubscription
if (!($Subscriptions)) {
    Write-Host "Login failed or there are no subscriptions available with your account." -ForegroundColor Red
    Write-Host "Please logout using the command azure Remove-AzureAccount -Name [username] and try again." -ForegroundColor Red
    exit
}
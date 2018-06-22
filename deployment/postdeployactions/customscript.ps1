#Requires -Version 3.0
gci env:* | sort-object name;

$srvsql = $env:APPSETTING_key1;
$usrsql = $env:APPSETTING_key2;
$psdsql = $env:APPSETTING_key3;

$webConfig = '$env:HOME\site\wwwroot\Web.config'
$doc = (Get-Content $webConfig) -as [Xml]

$root = $doc.get_DocumentElement();
$myConString = $root.connectionStrings.add | ? {$_.name -eq 'PLLConnection'}
$newCon = $myConString.connectionString.Replace('Server=','Server='$srvsql);
$myConString.connectionString = $newCon
 
$doc.Save($webConfig)
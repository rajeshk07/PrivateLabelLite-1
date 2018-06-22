#Requires -Version 3.0
gci env:* | sort-object name;

$srvsql = $env:APPSETTING_key1;
$usrsql = $env:APPSETTING_key2;
$psdsql = $env:APPSETTING_key3;

$webConfig = 'D:\HOME\site\wwwroot\Web.config'
$doc = (Get-Content $webConfig) -as [Xml]

$root = $doc.get_DocumentElement();
$pllConString = $root.connectionStrings.add | ? {$_.name -eq 'PLLConnection'}
$pllnewCon = $pllConString.connectionString.Replace('Server=;Initial Catalog=;Persist Security Info=False;User ID=;Password=;','Server='+$srvsql+';Initial Catalog=pwadb;Persist Security Info=False;User ID='+$usrsql+';Password='+$psdsql+';');
$pllConString.connectionString = $pllnewCon


$PrivateLabelConString = $root.connectionStrings.add | ? {$_.name -eq 'PrivateLabelLiteDataEntities'}
$newPrivateLabelConString = $PrivateLabelConString.connectionString.Replace('data source=;initial catalog=plltest;User ID=;Password=','data source='+$srvsql+';Initial Catalog=pwadb;User ID='+$usrsql+';Password='+$psdsql);
$PrivateLabelConString.connectionString = $newPrivateLabelConString
 
$doc.Save($webConfig)

  
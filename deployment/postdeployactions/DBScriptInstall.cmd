
SQLCMD -S %APPSETTING_key1% -d pwadb -U %APPSETTING_key2% -P %APPSETTING_key3% -i "D:\home\site\wwwroot\DBScripts\Database_Schema.sql" -o "D:\home\LogFiles\kudu\deployment\DB_Schema_OutputLog.txt" -b

IF %ERRORLEVEL% == 1 (
ECHO THERE WAS AN ERROR - to file >> D:\home\LogFiles\kudu\deployment\DB_Schema_OutputLog.txt
ECHO THERE WAS AN ERROR - on screen)

SQLCMD -S %APPSETTING_key1% -d pwadb -U %APPSETTING_key2% -P %APPSETTING_key3% -i "D:\home\site\wwwroot\DBScripts\config_data.sql" -o "D:\home\LogFiles\kudu\deployment\Config_Data_OutputLog.txt" -b
IF %ERRORLEVEL% == 1 (
ECHO THERE WAS AN ERROR - to file >> D:\home\LogFiles\kudu\deployment\Config_Data_OutputLog.txt
ECHO THERE WAS AN ERROR - on screen)

SET APPSETTING_key7=rajesh.kareti@techdata.com

SET whereClause='AllowedResellers'

sqlcmd -S %APPSETTING_key1% -d pwadb -U %APPSETTING_key2% -P %APPSETTING_key3% -Q "UPDATE [dbo].[Configs] SET Value =%APPSETTING_key7% WHERE Key=\"AllowedResellers\"" -o "D:\home\LogFiles\kudu\deployment\Update_OutputLog.txt" -b


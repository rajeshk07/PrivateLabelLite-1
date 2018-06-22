
SET "SERVER"=%APPSETTING_key1%
SET "DB"="pwadb"
SET "LOGIN"=%APPSETTING_key2%
SET "PASSWORD=%APPSETTING_key3%
SET "INPUT1"=D:\home\site\wwwroot\scripts\Database_Schema.sql
SET "OUTPUT1"=D:\home\site\wwwroot\scripts\DB_Schema_OutputLog.txt
SQLCMD -S %SERVER% -d %DB% -U %LOGIN% -P %PASSWORD% -i %INPUT1% -o %OUTPUT1% -b
IF %ERRORLEVEL% == 1 (
ECHO THERE WAS AN ERROR - to file >> %OUTPUT%
ECHO THERE WAS AN ERROR - on screen)


SET "INPUT2"=D:\home\site\wwwroot\scripts\config_data.sql
SET "OUTPUT"=D:\home\site\wwwroot\scripts\Config_Data_OutputLog.txt
SQLCMD -S %SERVER% -d %DB% -U %LOGIN% -P %PASSWORD% -i %INPUT2% -o %OUTPUT2% -b
IF %ERRORLEVEL% == 1 (
ECHO THERE WAS AN ERROR - to file >> %OUTPUT%
ECHO THERE WAS AN ERROR - on screen)

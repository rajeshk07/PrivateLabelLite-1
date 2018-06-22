

::IF NOT DEFINED INPUT1 (
SET "INPUT1"=D:\home\site\wwwroot\scripts\Database_Schema.sql
::)
::IF NOT DEFINED OUTPUT1 (
SET "OUTPUT1"=D:\home\site\wwwroot\scripts\DB_Schema_OutputLog.txt
::)
SQLCMD -S %APPSETTING_key1% -d pwadb -U %APPSETTING_key2% -P %APPSETTING_key3% -i %INPUT1% -o %OUTPUT1% -b
IF %ERRORLEVEL% == 1 (
ECHO THERE WAS AN ERROR - to file >> %OUTPUT%
ECHO THERE WAS AN ERROR - on screen)


::IF NOT DEFINED INPUT2 (
SET "INPUT2"=D:\home\site\wwwroot\scripts\config_data.sql
::)
::IF NOT DEFINED OUTPUT2 (
SET "OUTPUT2"=D:\home\site\wwwroot\scripts\Config_Data_OutputLog.txt
::)
SQLCMD -S %APPSETTING_key1% -d pwadb -U %APPSETTING_key2% -P %APPSETTING_key3% -i %INPUT2% -o %OUTPUT2% -b
IF %ERRORLEVEL% == 1 (
ECHO THERE WAS AN ERROR - to file >> %OUTPUT2%
ECHO THERE WAS AN ERROR - on screen)

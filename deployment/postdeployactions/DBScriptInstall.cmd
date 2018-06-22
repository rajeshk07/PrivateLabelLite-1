
IF NOT DEFINED SERVER (
	SET SERVER=%APPSETTING_key1%
)
IF NOT DEFINED DB (
SET "DB"=pwadb
)
IF NOT DEFINED LOGIN (
SET "LOGIN"=%APPSETTING_key2%
)
IF NOT DEFINED PASSWORD (
SET "PASSWORD"=%APPSETTING_key3%
)
IF NOT DEFINED INPUT1 (
SET "INPUT1"=D:\home\site\wwwroot\scripts\Database_Schema.sql
)
IF NOT DEFINED OUTPUT1 (
SET "OUTPUT1"=D:\home\site\wwwroot\scripts\DB_Schema_OutputLog.txt
)
SQLCMD -S %SERVER% -d %DB% -U %LOGIN% -P %PASSWORD% -i %INPUT1% -o %OUTPUT1% -b
IF %ERRORLEVEL% == 1 (
ECHO THERE WAS AN ERROR - to file >> %OUTPUT%
ECHO THERE WAS AN ERROR - on screen)


IF NOT DEFINED INPUT2 (
SET "INPUT2"=D:\home\site\wwwroot\scripts\config_data.sql
)
IF NOT DEFINED OUTPUT2 (
SET "OUTPUT2"=D:\home\site\wwwroot\scripts\Config_Data_OutputLog.txt
)
SQLCMD -S %SERVER% -d %DB% -U %LOGIN% -P %PASSWORD% -i %INPUT2% -o %OUTPUT2% -b
IF %ERRORLEVEL% == 1 (
ECHO THERE WAS AN ERROR - to file >> %OUTPUT2%
ECHO THERE WAS AN ERROR - on screen)

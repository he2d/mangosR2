@ECHO OFF
TITLE Database Tool to batch auto many SQLs
COLOR 0A

:TOP
CLS
ECHO.
ECHO          ษออออออออออออออออออออออออออออออออป
ECHO          บ                                บ
ECHO          บ    HE2D DEV sql autoupdater    บ
ECHO          บ              for               บ
ECHO          บ        Craenkland WotLK        บ
ECHO          บ          Database Tool         บ
ECHO          บ                                บ
ECHO          ศออออออออออออออออออออออออออออออออผ
ECHO.
ECHO.
ECHO    Please enter your MySQL Info...
ECHO.
SET /p host= MySQL Server Address: 
ECHO.
SET /p user= MySQL Username: 
SET /p pass= MySQL Password: 
ECHO.
SET /p realm_db= Realm Database: 
SET /p char_db= Characters Database: 
SET /p world_db= World Database: 
SET /p sd2_db= Scriptdev2: 
SET charset=UTF8
SET port=3306
SET dumppath=.\sql_updater\dump\
SET mysqlpath=.\sql_updater\mysql\
SET devsql=.\sql\updates\
SET mrdevsql=.\sql_mr\
SET sd2devsql=.\mangosR2\src\bindings\ScriptDev2\sql_mr\

:Begin
CLS
SET v=""
ECHO.
ECHO.
ECHO    1 - Update all Orginal Mangos Updates to DB
ECHO    2 - Update all MangosR2 MR_SQLs to DB
ECHO    3 - Update all ScriptDev2R2 MR_SQLs to DB
ECHO.
ECHO.
ECHO.
ECHO    S - Change your settings and go to begin instructions
ECHO    X - Exit this tool
ECHO.
SET /p v= 		Enter a char: 
IF %v%==* GOTO error
IF %v%==1 GOTO importDB1
IF %v%==2 GOTO importDB2
IF %v%==3 GOTO importDB3
IF %v%==s GOTO top
IF %v%==S GOTO top
IF %v%==x GOTO exit
IF %v%==X GOTO exit
IF %v%=="" GOTO exit
GOTO error

:importDB1
CLS
ECHO.
ECHO Installing Orginal Realmd updates
ECHO Importing Data now...
ECHO.
FOR %%C IN (%devsql%\*_realmd_*.sql) DO (
	ECHO Importing: %%~nxC
	%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% --default-character-set=%charset% %realm_db% < "%%~fC"
	ECHO Successfully imported %%~nxC
)
ECHO all Realm DB updates complete.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO Installing Orginal Character updates
ECHO Importing Data now...
ECHO.
FOR %%C IN (%devsql%\*_characters_*.sql) DO (
	ECHO Importing: %%~nxC
	%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% --default-character-set=%charset% %char_db% < "%%~fC"
	ECHO Successfully imported %%~nxC
)
ECHO all Character DB updates complete.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO Installing Orginal World updates
ECHO Importing Data now...
ECHO.
FOR %%C IN (%devsql%\*_mangos_*.sql) DO (
	ECHO Importing: %%~nxC
	%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% --default-character-set=%charset% %world_db% < "%%~fC"
	ECHO Successfully imported %%~nxC
)
ECHO all World DB updates complete.
ECHO.
ECHO.
ECHO.
ECHO.
PAUSE
GOTO Begin

:importDB2
CLS
ECHO.
ECHO Installing MangosR2 MR SQL Realmd updates
ECHO Importing Data now...
ECHO.
FOR %%C IN (%mrdevsql%\mr*_realmd_*.sql) DO (
	ECHO Importing: %%~nxC
	%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% --default-character-set=%charset% %realm_db% < "%%~fC"
	ECHO Successfully imported %%~nxC
)
ECHO all MangosR2 MR SQL DB Realmd updates complete.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO Installing MangosR2 MR SQL Character updates
ECHO Importing Data now...
ECHO.
FOR %%C IN (%mrdevsql%\mr*_characters_*.sql) DO (
	ECHO Importing: %%~nxC
	%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% --default-character-set=%charset% %char_db% < "%%~fC"
	ECHO Successfully imported %%~nxC
)
ECHO all MangosR2 MR SQL DB Character updates complete.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO Installing MangosR2 MR SQL World updates
ECHO Importing Data now...
ECHO.
FOR %%C IN (%mrdevsql%\mr*_mangos_*.sql) DO (
	ECHO Importing: %%~nxC
	%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% --default-character-set=%charset% %world_db% < "%%~fC"
	ECHO Successfully imported %%~nxC
)
ECHO all MangosR2 MR SQL DB World updates complete.
ECHO.
ECHO.
ECHO.
ECHO.
PAUSE
GOTO Begin

:importDB3
CLS
ECHO.
ECHO Installing SD2 Mangos MR SQL updates
ECHO Importing Data now...
ECHO.
FOR %%C IN (%sd2devsql%\mr*_mangos_*.sql) DO (
	ECHO Importing: %%~nxC
	%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% --default-character-set=%charset% %world_db% < "%%~fC"
	ECHO Successfully imported %%~nxC
)
ECHO all SD2 MR SQL World DB updates complete.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO Installing SD2 Scriptdev2 MR SQL updates
ECHO Importing Data now...
ECHO.
FOR %%C IN (%sd2devsql%\*mr*_scriptdev2_*.sql) DO (
	ECHO Importing: %%~nxC
	%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% --default-character-set=%charset% %sd2_db% < "%%~fC"
	ECHO Successfully imported %%~nxC
)
ECHO all SD2 MR SQL Scriptdev2 DB updates complete.
ECHO.
ECHO.
ECHO.
ECHO.
PAUSE
GOTO Begin

:error
ECHO	Please enter a correct character or number.
ECHO.
PAUSE
GOTO begin

:exit
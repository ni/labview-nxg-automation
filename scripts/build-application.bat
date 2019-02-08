@ECHO Off

:: Get the last registry key under LABVIEW NXG (the latest version)
FOR /F "tokens=1 delims=*" %%A IN ('REG QUERY "HKLM\SOFTWARE\National Instruments\LABVIEW NXGs"') DO SET NXG_KEY=%%A

:: Get the path of the installation directory
FOR /F "tokens=1 delims=*" %%F IN ('REG QUERY "%NXG_KEY%" /v Path') DO SET LV_DIR=%%F

if "%LV_DIR%" == "" (
	ECHO Falling back on default 3.0 path...
	SET LV_DIR=C:\Program Files\National Instruments\LabVIEW NXG 3.0\
)

:: Trim additional output from reg query and any leading spaces
SET LV_DIR=%LV_DIR:Path =%
SET LV_DIR=%LV_DIR:REG_SZ =%
FOR /F "tokens=*" %%A IN ("%LV_DIR%") DO SET LV_DIR=%%A

SET NXG_CLI=%LV_DIR%labviewnxgcli.exe

:: Run the CLI
"%NXG_CLI%" build-application -p "%WORKSPACE%\\source\\Reusing Code across Applications\\Reusing Code across Applications.lvproject" -n %1 -t "This Computer"
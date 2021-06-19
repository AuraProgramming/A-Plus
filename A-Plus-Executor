@echo off

if not exist "%~f1" (
  echo Command file not found.
  exit
)

for /f "tokens=1" %%a in (%~f1) do (
  call :case-%%a 2>nul || call :command_default %%a
)

:case-cow
  echo moo
  goto :eof
	
REM available commands end here
	
:command_default
  echo Non recognisable command
  exit

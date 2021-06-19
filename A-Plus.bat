@echo off

if not exist "%~f1" (
  echo Command file not found.
  exit
)

for /f "tokens=1" %%a in (%~f1) do (
  call :case-%%a 2>nul || call :command_default %%a
)

:case-PrintOn
  @echo on
  
:case-PrintOff
  @echo off
  
:case-cow
  echo moo

	
:command_default
  exit

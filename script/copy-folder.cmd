@echo off

set USAGE="Usage: %0 source destination"

if [%1] == [] (
  echo %USAGE%
  exit 1
)
if [%2] == [] (
  echo %USAGE%
  exit 2
)

:: rm -rf %2
if exist %2 rmdir %2 /s /q

:: cp -rf %1 %2
xcopy %1 %2 /e /h /c /i /y /r

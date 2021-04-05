
cd /D "%~dp0"

PsExec.exe -accepteula -i -d -s PowerShell.exe -noexit -executionpolicy bypass -file "%~dp0\Configure-AA-WMIBridge-V2.ps1" 2> C:\AALog.txt

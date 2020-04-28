SET CurrentDir="%~dp0"

cd %CurrentDir%

psexec.exe -i -s powershell.exe -ExecutionPolicy Bypass -File "c:\Util\aa\Configure-AA-WMIBridge.ps1" 2> Log.txt



﻿function DisableKiosk {

$nameSpaceName="root\cimv2\mdm\dmmap"
    
}

function SetReg {

$regpath = "HKLM:Software"
$regname = "KioskProfile"
Remove-itemproperty –path $regpath –name $regname 

Write-Host "Key Removed"

    }
    
    #Logic
    DisableKiosk
    SetReg
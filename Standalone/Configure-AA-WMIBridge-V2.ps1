﻿$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath

$nameSpaceName="root\cimv2\mdm\dmmap"

}

#Set Registry 
function SetReg {

$regpath = "HKLM:Software"
$regname = "KioskProfile"
$regvalue = "Enabled"
New-itemproperty –path $regpath –name $regname –PropertyType String –value $regvalue
$verifyValue = Get-itemproperty –path $regpath –name $regname
Write-Host "The $regName named value is set to: " $verifyValue.$regname
}

#Logic
EnableKiosk

SetReg
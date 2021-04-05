function DisableKiosk {

$nameSpaceName="root\cimv2\mdm\dmmap"$className="MDM_AssignedAccess"$obj = Get-CimInstance -Namespace $namespaceName -ClassName $className$obj.Configuration = $NULL
    
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
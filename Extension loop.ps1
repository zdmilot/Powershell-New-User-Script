:serviceloop while(1) {
    $Ext = Read-Host "Enter 4 Digit Extention"
    if ("4" -ne ($Ext | measure-object -character | select -expandproperty characters))
                {Write-Host "Invalid response."
                continue serviceloop
            }

    Write-Host $Ext

    $Correct6 = Read-Host "If This is Correct Press Enter, If not type n then enter"
 
    if ($Correct6 -eq "y" -or $Correct6 -eq "Y") {
        break
        }
    else {
        continue serviceloop
        }
        }
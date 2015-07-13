:serviceloop while(1) {
    $MobilePh = Read-Host "Enter 10 Digit Mobile Number (no hyphens or parentheses)(If no mobile number, just leave blank and hit enter)"
    if ( "0" -eq ($MobilePh | measure-object -character | select -expandproperty characters))
                {Write-Host "No Mobile Number."
            }
    elseif (10 -eq ($MobilePh | measure-object -character | select -expandproperty characters))
            {$MobilePh = "(" + ($MobilePh.Substring(0,$MobilePh.Length-7)) + ") " + ($MobilePh.Substring(3,$MobilePh.Length-7)) + "-" + $MobilePh.substring($MobilePh.length - 4, 4)
                        Write-Host $MobilePh
            }
    else
           {Write-Host "Invalid response."
                continue serviceloop}

    $Correct6 = Read-Host "Is this correct? [y/n]"
 
    if ($Correct6 -eq "y" -or $Correct6 -eq "Y") {
        break
        }
    else {
        continue serviceloop
        }
        
        }
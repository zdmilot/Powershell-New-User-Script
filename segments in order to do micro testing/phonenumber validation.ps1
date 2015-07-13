[regex]$regex = "^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$"

:serviceloop while(1) {
                        $MobilePh = Read-Host "Enter 10 Digit Mobile Number (no hyphens or parentheses)(If no mobile number, just leave blank and hit enter)"
                        if (("0" -eq ($MobilePh | measure-object -character | select -expandproperty characters))){
                                Write-Host "No Mobile Number."
                                break
                                }
                        elseif ((10 -eq ($MobilePh | measure-object -character | select -expandproperty characters)) -and $regex.Match($MobilePh)){
                                $MobilePhEntry = ($MobilePh.Substring(0,$MobilePh.Length-7)) + "." + ($MobilePh.Substring(3,$MobilePh.Length-7)) + "." + $MobilePh.substring($MobilePh.length - 4, 4)
                                $MobilePh = "(" + ($MobilePh.Substring(0,$MobilePh.Length-7)) + ") " + ($MobilePh.Substring(3,$MobilePh.Length-7)) + "-" + $MobilePh.substring($MobilePh.length - 4, 4)

                                Write-Host $MobilePh
                                break
                                }
                        else{
                                Write-Warning "Invalid response."
                                Clear-Variable MobilePh
                                continue serviceloop
                                }

                        }
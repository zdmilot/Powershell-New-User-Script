
                    :serviceloop while(1) {
                        $MiddleI = Read-Host "Enter Middle Initial"
                        if ( "0" -eq ($MiddleI | measure-object -character | select -expandproperty characters)){
                                Write-Host "No Middle Initial."
                                break
                                }
                        elseif (1 -eq ($MiddleI | measure-object -character | select -expandproperty characters)){
                                $MiddleI = $MiddleI[0].ToString().ToUpper()
                                Write-Host $MiddleI

                                break
                                }
                        else{
                                Write-Warning "Invalid response."
                                Clear-Variable MiddleI
                                continue serviceloop
                                }

                        <#$Correct3 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct3 -eq "y" -or $Correct3 -eq "Y"){
                                break
                          }#>
        
                            }
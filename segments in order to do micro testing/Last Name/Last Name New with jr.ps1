:serviceloop while(1) {
                        $Last = Read-Host "Enter Last Name"

                        if (($Last[-3] + $Last[-2] + $Last[-1]) -eq "Jr.")
                            {
                                $Last = $Last.tolower()
                                $Last1 = $Last[-3] + $Last[-2]
                                $Last2 = $Last.TrimEnd("jr.")
                                $LastM = $Last.TrimEnd("jr.")
                                $Last2 = $Last2.TrimEnd()
                                $LastD = (Get-Culture).textinfo.totitlecase(“$Last2”.tolower()) + " " + (Get-Culture).textinfo.totitlecase(“$Last1”.tolower()) + "."
                                $Last = (Get-Culture).textinfo.totitlecase(“$Last2”.tolower())
                            }

                        elseif (($Last[-2] + $Last[-1]) -eq "Jr")
                            {
                                $Last = $Last.tolower()
                                $Last1 = $Last[-2] + $Last[-1]
                                $Last2 = $Last.TrimEnd("jr")
                                $Last2 = $Last2.TrimEnd()
                                $LastE = $Last.TrimEnd("jr")
                                $LastM = $LastE
                                $LastE = $LastE.TrimEnd() + "jr"
                                $LastD = (Get-Culture).textinfo.totitlecase(“$Last2”.tolower()) + " " + (Get-Culture).textinfo.totitlecase(“$Last1”.tolower()) + "."
                                $Last = (Get-Culture).textinfo.totitlecase(“$Last2”.tolower())
                                }

                        else{
                                $Last = (Get-Culture).textinfo.totitlecase(“$Last”.tolower())
                                $LastD = $Last
                                $LastE = $Last
                            }

                        if (($Last[0] + $Last[1]) -eq "mc")
                            {;
                                $Last1 = $LastD[0] + $LastD[1]
                                $Last2 = $LastD.substring(2)
                                $LastD = (Get-Culture).textinfo.totitlecase(“$Last1”.tolower()) + (Get-Culture).textinfo.totitlecase(“$Last2”.tolower())
                                $Last = $LastD
                                $Last12 = $LastM[0] + $LastM[1]
                                $Last22 = $LastM.substring(2)
                                $Last22 = $LastM.TrimEnd()
                                $LastM = (Get-Culture).textinfo.totitlecase(“$Last12”.tolower()) + (Get-Culture).textinfo.totitlecase(“$Last22”.tolower())
                             }
                        elseif (($Last[0] + $Last[1]) -eq "O'")
                            {
                                $Last1 = $LastE[0] + $LastE[1]
                                $Last2 = $LastD.substring(2)
                                $LastD = (Get-Culture).textinfo.totitlecase(“$Last1”.tolower()) + (Get-Culture).textinfo.totitlecase(“$Last2”.tolower())
                                $Last3 = (Get-Culture).textinfo.totitlecase(“$Last2”.tolower())
                                $LastE = $LastE[0] + $LastE.substring(2)
                                $Last12 = $LastM[0] + $LastM[1]
                                $Last22 = $LastM.substring(2)
                                $Last22 = $LastM.TrimEnd()
                                $LastM = (Get-Culture).textinfo.totitlecase(“$Last12”.tolower()) + (Get-Culture).textinfo.totitlecase(“$Last22”.tolower())
                                $Last = $LastD
                                
                            }
                        else{
                                $Last = (Get-Culture).textinfo.totitlecase(“$Last”.tolower())
                                $LastD = $Last
                                $LastE = $Last
                            }

                        write-Host $LastD
                        write-Host $Last
                        write-Host $LastE
                        write-Host $LastM
                        
                      
                        <#$Correct1 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct1 -eq "y" -or $Correct1 -eq "Y") {
                            break
                                  }#>
                        break
                        }
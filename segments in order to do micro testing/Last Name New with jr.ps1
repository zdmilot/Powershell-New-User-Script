:serviceloop while(1) {
                        $Last = Read-Host "Enter Last Name"

                       if (($Last[0] + $Last[1]) -eq "mc")
                            {
                        $Last1 = $Last[0] + $Last[1]
                        $Last2 = $Last.substring(2)
                        $Last = (Get-Culture).textinfo.totitlecase(“$Last1”.tolower()) + (Get-Culture).textinfo.totitlecase(“$Last2”.tolower())
                            }

                        if (($Last[-3] + $Last[-2] + $Last[-1]) -eq "Jr.")
                            {
                        $Last1 = $Last[-3] + $Last[-2]
                        $Last2 = $Last.TrimEnd(3)
                        $Last = (Get-Culture).textinfo.totitlecase(“$Last2”.tolower()) + (Get-Culture).textinfo.totitlecase(“$Last1”.tolower())
                            }

                        if (($Last[-2] + $Last[-1]) -eq "Jr")
                            {
                        $Last1 = $Last[-2] + $Last[-1]
                        $Last2 = $Last.TrimEnd(3)
                        $Last = (Get-Culture).textinfo.totitlecase(“$Last2”.tolower()) + (Get-Culture).textinfo.totitlecase(“$Last1”.tolower())
                            }

                        else{
                        $Last = (Get-Culture).textinfo.totitlecase(“$Last”.tolower())
                            }

                           write-Host $Last
                           write-Host $Last1
                           write-Host $Last2
                      
                        <#$Correct1 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct1 -eq "y" -or $Correct1 -eq "Y") {
                            break
                                  }#>
                        break
                        }
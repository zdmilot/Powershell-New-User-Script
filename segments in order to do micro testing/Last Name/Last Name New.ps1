 :serviceloop while(1) {
                        $Last = Read-Host "Enter Last Name"

                       if (($Last[0] + $Last[1]) -eq "mc")
                            {
                        $Last1 = $Last[0] + $Last[1]
                        $Last2 = $Last.substring(2)
                        $Last = (Get-Culture).textinfo.totitlecase(“$Last1”.tolower()) + (Get-Culture).textinfo.totitlecase(“$Last2”.tolower())
                            }
                        else{
                        $Last = (Get-Culture).textinfo.totitlecase(“$Last”.tolower())
                            }

                           write-Host $Last

                        $Correct1 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct1 -eq "y" -or $Correct1 -eq "Y") {
                            break
                                  }
                        }
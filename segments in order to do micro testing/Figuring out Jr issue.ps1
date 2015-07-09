
                        $Last = "O'leary"
                        $LastD = $Last

                        if (($Last[0] + $Last[1]) -eq "O'")
                            {
                                $Last1 = $LastD[0] + $LastD[1]
                                $Last2 = $LastD.substring(2)
                                $LastD = (Get-Culture).textinfo.totitlecase(“$Last1”.tolower()) + (Get-Culture).textinfo.totitlecase(“$Last2”.tolower())
                                $Last3 = (Get-Culture).textinfo.totitlecase(“$Last2”.tolower())
                                $LastE = $LastD[0] + $LastD.substring(2)
                                
                            }
                        
                        #write-Host $Last1
                        #write-Host $Last2
                        #write-Host $Laste
                        write-Host $LastD
                        write-Host $Last
                        write-Host $LastE

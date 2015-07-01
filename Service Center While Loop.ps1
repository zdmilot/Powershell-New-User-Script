                    :serviceloop while(1) {
                        $Local = Read-Host "Enter Service Center Location"
                        switch ($Local)
                            {
                                {($_ -eq "MA") -or ($_ -eq "Mass") -or ($_ -eq "Massachusetts")} {Write-Host "Invalid response: Enter City of Service Center (Franklin or Salisbury)"
                                            continue serviceloop}
                                "Franklin" {$Local = "MA"
                                            $Address = "19 National Drive"
                                            $ServCity = "Franklin"
                                            $Zip = "02038"
                                            $PhoneArea = "(508) 966-"
                                            $DeExt = "6000"
                                            $Fax = "(508) 966-4861"}

                                "Salisbury" {$Local = "MA"
                                            $Address = "114 Bridge Road"
                                            $ServCity = "Salisbury"
                                            $Zip = "01952"
                                            $PhoneArea = "(978) 465-"
                                            $DeExt = "1595"
                                            $Fax = "(978) 465-2050"}


                                {($_ -eq "VT") -or ($_ -eq "Vermont")} {Write-Host "Invalid response: Enter City of Service Center (S. Burlington, Burlington, or Williston)"
                                            continue serviceloop}
                                {($_ -eq "S. Burlington") -or ($_ -eq "S.Burlington") -or ($_ -eq "SBurlington") -or ($_ -eq "Southb") -or ($_ -eq "SouthBurlington") -or ($_ -eq "South Burlington")} {$Local = "MA"
                                            $Address = "40 San Remo Drive"
                                            $ServCity = "South Burlington"
                                            $Zip = "05403"
                                            $PhoneArea = "(802) 863-"
                                            $DeExt = "5300"
                                            $Fax = "(802) 863-0005"}

                                "Burlington" {$Local = "VT"
                                            $Address = "2 Flynn Ave"
                                            $ServCity = "Burlington"
                                            $Zip = "05401"
                                            $PhoneArea = "(802) 488-"
                                            $DeExt = "8100"
                                            $Fax = "(802) 488-3950"}

                                "Williston" {$Local = "VT"
                                            $Address = "54 Avenue D"
                                            $ServCity = "Williston"
                                            $Zip = "05495"
                                            $PhoneArea = "(802) 860-"
                                            $DeExt = "1200"
                                            $Fax = "(802) 860-7202"}


                                {($_ -eq "ME") -or ($_ -eq "Maine")} {Write-Host "Invalid response: Enter City of Service Center (S. Portland or Portland)"
                                            continue serviceloop}
                                "Portland" {$Local = "ME"
                                            $Address = "31 Waldron Way"
                                            $ServCity = "Portland"
                                            $Zip = "04103"
                                            $PhoneArea = "(207) 878-"
                                            $DeExt = "3031"
                                            $Fax = "(207) 878-3043"}

                                {($_ -eq "S. Portland") -or ($_ -eq "S.Portland") -or ($_ -eq "SPortland") -or ($_ -eq "Southp") -or ($_ -eq "SouthPortland") -or ($_ -eq "South Portland")} {$Local = "ME"
                                            $Address = "106 Main Street"
                                            $ServCity = "South Portland"
                                            $Zip = "04106"
                                            $PhoneArea = "(207) 799-"
                                            $DeExt = "0850"
                                            $Fax = "(207) 799-5565"}


                                {($_ -eq "NH") -or ($_ -eq "New Hampshire")} {Write-Host "Invalid response: Enter City of Service Center (Portsmith or Pembroke)"
                                            continue serviceloop}
                                "Portsmith" {$Local = "NH"
                                            $Address = "141 Banfield Road, Suite 11"
                                            $ServCity = "Portsmith"
                                            $Zip = "03801"
                                            $PhoneArea = "(603) 436-"
                                            $DeExt = "2364"
                                            $Fax = "(603) 436-2386"}

                                "Pembroke" {$Local = "NH"
                                            $Address = "709 Keith Avenue"
                                            $ServCity = "Pembroke"
                                            $Zip = "03275"
                                            $PhoneArea = "(603) 410-"
                                            $DeExt = "1150"
                                            $Fax = "(603) 410-1151"}


                                {($_ -eq "CT") -or ($_ -eq "Connecticut") -or ($_ -eq "Durham")} {$Local = "CT"
                                            $Address = "92 Commerce Circle"
                                            $ServCity = "Durham"
                                            $Zip = "06422"
                                            $PhoneArea = "(203) 268-"
                                            $DeExt = "7046"
                                            $Fax = "(203) 268-7105"}


                                {($_ -eq "NJ") -or ($_ -eq "New Jersey") -or ($_ -eq "NewJersey") -or ($_ -eq "Kearny")} {$Local = "NJ"
                                            $Address = "9 Basin Drive, Suite 190"
                                            $ServCity = "Kearny"
                                            $Zip = "07032"
                                            $PhoneArea = "(973) 344-"
                                            $DeExt = "2309"
                                            $Fax = "(508) 966-4861"}


                                {($_ -eq "FL") -or ($_ -eq "Florida") -or ($_ -eq "Tampa")} {$Local = "FL"
                                            $Address = "4015 W Osborne Avenue"
                                            $ServCity = "Tampa"
                                            $Zip = "33614"
                                            $PhoneArea = "(813) 817-"
                                            $DeExt = "2613"
                                            $Fax = "(813) 871-2942"}


                                {($_ -eq "NY") -or ($_ -eq "New York") -or ($_ -eq "NewYork") -or ($_ -eq "Albany")} {$Local = "NY"
                                            $Address = "14 Walker Way, Unit 3"
                                            $ServCity = "Albany"
                                            $Zip = "12205"
                                            $PhoneArea = "(518) 464-"
                                            $DeExt = "7622"
                                            $Fax = "(518) 464-7633"}
                                default {
                                    Write-Host "Invalid response."
                                    continue serviceloop
                                }
                            }

                        Write-Host "$ServCity, $Local"

                        $Correct5 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct5 -eq "y" -or $Correct5 -eq "Y") {
                            break
                        }     
                        }
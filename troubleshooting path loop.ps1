:serviceloop while(1) {
                        $Dept = Read-Host "Enter Department"
                        switch ($Dept)
                            {
                                {($_ -eq "Accounting") -or ($_ -eq "Account") -or ($_ -eq "Acc")} {$Dept = "Accounting"}
                                {($_ -eq "Field Technician") -or ($_ -eq "Field Tech.") -or ($_ -eq "Field Tech") -or ($_ -eq "Field") -or ($_ -eq "FT")} {$Dept = "Field Technician"}
                                {($_ -eq "Operations") -or ($_ -eq "Ops.") -or ($_ -eq "Ops")} {$Dept = "Operations"}
                                {($_ -eq "Transportation and Disposal") -or ($_ -eq "Transportation & Disposal") -or ($_ -eq "Transportation") -or ($_ -eq "Transport") -or ($_ -eq "Disposal") -or ($_ -eq "T and D") -or ($_ -eq "T & D") -or ($_ -eq "T&D") -or ($_ -eq "TD")} {$Dept = "Transportation and Disposal"}
                                {($_ -eq "Project Manager") -or ($_ -eq "Project") -or ($_ -eq "PM")} {$Dept = "Project Manager"}
                                {($_ -eq "Human Resources") -or ($_ -eq "Human") -or ($_ -eq "HR")} {$Dept = "Human Resources"}
                                {($_ -eq "Information Technology") -or ($_ -eq "Information Services") -or ($_ -eq "IT") -or ($_ -eq "IS")} {$Dept = "Information Technology"}
                                {($_ -eq "Marketing") -or ($_ -eq "Market") -or ($_ -eq "MT") -or ($_ -eq "Design")} {$Dept = "Marketing"}
                                default {
                                    Write-Warning "Invalid response."
                                    continue serviceloop
                                }
                            }

                        Write-Host $Dept

                        $Correct3 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct3 -eq "y" -or $Correct3 -eq "Y") {
                            break
                        }
        
                        }

:serviceloop while(1) {
                        $Local = Read-Host "Enter Service Center Location"
                        switch ($Local)
                            { #DeExt = default extension aka the last 4 of the phone number of the service center. Thsi is here if one wanted to have code that created users with an extension equivilent to the last 4 digits of the service centers phone number
                                {($_ -eq "MA") -or ($_ -eq "Mass") -or ($_ -eq "Massachusetts")} {Write-Warning "Invalid response: Enter City of Service Center (Franklin or Salisbury)"
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


                                {($_ -eq "VT") -or ($_ -eq "Vermont")} {Write-Warning "Invalid response: Enter City of Service Center (S. Burlington, Burlington, or Williston)"
                                            continue serviceloop}
                                {($_ -eq "S. Burlington") -or ($_ -eq "S.Burlington") -or ($_ -eq "SBurlington") -or ($_ -eq "Southb") -or ($_ -eq "SouthBurlington") -or ($_ -eq "South Burlington")} {$Local = "VT"
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


                                {($_ -eq "ME") -or ($_ -eq "Maine")} {Write-Warning "Invalid response: Enter City of Service Center (S. Portland or Portland)"
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


                                {($_ -eq "NH") -or ($_ -eq "New Hampshire")} {Write-Warning "Invalid response: Enter City of Service Center (Portsmith or Pembroke)"
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
                                    Write-Warning "Invalid response."
                                    continue serviceloop
                                }
                            }

                        Write-Host "$ServCity, $Local"

                        $Correct5 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct5 -eq "y" -or $Correct5 -eq "Y") {
                            break
                        }     
        }

Write-Host `n
    Write-Host "User's Department Is :" $Dept
    Write-Host "User's Location Is :" $ServCity"," $Local












switch ($Local)
            {
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Lockdown and Internet,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Lockdown and Internet,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                      }
                     

                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Lockdown and Internet,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Lockdown and Internet,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                     }

                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Lockdown and Internet,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Lockdown and Internet,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                      }

                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Lockdown and Internet,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Lockdown and Internet,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                      }

                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Lockdown and Internet,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Lockdown and Internet,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                      }

                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Lockdown and Internet,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Lockdown and Internet,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                      }

                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Lockdown and Internet,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Lockdown and Internet,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                      }

                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Lockdown and Internet,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Lockdown and Internet,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=Office Employees,OU=Franklin,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                        {$Path = "OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                        }
                      }
                      
                  
                default {
                    Write-Warning "An Error Has Occurred."
                    break
                }
            }



            Write-Host `n `n
    Write-Host "User's Department Is :" $Dept
    Write-Host "User's Location Is :" $ServCity"," $Local

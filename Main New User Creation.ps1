Write-Host "**********************************************************************************`n
            
Powershell New AD User Script`n
   Writen By: Zachary Milot`n
     Special thanks to William Stevens for helping edit loop`n
            
**********************************************************************************`n"

Import-Module ActiveDirectory
:serviceloop while(1) {
            :serviceloop while(1) {
                        $Last = Read-Host "Enter Last Name"

                        if (($Last[-3] + $Last[-2] + $Last[-1]) -eq "Jr.")
                            {
                                $Last = $Last.tolower()
                                $Last1 = $Last[-3] + $Last[-2]
                                $Last2 = $Last.TrimEnd("jr.")
                                $Last2 = $Last2.TrimEnd()
                                $LastE = $Last.TrimEnd("jr.")
                                $LastE = $LastE.TrimEnd() + "jr"
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
                            {
                                $Last1 = $LastD[0] + $LastD[1]
                                $Last2 = $LastD.substring(2)
                                $LastD = (Get-Culture).textinfo.totitlecase(“$Last1”.tolower()) + (Get-Culture).textinfo.totitlecase(“$Last2”.tolower())
                                
                             }
                        elseif (($Last[0] + $Last[1]) -eq "O'")
                            {
                                $Last1 = $LastE[0] + $LastE[1]
                                $Last2 = $LastD.substring(2)
                                $LastD = (Get-Culture).textinfo.totitlecase(“$Last1”.tolower()) + (Get-Culture).textinfo.totitlecase(“$Last2”.tolower())
                                $Last3 = (Get-Culture).textinfo.totitlecase(“$Last2”.tolower())
                                $LastE = $LastE[0] + $LastE.substring(2)
                                
                            }
                        else{
                                $Last = (Get-Culture).textinfo.totitlecase(“$Last”.tolower())
                                #$LastE = $Last
                            }
                       
                        write-Host $LastD
                        
                        <#$Correct1 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct1 -eq "y" -or $Correct1 -eq "Y") {
                            break
                                  }#>
                        break
                        }


              :serviceloop while(1) {
                        $First = Read-Host "Enter First Name"

                        $First = (Get-Culture).textinfo.totitlecase(“$First”.tolower())

                        Write-Host $First

                        <#$Correct2 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct2 -eq "y" -or $Correct2 -eq "Y"){
                                break
                          }#>

                        break
                        }
 

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


                    $User = $First[0] + $LastE

                    $User = “$user”.tolower()

                        Write-Host `nUsername is:($User)`n



                    :serviceloop while(1) {
                        $Dept = Read-Host "Enter Department"
                        switch ($Dept)
                            {
                                {($_ -eq "Accounting") -or ($_ -eq "Account") -or ($_ -eq "Acc") -or ($_ -eq "Ac") -or ($_ -eq "AD") -or ($_ -eq "A")} {
                                        $Dept = "Accounting"}
                                {($_ -eq "Field Technician") -or ($_ -eq "Field Services") -or ($_ -eq "FServices") -or ($_ -eq "FService") -or ($_ -eq "Field Tech.") -or ($_ -eq "Field Tech") -or ($_ -eq "Field") -or ($_ -eq "FT") -or ($_ -eq "FS") -or ($_ -eq "F") -or ($_ -eq "FTech.") -or ($_ -eq "FTech")} {
                                        $Dept = "Field Services"}
                                {($_ -eq "Operations") -or ($_ -eq "Ops.") -or ($_ -eq "Ops") -or ($_ -eq "O")} {
                                        $Dept = "Operations"}
                                {($_ -eq "Transportation and Disposal") -or ($_ -eq "Transportation & Disposal") -or ($_ -eq "Transportation") -or ($_ -eq "Transport") -or ($_ -eq "Disposal") -or ($_ -eq "T and D") -or ($_ -eq "TandD") -or ($_ -eq "T & D") -or ($_ -eq "T&D") -or ($_ -eq "TD") -or ($_ -eq "TND") -or ($_ -eq "T N D") -or ($_ -eq "T")} {
                                        $Dept = "Transportation and Disposal"}
                                {($_ -eq "Project Manager") -or ($_ -eq "Project Managers") -or ($_ -eq "Project Management") -or ($_ -eq "Project Mgmt") -or ($_ -eq "Project") -or ($_ -eq "PM") -or ($_ -eq "P")} {
                                        $Dept = "Project Management"}
                                {($_ -eq "Supervisors") -or ($_ -eq "Foreman") -or ($_ -eq "Foremen") -or ($_ -eq "Supervisors and Foreman") -or ($_ -eq "Supervisors and Foremen") -or ($_ -eq "Supervisor") -or ($_ -eq "SF")} {
                                        $Dept = "Supervisors and Foremen"}
                                {($_ -eq "Human Resources") -or ($_ -eq "Human") -or ($_ -eq "Compliance") -or ($_ -eq "HR") -or ($_ -eq "H")} {
                                        $Dept = "Human Resources"}
                                {($_ -eq "Health and Safety") -or ($_ -eq "Health") -or ($_ -eq "Safety") -or ($_ -eq "HS") -or ($_ -eq "H and S") -or ($_ -eq "HandS") -or ($_ -eq "H & S") -or ($_ -eq "H&S") -or ($_ -eq "HNS")} {
                                        $Dept = "Health and Safety"}
                                {($_ -eq "Information Technology") -or ($_ -eq "Information Services") -or ($_ -eq "IT") -or ($_ -eq "IS") -or ($_ -eq "Tech") -or ($_ -eq "Tech.") -or ($_ -eq "I")} {
                                        $Dept = "Information Technology"}
                                {($_ -eq "Marketing") -or ($_ -eq "Market") -or ($_ -eq "MT") -or ($_ -eq "M") -or ($_ -eq "Design")} {
                                        $Dept = "Marketing"}
                                {($_ -eq "Sales") -or ($_ -eq "Sail") -or ($_ -eq "Sale") -or ($_ -eq "SLS") -or ($_ -eq "sold")} {
                                        $Dept = "Sales"}
                                default {
                                    Write-Warning "Invalid response."
                                    continue serviceloop
                                }
                            }

                        Write-Host $Dept

                        <#$Correct4 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct4 -eq "y" -or $Correct4 -eq "Y"){
                                break
                          }#>

                        break
        
                        }


                     :serviceloop while(1) {
                        $Title = Read-Host "Enter Job Title"

                        $Title = (Get-Culture).textinfo.totitlecase(“$Title”.tolower())

                        Write-Host $Title

                        <#$Correct5 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct5 -eq "y" -or $Correct5 -eq "Y"){
                                break
                          }#>

                        break
                        }

                    :serviceloop while(1) {
                        $Local = Read-Host "Enter Service Center Location"
                        switch ($Local)
                            { #DeExt = default extension aka the last 4 of the phone number of the service center. Thsi is here if one wanted to have code that created users with an extension equivilent to the last 4 digits of the service centers phone number
                                {($_ -eq "MA") -or ($_ -eq "Mass") -or ($_ -eq "Massachusetts")} {Write-Warning "Invalid response: Enter City of Service Center (Franklin or Salisbury)"
                                            continue serviceloop}
                                {($_ -eq "F") -or ($_ -eq "Franklin")} {
                                        $Local = "MA"
                                        $Address = "19 National Drive"
                                        $ServCity = "Franklin"
                                        $Zip = "02038"
                                        $PhoneArea = "(508) 966-"
                                        $DeExt = "6000"
                                        $Fax = "(508) 966-4861"
                                        }

                                {($_ -eq "S") -or ($_ -eq "Salisbury")} {
                                        $Local = "MA"
                                        $Address = "114 Bridge Road"
                                        $ServCity = "Salisbury"
                                        $Zip = "01952"
                                        $PhoneArea = "(978) 465-"
                                        $DeExt = "1595"
                                        $Fax = "(978) 465-2050"
                                        }


                                {($_ -eq "VT") -or ($_ -eq "Vermont")} {
                                        Write-Warning "Invalid response: Enter City of Service Center (S. Burlington, Burlington, or Williston)"
                                        continue serviceloop
                                        }
                                {($_ -eq "S. Burlington") -or ($_ -eq "S.Burlington") -or ($_ -eq "SBurlington") -or ($_ -eq "Southb") -or ($_ -eq "SouthBurlington") -or ($_ -eq "South Burlington")} {
                                        $Local = "VT"
                                        $Address = "40 San Remo Drive"
                                        $ServCity = "South Burlington"
                                        $Zip = "05403"
                                        $PhoneArea = "(802) 863-"
                                        $DeExt = "5300"
                                        $Fax = "(802) 863-0005"
                                        }

                                "Burlington" {
                                        $Local = "VT"
                                        $Address = "2 Flynn Ave"
                                        $ServCity = "Burlington"
                                        $Zip = "05401"
                                        $PhoneArea = "(802) 488-"
                                        $DeExt = "8100"
                                        $Fax = "(802) 488-3950"
                                        }
                                "Williston" {
                                        $Local = "VT"
                                        $Address = "54 Avenue D"
                                        $ServCity = "Williston"
                                        $Zip = "05495"
                                        $PhoneArea = "(802) 860-"
                                        $DeExt = "1200"
                                        $Fax = "(802) 860-7202"}


                                {($_ -eq "ME") -or ($_ -eq "Maine")} {
                                        Write-Warning "Invalid response: Enter City of Service Center (S. Portland or Portland)"
                                        continue serviceloop
                                        }
                                "Portland" {
                                        $Local = "ME"
                                        $Address = "31 Waldron Way"
                                        $ServCity = "Portland"
                                        $Zip = "04103"
                                        $PhoneArea = "(207) 878-"
                                        $DeExt = "3031"
                                        $Fax = "(207) 878-3043"
                                        }

                                {($_ -eq "S. Portland") -or ($_ -eq "S.Portland") -or ($_ -eq "SPortland") -or ($_ -eq "Southp") -or ($_ -eq "SouthPortland") -or ($_ -eq "South Portland")} {
                                        $Local = "ME"
                                        $Address = "106 Main Street"
                                        $ServCity = "South Portland"
                                        $Zip = "04106"
                                        $PhoneArea = "(207) 799-"
                                        $DeExt = "0850"
                                        $Fax = "(207) 799-5565"
                                        }


                                {($_ -eq "NH") -or ($_ -eq "New Hampshire")} {
                                        Write-Warning "Invalid response: Enter City of Service Center (Portsmith or Pembroke)"
                                        continue serviceloop
                                        }
                                "Portsmith" {
                                        $Local = "NH"
                                        $Address = "141 Banfield Road, Suite 11"
                                        $ServCity = "Portsmith"
                                        $Zip = "03801"
                                        $PhoneArea = "(603) 436-"
                                        $DeExt = "2364"
                                        $Fax = "(603) 436-2386"
                                        }

                                "Pembroke" {
                                        $Local = "NH"
                                        $Address = "709 Keith Avenue"
                                        $ServCity = "Pembroke"
                                        $Zip = "03275"
                                        $PhoneArea = "(603) 410-"
                                        $DeExt = "1150"
                                        $Fax = "(603) 410-1151"
                                        }


                                {($_ -eq "CT") -or ($_ -eq "Connecticut") -or ($_ -eq "Durham")} {
                                        $Local = "CT"
                                        $Address = "92 Commerce Circle"
                                        $ServCity = "Durham"
                                        $Zip = "06422"
                                        $PhoneArea = "(203) 268-"
                                        $DeExt = "7046"
                                        $Fax = "(203) 268-7105"
                                        }


                                {($_ -eq "NJ") -or ($_ -eq "New Jersey") -or ($_ -eq "NewJersey") -or ($_ -eq "Kearny")} {
                                        $Local = "NJ"
                                        $Address = "9 Basin Drive, Suite 190"
                                        $ServCity = "Kearny"
                                        $Zip = "07032"
                                        $PhoneArea = "(973) 344-"
                                        $DeExt = "2309"
                                        $Fax = "(508) 966-4861"}


                                {($_ -eq "FL") -or ($_ -eq "Florida") -or ($_ -eq "Tampa")} {
                                        $Local = "FL"
                                        $Address = "4015 W Osborne Avenue"
                                        $ServCity = "Tampa"
                                        $Zip = "33614"
                                        $PhoneArea = "(813) 817-"
                                        $DeExt = "2613"
                                        $Fax = "(813) 871-2942"
                                        }


                                {($_ -eq "NY") -or ($_ -eq "New York") -or ($_ -eq "NewYork") -or ($_ -eq "Albany")} {
                                        $Local = "NY"
                                        $Address = "14 Walker Way, Unit 3"
                                        $ServCity = "Albany"
                                        $Zip = "12205"
                                        $PhoneArea = "(518) 464-"
                                        $DeExt = "7622"
                                        $Fax = "(518) 464-7633"
                                        }

                                default {
                                    Write-Warning "Invalid response."
                                    continue serviceloop
                                }
                            }

                        Write-Host "$ServCity, $Local"

                        <#$Correct6 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct6 -eq "y" -or $Correct6 -eq "Y"){
                                break
                          }#>
                        break    
                        }


                    <#:serviceloop while(1) {
                        $Ext = Read-Host "Enter 4 Digit Extention (If no mobile number, just leave blank and hit enter)"
                        if ("0" -eq ($Ext | measure-object -character | select -expandproperty characters)){
                                Write-Host "No Extention."
                                $Ext = $DeExt
                         }
                        elseif ( "4" -ne ($Ext | measure-object -character | select -expandproperty characters)){
                                Write-Host "Invalid response."
                                continue serviceloop
                         }
                        else{
                                Write-Host $Ext
                         }
                       
                        $Correct7 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct7 -eq "y" -or $Correct7 -eq "Y"){
                                break
                          }
                        else {
                                continue serviceloop
                              }
                       }
                    #>
                    #remove next line if using extension script
                    $Ext = $DeExt
                    #^^^^^^^^^^^^^^

                    :serviceloop while(1) {
                        $MobilePh = Read-Host "Enter 10 Digit Mobile Number (no hyphens or parentheses)(If no mobile number, just leave blank and hit enter)"
                        if ( "0" -eq ($MobilePh | measure-object -character | select -expandproperty characters)){
                                Write-Host "No Mobile Number."
                                break
                                }
                        elseif (10 -eq ($MobilePh | measure-object -character | select -expandproperty characters)){
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

                        <#$Correct8 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct8 -eq "y" -or $Correct8 -eq "Y"){
                                break
                          }#>
        
                            }


                    :serviceloop while(1) {
                        $Company = Read-Host "Enter Company (ENPRO, TMC Environmental, ENPRO Environmental)"
                        switch ($Company)
                            {
                                {($_ -eq "ENPRO") -or ($_ -eq "EN")} {
                                        $Company = "ENPRO"
                                        $emailending = "enpro.com"
                                        }
                                {($_ -eq "TMC Environmental") -or ($_ -eq "TMC")} {
                                        $Company = "TMC Environmental"
                                        $emailending = "tmcenvironmental.com"
                                        }
                                {($_ -eq "ENPRO Environmental") -or ($_ -eq "ENPEnv")} {
                                        $Company = "ENPRO Environmental"
                                        $emailending = "enpro.com"
                                        }

                                default {
                                    Write-Warning "Invalid response."
                                    continue serviceloop
                                }
                            }

                        Write-Host $Company

                       <#$Correct9 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct9 -eq "y" -or $Correct9 -eq "Y"){
                                break
                          }#>

                        break
        
                        }


                    $EmailAddress = $User +"@" + $emailending


                    $Phone = $PhoneArea + $Ext


                    $FullNameWS = $First + " " + $LastD


    Write-Host `n
    Write-Host "User's Last Name Is: " $Last
    Write-Host "User's First Name Is :" $First
    Write-Host "User's Department Is :" $Dept
    Write-Host "User's Location Is :" $ServCity"," $Local
    Write-Host "User's Job Title Is :" $Title
    #Write-Host "User's Extention :" $Ext
    Write-Host "User's Phone Number :" $Phone
    Write-Host "User's Fax Number :" $Fax
    Write-Host "User's Mobile Phone Number :" $MobilePh
    Write-Host "User's Email Address :" $EmailAddress



    #The following code converts the phone numbers with parentheses and dashes to a phone number with dots (to follow the naming convention of AD)

    if (1 -lt ($MobilePh | measure-object -character | select -expandproperty characters)){
            $MobilePh = ($MobilePh.Substring(1,$MobilePh.Length-11)) + "." + ($MobilePh.Substring(6,$MobilePh.Length-11)) + "." + $MobilePh.substring($MobilePh.length - 4, 4)
            }

    $Phone = ($Phone.Substring(1,$Phone.Length-11)) + "." + ($Phone.Substring(6,$Phone.Length-11)) + "." + $Phone.substring($Phone.length - 4, 4)
    $Fax = ($Fax.Substring(1,$Fax.Length-11)) + "." + ($Fax.Substring(6,$Fax.Length-11)) + "." + $Fax.substring($Fax.length - 4, 4)



    #User Verification by creator

    $Correct10 = Read-Host "Is all this Inofrmation correct? [y/n]"
 
    if ($Correct10 -eq "y" -or $Correct10 -eq "Y") {
        Start-Sleep -s 1
        
        #Create a Timestamp for CSV
        $a = Get-Date
        $Timestamp = "$a.Day" + "/" + "$a.Month" + "/" + "$a.Year" + " UT: " +"$a.ToUniversalTime()"

        #Add a place for the CSV to go
        $CurrentUser = [Environment]::UserName
        [system.io.directory]::CreateDirectory("C:\Users\$CurrentUser\Desktop\NewUsers") | Out-Null 

        #Now Add CSV creation/appending
            New-Object -TypeName PSCustomObject -Property @{
                "Timestamp" = $Timestamp
                "Username" = $User
                "Last Name" = $Last
                "First Name" = $First
                "Department" = $Dept
                "Job Title" = $Title
                "Company" = $Company
                "Address" = $Address
                "State" = $Local
                "City" = $ServCity
                "Zip Code" = $Zip
                "Extension" = $Ext
                "Work Phone" = $Phone
                "Mobile Phone" = $MobilePh
                "Email Address" = $EmailAddress
            } | Export-Csv -Path "C:\Users\$CurrentUser\Desktop\NewUsers\Newuser $(((get-date).ToUniversalTime()).ToString("yyyyMMddThhmmssZ")).csv" -NoTypeInformation  <#-Append#> | Out-Null 

        #Chose OU Path
            switch ($Local){
                "MA" {
                        if ($Dept -eq "Accounting"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Field Services"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Operations"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Transportation and Disposal"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Project Management"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Supervisors and Foremen"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Human Resources"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Information Technology"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Marketing"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Sales"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Health and Safety"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        else    {
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        }
                     

                "VT" {
                        if ($Dept -eq "Accounting"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Field Services"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Operations"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Transportation and Disposal"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Project Management"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Supervisors and Foremen"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Human Resources"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Information Technology"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Marketing"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Sales"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Health and Safety"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        else    {
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        }

                    "ME" {
                        if ($Dept -eq "Accounting"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Field Services"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Operations"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Transportation and Disposal"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Project Management"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Supervisors and Foremen"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Human Resources"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Information Technology"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Marketing"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Sales"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Health and Safety"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        else    {
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        }

                    "NH" {
                        if ($Dept -eq "Accounting"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Field Services"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Operations"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Transportation and Disposal"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Project Management"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Supervisors and Foremen"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Human Resources"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Information Technology"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Marketing"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Sales"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Health and Safety"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        else    {
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        }

                    "CT" {
                        if ($Dept -eq "Accounting"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Field Services"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Operations"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Transportation and Disposal"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Project Management"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Supervisors and Foremen"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Human Resources"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Information Technology"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Marketing"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Sales"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Health and Safety"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        else    {
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        }

                    "NJ" {
                        if ($Dept -eq "Accounting"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Field Services"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Operations"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Transportation and Disposal"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Project Management"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Supervisors and Foremen"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Human Resources"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Information Technology"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Marketing"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Sales"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Health and Safety"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        else    {
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        }

                    "FL" {
                        if ($Dept -eq "Accounting"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Field Services"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Operations"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Transportation and Disposal"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Project Management"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Supervisors and Foremen"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Human Resources"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Information Technology"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Marketing"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Sales"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Health and Safety"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        else    {
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        }

                    "NY" {
                        if ($Dept -eq "Accounting"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Field Services"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Operations"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Transportation and Disposal"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Project Management"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Supervisors and Foremen"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Human Resources"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Information Technology"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Marketing"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Sales"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        elseif ($Dept -eq "Health and Safety"){
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        else    {
                                $Path = "OU=New Users,OU=TMC,DC=MainOffice,DC=hazmatt,DC=com"
                                }
                        }
                      
                  
                default {
                    Write-Warning "An Error Has Occurred, where the department entered does not have a match
                     to the paths for which an end user should go. In this case the user will be in the New Users Organizational Unit (almost like a folder).
                     Please contact the administrator in order to convey this message."
                    break
                }
            }


        #Now Add New-ADUser Creation
            New-ADUser -Name $FullNameWS -AccountPassword (ConvertTo-SecureString -AsPlainText "Reset321" -Force) -ChangePasswordAtLogon $true -City $ServCity -Company $Company -Department $Dept -Description $Local -DisplayName $FullNameWS -EmailAddress $EmailAddress -Fax $Fax -GivenName $First -HomeDirectory \\leia\users\"$User" -HomeDrive "z" -Initials $MiddleI -MobilePhone $MobilePh <#-OfficePhone $Phone#> -Organization $Company -PostalCode $Zip -SamAccountName $User  -State $local -StreetAddress $Address -Surname $Last -Title $Title -UserPrincipalName $EmailAddress -Path $Path <#-Confirm#> -PassThru | Enable-ADAccount
            Set-ADUser $User -Add @{otherTelephone=$Phone} 
        

        #If no cell than it will add "no cell" to phone description
            if ( "0" -eq ($MobilePh | measure-object -character | select -expandproperty characters)){
                    Set-ADUser $User -Replace @{info='no cell'}
                    }
        #Now Add Group Association
            
            Add-ADGroupMember -Identity "General" -Members $User
            Add-ADGroupMember -Identity "Global" -Members $User

            #Add more group associations based on location
                
                switch ($Local){
                        "MA" {
                                Add-ADGroupMember -Identity "MA" -Members $User
                                }
                        "VT" {
                                Add-ADGroupMember -Identity "VT" -Members $User
                                }
                        "ME" {
                                Add-ADGroupMember -Identity "ME" -Members $User
                                }
                        "NH" {
                                Add-ADGroupMember -Identity "NH" -Members $User
                                }
                        "CT" {
                                Add-ADGroupMember -Identity "CT" -Members $User
                                }
                        "NJ" {
                                Add-ADGroupMember -Identity "NJ" -Members $User
                                }
                        "FL" {
                                Add-ADGroupMember -Identity "FL" -Members $User
                                }
                        "NY" {
                                Add-ADGroupMember -Identity "NY" -Members $User
                                }

                        default {
                            Write-Warning "An Error Has Occurred."
                            break
                            }
                        }
              #Add more group associations based on department
                
                switch ($Dept)
                       {
                        "Accounting" {
                                Add-ADGroupMember -Identity "Accounting" -Members $User
                                Add-ADGroupMember -Identity "Timberline" -Members $User
                                     }
                        "Field Serveces" {
                                Add-ADGroupMember -Identity "Notify" -Members $User
                                }
                        "Operations" {
                                Add-ADGroupMember -Identity "logistics" -Members $User
                                Add-ADGroupMember -Identity "Project Managers" -Members $User
                                     }
                        "Transportation and Disposal" {
                                Add-ADGroupMember -Identity "fm" -Members $User
                                Add-ADGroupMember -Identity "Notify" -Members $User
                                Add-ADGroupMember -Identity "logistics" -Members $User
                                Add-ADGroupMember -Identity "Project Managers" -Members $User
                                Add-ADGroupMember -Identity "PM" -Members $User
                                Add-ADGroupMember -Identity "sc" -Members $User
                                Add-ADGroupMember -Identity "Timberline" -Members $User
                                Add-ADGroupMember -Identity "TMC Retail" -Members $User
                                Add-ADGroupMember -Identity "TND" -Members $User
                                Add-ADGroupMember -Identity "xtramart" -Members $User
                                     }
                        "Project Management" {
                                Add-ADGroupMember -Identity "Notify" -Members $User
                                Add-ADGroupMember -Identity "logistics" -Members $User
                                Add-ADGroupMember -Identity "Project Managers" -Members $User
                                Add-ADGroupMember -Identity "PM" -Members $User
                                Add-ADGroupMember -Identity "Timberline" -Members $User
                                     }
                        "Human Resources" {
                                Add-ADGroupMember -Identity "HSC" -Members $User
                                Add-ADGroupMember -Identity "Project Managers" -Members $User
                                     }
                        "Information Technology" {
                                Add-ADGroupMember -Identity "Marketing" -Members $User
                                Add-ADGroupMember -Identity "Project Managers" -Members $User
                                     }
                        "Marketing" {
                                Add-ADGroupMember -Identity "Marketing" -Members $User
                                Add-ADGroupMember -Identity "marketingadmin" -Members $User
                                Add-ADGroupMember -Identity "Steam" -Members $User
                                Add-ADGroupMember -Identity "Project Managers" -Members $User
                                     }
                        "Sales" {
                                Add-ADGroupMember -Identity "Marketing" -Members $User
                                Add-ADGroupMember -Identity "logistics" -Members $User
                                Add-ADGroupMember -Identity "Project Managers" -Members $User
                                Add-ADGroupMember -Identity "Steam" -Members $User
                                     }
                        "Supervisors and Foremen" {
                                Add-ADGroupMember -Identity "Project Managers" -Members $User
                                     }
                        "Health and Safety" {
                                Add-ADGroupMember -Identity "Notify" -Members $User
                                     }
                        default {
                            Write-Warning "An Error Has Occurred."
                            break
                            }
                        }

       #Create a new mailbox in exchange
        $Correct11 = Read-Host "Would you like to add a mailbox?"
        if ($Correct11 -eq "y" -or $Correct11 -eq "Y"){
                $ErrorActionPreference = "SilentlyContinue"
                add-pssnapin Microsoft.Exchange.Management.PowerShell.E2010
                Enable-Mailbox -Identity $EmailAddress
                }

            
        Write-Host "New User Added"

        #Added loop back and create another user afterwards

        $Correct12 = Read-Host "Would you like to add a another new user?"
        if ($Correct12 -eq "y" -or $Correct12 -eq "Y"){
                Write-Host "Okay Add a New User`n"
                Start-Sleep -s 1
                continue serviceloop
                }
        else{
                Write-Host "`n Okay then. Goodbye.`n"
                Start-Sleep -s 1
                break
                }     
        }



    else{
            Write-Host "`n Retry Entering Information.`n"
            continue serviceloop
        }     
    }
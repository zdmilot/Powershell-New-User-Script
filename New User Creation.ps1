Write-Host "**********************************************************************************`n
            
Powershell New Ad User Script`n
   Writen By: Zachary Milot`n
     Special thanks to William Stevens for helping edit loop`n
            
**********************************************************************************`n"

:serviceloop while(1) {
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


              :serviceloop while(1) {
                        $First = Read-Host "Enter First Name"

                        $First = (Get-Culture).textinfo.totitlecase(“$First”.tolower())

                        Write-Host $First

                        $Correct2 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct2 -eq "y" -or $Correct2 -eq "Y") {
                            break
                                  }
                        }
 


                    $User = $First[0] + $Last

                    $User = “$user”.tolower()

                        Write-Host `nUsername is:($User)`n



                    :serviceloop while(1) {
                        $Dept = Read-Host "Enter Department"
                        switch ($Dept)
                            {
                                "Accounting" {$Dept = "Accounting"}
                                "Account" {$Dept = "Accounting"}
                                "Field" {$Dept = "Field Technician"}
                                "Field Technician" {$Dept = "Field Technician"}
                                "Field Tech" {$Dept = "Field Technician"}
                                "Field Tech." {$Dept = "Field Technician"}
                                "FT" {$Dept = "Field Technician"}
                                "Ops" {$Dept = "Operations"}
                                "Operations" {$Dept = "Operations"}
                                "Transportation and Disposal" {$Dept = "Transportation and Disposal"}
                                "Transportation & Disposal" {$Dept = "Transportation and Disposal"}
                                "Transportation" {$Dept = "Transportation and Disposal"}
                                "Disposal" {$Dept = "Transportation and Disposal"}
                                "T & D" {$Dept = "Transportation and Disposal"}
                                "T&D" {$Dept = "Transportation and Disposal"}
                                "TD" {$Dept = "Transportation and Disposal"}
                                "T and D" {$Dept = "Transportation and Disposal"}
                                "Transport" {$Dept = "Transportation and Disposal"}
                                "Project Manager" {$Dept = "Project Manager"}
                                "Project" {$Dept = "Project Manager"}
                                "PM" {$Dept = "Project Manager"}
                                "Human Resources" {$Dept = "Human Resources"}
                                "Human" {$Dept = "Human Resources"}
                                "HR" {$Dept = "Human Resources"}
                                "Resources" {$Dept = "Human Resources"}
                                "Resources" {$Dept = "Human Resources"}
                                "Information Technology" {$Dept = "Information Technology"}
                                "Information Services" {$Dept = "Information Technology"}
                                "IT" {$Dept = "Information Technology"}
                                "IS" {$Dept = "Information Technology"}


                                default {
                                    Write-Host "Invalid response."
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
                        $Title = Read-Host "Enter Job Title"

                        $Title = (Get-Culture).textinfo.totitlecase(“$Title”.tolower())

                        Write-Host $Title

                        $Correct4 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct4 -eq "y" -or $Correct4 -eq "Y") {
                            break
                                  }
                        }

                    :serviceloop while(1) {
                        $Local = Read-Host "Enter Service Center Location"
                        switch ($Local)
                            {
                                "MA" {$Local = "MA"
                                      $ServCity = "Franklin"
                                      $PhoneArea = "(508) 966-"
                                      $Fax = "(508) 966-4861"}
                                "Mass" {$Local = "MA"
                                        $ServCity = "Franklin"
                                        $PhoneArea = "(508) 966-"
                                        $Fax = "(508) 966-4861"}
                                "Massachusetts" {$Local = "MA"
                                                 $ServCity = "Franklin"
                                                 $Phone = "(508) 966-"
                                                 $Fax = "(508) 966-4861"}
                                "Franklin" {$Local = "MA"
                                            $ServCity = "Franklin"
                                            $PhoneArea = "(508) 966-"
                                            $Fax = "(508) 966-4861"}
                                "VT" {$Local = Read-Host "Burlington or Brattleboro"}
                                "Vermont" {$Local = Read-Host "Burlington or Brattleboro"}
                                "Burlington" {$Local = "VT"
                                               $ServCity = $Local
                                              $PhoneArea = "(508) 966-"
                                              $Fax = "(508) 966-4861"}
                                "Brattleboro" {$Local = "VT"
                                               $ServCity = $Local
                                               $PhoneArea = "(508) 966-"
                                               $Fax = "(508) 966-4861"}
                                "ME" {$Local = "ME"
                                      $ServCity = "Portland"
                                      $PhoneArea = "(508) 966-"
                                      $Fax = "(508) 966-4861"}
                                "Maine" {$Local = "ME"
                                         $ServCity = "Portland"
                                         $PhoneArea = "(508) 966-"
                                         $Fax = "(508) 966-4861"}
                                "Portland" {$Local = "ME"
                                            $ServCity = "Portland"
                                            $PhoneArea = "(508) 966-"
                                            $Fax = "(508) 966-4861"}
                                "NH" {$Local = "NH"
                                      $ServCity = "Portsmith"
                                      $Phone = "(508) 966-"
                                      $Fax = "(508) 966-4861"}
                                "New Hampshire" {$Local = "NH"
                                                 $ServCity = "Portsmith"
                                                 $PhoneArea = "(508) 966-"
                                                 $Fax = "(508) 966-4861"}
                                "Portsmith" {$Local = "NH"
                                             $ServCity = "Portsmith"
                                             $PhoneArea = "(508) 966-"
                                             $Fax = "(508) 966-4861"}
                                "Connecticut" {$Local = "CT"
                                               $ServCity = "Durham"
                                               $PhoneArea = "(508) 966-"
                                               $Fax = "(508) 966-4861"}
                                "CT" {$Local = "CT"
                                      $ServCity = "Durham"
                                      $PhoneArea = "(860) 349-"
                                      $Fax = "(508) 966-4861"}
                                "Durham" {$Local = "CT"
                                          $ServCity = "Durham"
                                          $PhoneArea = "(860) 349-"
                                          $Fax = "(508) 966-4861"}
                                "NJ" {$Local = "NJ"
                                      $ServCity = "Kearny"
                                      $PhoneArea = "(508) 966-"
                                      $Fax = "(508) 966-4861"}
                                "New Jersey" {$Local = "NJ"
                                              $ServCity = "Kearny"
                                              $PhoneArea = "(508) 966-"
                                              $Fax = "(508) 966-4861"}
                                "Kearny" {$Local = "NJ"
                                          $ServCity = "Kearny"
                                          $PhoneArea = "(508) 966-"
                                          $Fax = "(508) 966-4861"}
                                "FL" {$Local = "FL"
                                      $ServCity = "Lake City"
                                      $PhoneArea = "(508) 966-"
                                      $Fax = "(508) 966-4861"}
                                "Florida" {$Local = "FL"
                                           $ServCity = "Lake City"
                                           $PhoneArea = "(508) 966-"
                                           $Fax = "(508) 966-4861"}
                                "Lake City" {$Local = "FL"
                                             $ServCity = "Lake City"
                                             $PhoneArea = "(508) 966-"
                                             $Fax = "(508) 966-4861"}
                                default {
                                    Write-Host "Invalid response."
                                    continue serviceloop
                                }
                            }

                        Write-Host $Local

                        $Correct5 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct5 -eq "y" -or $Correct5 -eq "Y") {
                            break
                        }     
                        }


                    :serviceloop while(1) {
                        $Ext = Read-Host "Enter 4 Digit Extention"
                        if ("4" -ne ($Ext | measure-object -character | select -expandproperty characters))
                                    {Write-Host "Invalid response."
                                    continue serviceloop
                                }

                        Write-Host $Ext

                        $Correct6 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct6 -eq "y" -or $Correct6 -eq "Y") {
                            break
                            }
                        else {
                            continue serviceloop
                            }
                            }


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

                        $Correct7 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct7 -eq "y" -or $Correct7 -eq "Y") {
                            break
                            }
                        else {
                            continue serviceloop
                            }
        
                            }


                    :serviceloop while(1) {
                        $Company = Read-Host "Enter Company (ENPRO, TMC Environmental, ENPRO Environmental)"
                        switch ($Company)
                            {
                                "ENPRO" {$Company = "ENPRO"
                                         $emailending = "enpro.com"}
                                "EN" {$Company = "ENPRO"
                                      $emailending = "enpro.com"}
                                "TMC Environmental" {$Company = "TMC Environmental"
                                                     $emailending = "tmcenvironmental.com"}
                                "TMC"  {$Company = "TMC Environmental"
                                        $emailending = "tmcenvironmental.com"}
                                "ENPEnv" {$Company = "ENPRO Environmental"
                                          $emailending = "enproenv.com"}
                                default {
                                    Write-Host "Invalid response."
                                    continue serviceloop
                                }
                            }

                        Write-Host $Company

                        $Correct8 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct8 -eq "y" -or $Correct8 -eq "Y") {
                            break
                        }
        
                        }


                    $EmailAddress = $User +"@" + $emailending


                    $Phone = $PhoneArea + $Ext


                    $Initials = $First[0] + $Last[0]


Write-Host `n
Write-Host "User's Last Name Is: " $Last
Write-Host "User's First Name Is :" $First
Write-Host "User's Department Is :" $Dept
Write-Host "User's Location Is :" $ServCity"," $Local
Write-Host "User's Job Title Is :" $Title
Write-Host "User's Extention :" $Ext
Write-Host "User's Phone Number :" $Phone
Write-Host "User's Fax Number :" $Fax
Write-Host "User's Mobile Phone Number :" $MobilePh
Write-Host "User's Email Address :" $EmailAddress

$Correct3 = Read-Host "Is all this Inofrmation correct? [y/n]"
 
if ($Correct3 -eq "y" -or $Correct3 -eq "Y") {
    Start-Sleep -s 1
    Write-Host "Would you like to add a another new user?"

    #Add user creation code so that it can loop back and create another user afterwards (possably ask in an if loop to ask if you want to add another user)

    #Now Add CSV creation/appending

    #Now Add New-ADUser Creation
    #New-ADUser -Name $First$Last -AccountPassword "Start02019" -ChangePasswordAtLogon 1 -City $ServCity -Company $Company -Country "USA" -Department $Dept -DisplayName $User -Division $Dept -EmailAddress $EmailAddress -Fax $Fax -GivenName $First -HomeDirectory \\leia\users\"$User" -HomeDrive "z" -Initials $Initials -MobilePhone $MobilePh [-Office <string>] -OfficePhone $Phone -Organization $Company [-PostalCode <string>] [-ProfilePath <string>] [-SamAccountName <string>] [-ScriptPath <string>] [-Server <string>] [-State <string>] [-StreetAddress <string>] [-Surname <string>] -Title $Title [-UserPrincipalName <string>] -Confirm

    #Now Add Group Association
    #Add-ADGroupMember [-Identity] <ADGroup> [-Members] <ADPrincipal[]> [-AuthType {<Negotiate> | <Basic>}] [-Credential <PSCredential>] [-Partition <string>] [-PassThru <switch>] [-Server <string>] [-Confirm] [-WhatIf] [<CommonParameters>]

    Write-Host "New User Added"

    $Correct4 = Read-Host "Would you like to add a another new user?"
    if ($Correct4 -eq "y" -or $Correct4 -eq "Y") {
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
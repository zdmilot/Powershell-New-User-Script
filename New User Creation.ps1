
$Last = Read-Host "Enter Last Name"
if (($Last[0] + $Last[1]) -eq "mc")
{
    do {
    $Last1 = $Last[0] + $Last[1]
    $Last2 = $Last.substring(2)
    $Last = (Get-Culture).textinfo.totitlecase(“$Last1”.tolower()) + (Get-Culture).textinfo.totitlecase(“$Last2”.tolower())

       write-Host $Last

       $Correct1 = Read-Host "Is this correct? [y/n]"

        if ($Correct1 -ne "Y")
             {$Last = Read-Host "Sorry try it again"
             }
        else
                {break
              }
         }
    While (($Last[0] + $Last[1]) -eq "mc")
}
#If you accidentally dont enter mc in the first place then it wont correct the capitalization but there is corection code below anyway
else
    {$Last = (Get-Culture).textinfo.totitlecase(“$Last”.tolower())

      Write-Host $Last

    $Correct1 = Read-Host "Is this correct? [y/n]"

    if ($Correct1 -ne "Y")
         {$Last = Read-Host "Sorry try it again"
            $Last = (Get-Culture).textinfo.totitlecase(“$Last”.tolower())
                    Write-Host $Last
         }
         }
#So this is put in there just in case
if (($Last[0] + $Last[1]) -eq "mc")
    {
    $Last1 = $Last[0] + $Last[1]
    $Last2 = $Last.substring(2)
    $Last = (Get-Culture).textinfo.totitlecase(“$Last1”.tolower()) + (Get-Culture).textinfo.totitlecase(“$Last2”.tolower())
    }
else
    {}


             
$First = Read-Host "Enter First Name"

$First = (Get-Culture).textinfo.totitlecase(“$First”.tolower())

    Write-Host $First

$Correct2 = Read-Host "Is this correct? [y/n]"

if ($Correct1 -ne "Y")
        {$First = Read-Host "Sorry try it again"
           $First = (Get-Culture).textinfo.totitlecase(“$First”.tolower())
                Write-Host $First
        }
else    {
        }



$User = $First[0] + $Last

$User = “$user”.tolower()

    Write-Host `nUsername is:($User)`n



:serviceloop while(1) {
    $Dept = Read-Host "Enter Department"
    switch ($Dept)
        {
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
    $Local = Read-Host "Enter Service Center Location"
    switch ($Local)
        {
            "MA" {$Local = "MA"
                  $PhoneArea = "(508) 966-"}
            "Mass" {$Local = "MA"
                    $PhoneArea = "(508) 966-"}
            "Massachusetts" {$Local = "MA"
                             $Phone = "(508) 966-"}
            "Franklin" {$Local = "MA"
                        $PhoneArea = "(508) 966-"}
            "VT" {$Local = Read-Host "Burlington or Brattleboro"
                  $PhoneArea = "(508) 966-"}
            "Vermont" {$Local = Read-Host "Burlington or Brattleboro"
                       $PhoneArea = "(508) 966-"}
            "Burlington" {$Local = "Burlington"
                          $PhoneArea = "(508) 966-"}
            "Brattleboro" {$Local = "Brattleboro"
                           $PhoneArea = "(508) 966-"}
            "ME" {$Local = "ME"
                  $PhoneArea = "(508) 966-"}
            "Maine" {$Local = "ME"
                     $PhoneArea = "(508) 966-"}
            "Portland" {$Local = "ME"
                        $PhoneArea = "(508) 966-"}
            "NH" {$Local = "NH"
                  $Phone = "(508) 966-"}
            "New Hampshire" {$Local = "NH"
                             $PhoneArea = "(508) 966-"}
            "Portsmith" {$Local = "NH"
                         $PhoneArea = "(508) 966-"}
            "Connecticut" {$Local = "CT"
                           $PhoneArea = "(508) 966-"}
            "Durham" {$Local = "CT"
                      $PhoneArea = "(508) 966-"}
            "NJ" {$Local = "NJ"
                  $PhoneArea = "(508) 966-"}
            "New Jersey" {$Local = "NJ"
                          $PhoneArea = "(508) 966-"}
            "Kearny" {$Local = "NJ"
                      $PhoneArea = "(508) 966-"}
            "FL" {$Local = "FL"
                  $PhoneArea = "(508) 966-"}
            "Florida" {$Local = "FL"
                       $PhoneArea = "(508) 966-"}
            "Lake City" {$Local = "FL"
                         $PhoneArea = "(508) 966-"}
            default {
                Write-Host "Invalid response."
                continue serviceloop
            }
        }

    Write-Host $Local

    $Correct4 = Read-Host "Is this correct? [y/n]"
 
    if ($Correct4 -eq "y" -or $Correct4 -eq "Y") {
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

    $Correct5 = Read-Host "Is this correct? [y/n]"
 
    if ($Correct5 -eq "y" -or $Correct5 -eq "Y") {
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

    $Correct6 = Read-Host "Is this correct? [y/n]"
 
    if ($Correct6 -eq "y" -or $Correct6 -eq "Y") {
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

    $Correct6 = Read-Host "Is this correct? [y/n]"
 
    if ($Correct6 -eq "y" -or $Correct6 -eq "Y") {
        break
    }
        
    }


$EmailAddress = $User +"@" + $emailending


$Phone = $PhoneArea + $Ext


Write-Host "User's Last Name Is: " $Last
Write-Host "User's First Name Is :" $First
Write-Host "User's Department Is :" $Dept
Write-Host "User's Location Is :" $Local
Write-Host "User's Extention :" $Ext
Write-Host "User's Phone Number :" $Phone
Write-Host "User's Mobile Phone Number :" $MobilePh
Write-Host "User's Email Address :" $EmailAddress

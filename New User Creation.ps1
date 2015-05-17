
$Last = Read-Host "Enter Last Name"
if (($Last[0] + $Last[1]) -eq "mc")
{
    do {
    $Last1 = $Last[0] + $Last[1]
    $Last2 = $Last.substring(2)
    $Last = (Get-Culture).textinfo.totitlecase(“$Last1”.tolower()) + (Get-Culture).textinfo.totitlecase(“$Last2”.tolower())

       write-Host $Last

       $Correct1 = Read-Host "If This is Correct Press Enter, If not type n then enter"

        if ($Correct1 -eq "no", "n")
             {$Last = Read-Host "Sorry try it again"
             }
        elseif ($Correct1 -eq "n")
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

    $Correct1 = Read-Host "If This is Correct Press Enter, If not type n then enter"

    if ($Correct1 -eq "no", "n")
         {$Last = Read-Host "Sorry try it again"
            $Last = (Get-Culture).textinfo.totitlecase(“$Last”.tolower())
                    Write-Host $Last
         }
    elseif ($Correct1 -eq "n")
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

$Correct2 = Read-Host "If This is Correct Press Enter, If not type n then enter"

if ($Correct2 -eq "no")
        {$First = Read-Host "Sorry try it again"
           $First = (Get-Culture).textinfo.totitlecase(“$First”.tolower())
                Write-Host $First
        }
elseif ($Correct2 -eq "n")
        {$First = Read-Host "Sorry try it again"
           $First = (Get-Culture).textinfo.totitlecase(“$First”.tolower())
                Write-Host $First
        }



$user = $First[0] + $Last

    Write-Host `nUsername is:(“$user”.tolower())`n



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

    $Correct5 = Read-Host "If This is Correct Press Enter, If not type n then enter"
 
    if ($Correct5 -ne "n" -or $Correct5 -ne "no") {
        break
    }
        
    }



:serviceloop while(1) {
    $Local = Read-Host "Enter Service Center Location"
    switch ($Local)
        {
            "MA" {$Local = "MA"}
            "Mass" {$Local = "MA"}
            "Massachusetts" {$Local = "MA"}
            "Franklin" {$Local = "MA"}
            "VT" {$Local = Read-Host "Burlington or Brattleboro"}
            "Vermont" {$Local = Read-Host "Burlington or Brattleboro"}
            "Burlington" {$Local = "Burlington"}
            "Brattleboro" {$Local = "Brattleboro"}
            "ME" {$Local = "ME"}
            "Maine" {$Local = "ME"}
            "Portland" {$Local = "ME"}
            "NH" {$Local = "NH"}
            "New Hampshire" {$Local = "NH"}
            "Portsmith" {$Local = "NH"}
            "Connecticut" {$Local = "CT"}
            "Durham" {$Local = "CT"}
            "NJ" {$Local = "NJ"}
            "New Jersey" {$Local = "NJ"}
            "Kearny" {$Local = "NJ"}
            "FL" {$Local = "FL"}
            "Florida" {$Local = "FL"}
            "Lake City" {$Local = "FL"}
            default {
                Write-Host "Invalid response."
                continue serviceloop
            }
        }

    Write-Host $Local

    $Correct4 = Read-Host "If This is Correct Press Enter, If not type n then enter"
 
    if ($Correct4 -ne "n" -or $Correct4 -ne "no") {
        break
    }
        
    }

Write-Host "User's Last Name Is: " $Last
Write-Host "User's First Name Is :" $First
Write-Host "User's Department Is :" $Dept
Write-Host "User's Location Is :" $Local
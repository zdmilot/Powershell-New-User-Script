
$Local = Read-Host "Enter Service Center Location"

do {
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
            default {$Local = Read-Host "Sorry try it again"}

        }

    Write-Host $Local

    $Correct4 = Read-Host "If This is Correct Press Enter, If not type n then enter"
 
    if ($Correct4 -eq "no")
        {$Local = Read-Host "Sorry try it again"}
    elseif ($Correct4 -eq "n")
        {$Local = Read-Host "Sorry try it again"}

    }
while (($Local -ne "MA") -or ($Local -ne "NH") -or ($Local -ne "FL") -or ($Local -ne "CT") -or ($Local -ne "Brattleboro") -or ($Local -ne "Burlington") -or ($Local -ne "ME"))

write-host $Local
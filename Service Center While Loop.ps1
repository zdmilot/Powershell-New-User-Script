
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

    $Correct4 = Read-Host "Is this correct? [y/n]"
 
    if ($Correct4 -eq "y" -or $Correct4 -eq "Y") {
        break
    }
        
    }

write-host $Local

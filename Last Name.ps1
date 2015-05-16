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


Write-Host "here is the info you tped about the last name" $Last
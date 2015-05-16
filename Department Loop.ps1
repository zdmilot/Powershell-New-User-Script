$Dept = Read-Host "Enter Department"

$Correct3 = Read-Host "If This is Correct Press Enter, If not type n then enter"

if ($Correct3 -eq "no")
        {$Last = Read-Host "Sorry try it again"}
elseif ($Correct3 -eq "n")
        {$Last = Read-Host "Sorry try it again"}
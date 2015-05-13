
$Last = Read-Host "Enter Last Name"

$Last = (Get-Culture).textinfo.totitlecase(“$Last”.tolower())

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

$Dept = Read-Host "Enter Department"

$Correct3 = Read-Host "If This is Correct Press Enter, If not type n then enter"

if ($Correct3 -eq "no")
        {$Last = Read-Host "Sorry try it again"}
elseif ($Correct3 -eq "n")
        {$Last = Read-Host "Sorry try it again"}

$Local = Read-Host "Enter Service Center Location"

$Correct4 = Read-Host "If This is Correct Press Enter, If not type n then enter"
 
if ($Correct4 -eq "no")
        {$Last = Read-Host "Sorry try it again"}
elseif ($Correct4 -eq "n")
        {$Last = Read-Host "Sorry try it again"}

do {
    switch ($Local)
        {
            MA {$Local = "MA"}
            ma {$Local = "MA"}
            mass {$Local = "MA"}
            Mass {$Local = "MA"}
            Massachusetts {$Local = "MA"}
            massachusetts {$Local = "MA"}
            Franklin {$Local = "MA"}
            franklin {$Local = "MA"}
            VT {$Local = Read-Host "Burlington or Brattleboro"}
            vt {$Local = Read-Host "Burlington or Brattleboro"}
            Vermont {$Local = Read-Host "Burlington or Brattleboro"}
            Burlington {$Local = "Burlington"}
            burlington {$Local = "Burlington"}
            Brattleboro {$Local = "Brattleboro"}
            brattleboro {$Local = "Brattleboro"}
            ME {$Local = "ME"}
            me {$Local = "ME"}
            Maine {$Local = "ME"}
            maine {$Local = "ME"}
            Portland {$Local = "ME"}
            portland {$Local = "ME"}
            NH {$Local = "NH"}
            nh {$Local = "NH"}
            New_Hampshire {$Local = "NH"}
            new_hampshire {$Local = "NH"}
            new_Hampshire {$Local = "NH"}
            New_hampshire {$Local = "NH"}
            New_hampshire {$Local = "NH"}
            New_hampshire {$Local = "NH"}
            Protsmith {$Local = "NH"}
            portsmith {$Local = "NH"}
            Connecticut {$Local = "CT"}
            connecticut {$Local = "CT"}
            Durham {$Local = "CT"}
            durham {$Local = "CT"}
            Kearny {$Local = "NJ"}
            kearny {$Local = "NJ"}
            NJ {$Local = "NJ"}
            nj {$Local = "NJ"}
            New_Jersey {$Local = "NJ"}
            New_jersey {$Local = "NJ"}
            new_Jersey {$Local = "NJ"}
            new_jersey {$Local = "NJ"}
            Lake_City {$Local = "NJ"}
            Lake_city {$Local = "FL"}
            lake_City {$Local = "FL"}
            FL {$Local = "FL"}
            fl {$Local = "FL"}
            florida {$Local = "FL"}
            Florida {$Local = "FL"}
            default {$Local = Read-Host "Sorry try it again"}

        }
    }
while ($Local -eq "MA", "NH", "FL", "CT", "Brattleboro", "Burlington", "ME")

Write-Host $Last
Write-Host $First
Write-Host $Dept
Write-Host $Local

#Imports relevent PS modules 
    set-Location "C:\Program Files\Quest Software\Management Shell for AD" 
    add-PSSnapin  quest.activeroles.admanagement 
     
 
#Get todays date 
$today = Get-Date -DisplayHint Date 
 
#Adds users to group based on attributes 
 
$dept = $_.DeptName 
$ADGroup = $_.GroupName 
 
$user = Get-QADUser -Department $dept -NotMemberOf $ADgroup -Enabled 
If (!($user)) {Write-output  "$Today,$Dept,No-Matching-Users-Found" >> $LogFile} 
    Else {Add-QADGroupMember $adgroup -member $user  
            Write-Output "$Today,$Dept,$user,DeptMatch-Was-Added-To-Group" >> $LogFile 
            }  
 
 
#Removes any disabled users from group 
$disableduser = Get-QADGroupMember $ADgroup -Disabled #check to see if users in group are disabled 
If(!($disableduser)) {Write-Output "$Today,$Dept,No-Disabled-Users-To-Remove" >> $Logfile} #if no disabled users are found write it to logfile 
    Else {Remove-QADGroupMember $ADGroup $disableduser  #if disabled users are found, remove them from the group 
        Write-Output "$Today,$Dept,$disableduser,DisabledUser-Was-Removed-From-Group" >>$logfile 
        } 
 
#Remove any user no longer in department 
#$groupmember = Get-QADGroupMember $ADGroup #gets all users left in group 
$groupmember = @(Get-QADGroupMember -Identity $ADGroup | Select-Object -expandproperty SamAccountName) 
 
If(!($groupmember)) {Write-Output "$Today,$Dept,Group-Was-Empty" >>$LogFile} #if no members are in the group write it to log file 
    #Else {$nolongermember = Get-QADUser $groupmember | Where-Object {$_.department -ne $dept} #otherwise get all users who are in the group but that don't match the required department 
    Else {$nolongermember = $groupmember | % {Get-QADUser -SamAccountName $_} | Where-Object {$_.department -ne $dept} 
    #if more then one user is found in the above line, the get-qaduser fails with 'idenity' specified method is not supported - so i think i need to do something like foreach but struggling to figure this part out 
    } 
 
If(!($nolongermember)) {Write-Output "$Today,$Dept,No-Users-To-Remove" >> $LogFile} 
    Else {Remove-QADGroupMember $ADGroup $nolongermember 
        Write-Output "$Today,$Dept,$nolongermember,DeptMisMatch-Was-Removed-From-Group" >>$logfile 
        } 
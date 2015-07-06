<#CSV file contains:

User,Group
User1,"CN=TestGroup,OU=TestOU,DC=TEST,DC=LOCAL"
User2,"CN=TestGroup2,OU=TestOU,DC=TEST,DC=LOCAL";"CN=TestGroup,OU=TestOU,DC=TEST,DC=LOCAL"

#>

#$Groups is a csv file with all of the user's groups that need to be added

$Groups | foreach {
    $User = $_.User
    $Group = $_.Group.Split(';')
    $Group | foreach {Add-ADGroupMember -Identity $_ -Member $User}
}
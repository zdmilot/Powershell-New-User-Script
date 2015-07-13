[regex]$regex = "^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$"
$v = $false
$i = 1

while($i -eq 1) {
if($v -eq $true){ Write-Host "Invalid Mobile Number..." -ForegroundColor Red }
$MobilePh = (Read-Host "Enter 10-digit Mobile Number, if no mobile number just leave blank and hit enter.").ToString()
$MobilePh.Length
$regex.Match($MobilePh)
if($MobilePh.Length -eq 0) {
    Write-Host "No mobile number."
    Break
}elseif($regex.Match($MobilePh).Success) {
    $groups = ($regex.Match($MobilePh)).Groups
    $mobile = "({0}) {1}-{2}" -f $groups[2].Value,$groups[3].Value,$groups[4].Value
    $i = 0
}elseif($regex.Match($MobilePh).Success -eq $false) {
    $v = $true
}
}

$mobile
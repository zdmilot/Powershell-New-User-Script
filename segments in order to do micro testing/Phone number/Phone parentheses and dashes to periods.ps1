$Phone= "(508) 988-0281"
$Phone = ($Phone.Substring(1,$Phone.Length-11)) + "." + ($Phone.Substring(6,$Phone.Length-11)) + "." + $Phone.substring($Phone.length - 4, 4)
Write-host $Phone
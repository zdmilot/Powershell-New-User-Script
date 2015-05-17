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
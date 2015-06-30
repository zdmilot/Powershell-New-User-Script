                    :serviceloop while(1) {
                        $Local = Read-Host "Enter Service Center Location"
                        switch ($Local)
                            {
                                "MA" {$Address = "19 National Drive"
                                      $Local = "MA"
                                      $ServCity = "Franklin"
                                      $Zip = "02038"
                                      $PhoneArea = "(508) 966-"
                                      $Fax = "(508) 966-4861"}
                                "Mass" {$Address = "19 National Drive"
                                        $Local = "MA"
                                        $ServCity = "Franklin"
                                        $Zip = "02038"
                                        $PhoneArea = "(508) 966-"
                                        $Fax = "(508) 966-4861"}
                                "Massachusetts" {$Address = "19 National Drive"
                                                 $Local = "MA"
                                                 $ServCity = "Franklin"
                                                 $Zip = "02038"
                                                 $Phone = "(508) 966-"
                                                 $Fax = "(508) 966-4861"}
                                "Franklin" {$Local = "MA"
                                            $Address = "19 National Drive"
                                            $ServCity = "Franklin"
                                            $Zip = "02038"
                                            $PhoneArea = "(508) 966-"
                                            $Fax = "(508) 966-4861"}
                                "VT" {$Local = Read-Host "Burlington or Brattleboro"}
                                "Vermont" {$Local = Read-Host "Burlington or Brattleboro"}
                                "Burlington" {$Local = "VT"
                                              $ServCity = $Local
                                              $PhoneArea = "(508) 966-"
                                              $Fax = "(508) 966-4861"}
                                "Brattleboro" {$Local = "VT"
                                               $ServCity = $Local
                                               $PhoneArea = "(508) 966-"
                                               $Fax = "(508) 966-4861"}
                                "ME" {$Local = "ME"
                                      $ServCity = "Portland"
                                      $PhoneArea = "(508) 966-"
                                      $Fax = "(508) 966-4861"}
                                "Maine" {$Local = "ME"
                                         $ServCity = "Portland"
                                         $PhoneArea = "(508) 966-"
                                         $Fax = "(508) 966-4861"}
                                "Portland" {$Local = "ME"
                                            $ServCity = "Portland"
                                            $PhoneArea = "(508) 966-"
                                            $Fax = "(508) 966-4861"}
                                "NH" {$Local = "NH"
                                      $ServCity = "Portsmith"
                                      $Phone = "(508) 966-"
                                      $Fax = "(508) 966-4861"}
                                "New Hampshire" {$Local = "NH"
                                                 $ServCity = "Portsmith"
                                                 $PhoneArea = "(508) 966-"
                                                 $Fax = "(508) 966-4861"}
                                "Portsmith" {$Local = "NH"
                                             $ServCity = "Portsmith"
                                             $PhoneArea = "(508) 966-"
                                             $Fax = "(508) 966-4861"}
                                "Connecticut" {$Local = "CT"
                                               $ServCity = "Durham"
                                               $PhoneArea = "(508) 966-"
                                               $Fax = "(508) 966-4861"}
                                "CT" {$Local = "CT"
                                      $ServCity = "Durham"
                                      $PhoneArea = "(860) 349-"
                                      $Fax = "(508) 966-4861"}
                                "Durham" {$Local = "CT"
                                          $ServCity = "Durham"
                                          $PhoneArea = "(860) 349-"
                                          $Fax = "(508) 966-4861"}
                                "NJ" {$Local = "NJ"
                                      $ServCity = "Kearny"
                                      $PhoneArea = "(508) 966-"
                                      $Fax = "(508) 966-4861"}
                                "New Jersey" {$Local = "NJ"
                                              $ServCity = "Kearny"
                                              $PhoneArea = "(508) 966-"
                                              $Fax = "(508) 966-4861"}
                                "Kearny" {$Local = "NJ"
                                          $ServCity = "Kearny"
                                          $PhoneArea = "(508) 966-"
                                          $Fax = "(508) 966-4861"}
                                "FL" {$Local = "FL"
                                      $ServCity = "Lake City"
                                      $PhoneArea = "(508) 966-"
                                      $Fax = "(508) 966-4861"}
                                "Florida" {$Local = "FL"
                                           $ServCity = "Lake City"
                                           $PhoneArea = "(508) 966-"
                                           $Fax = "(508) 966-4861"}
                                "Lake City" {$Local = "FL"
                                             $ServCity = "Lake City"
                                             $PhoneArea = "(508) 966-"
                                             $Fax = "(508) 966-4861"}
                                default {
                                    Write-Host "Invalid response."
                                    continue serviceloop
                                }
                            }

                        Write-Host $Local

                        $Correct5 = Read-Host "Is this correct? [y/n]"
 
                        if ($Correct5 -eq "y" -or $Correct5 -eq "Y") {
                            break
                        }     
                        }
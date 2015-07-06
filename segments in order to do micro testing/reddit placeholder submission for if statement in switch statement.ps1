switch ($Local)
            {
                  "MA" {if ($Dept = "Accounting")
                        {$Path = "OU=Office Employees,OU=Boston,OU=Company,DC=MainOffice,DC=company,DC=com"
                        }
                        elseif ($Dept = "Human Resources")
                        {$Path = "OU=Office Employees,OU=Boston,OU=Company,DC=MainOffice,DC=company,DC=com"
                        }
                      elseif ($Dept = "Information Technology")
                        {$Path = "OU=Company,DC=MainOffice,DC=company,DC=com"
                        }
                      }
                  "CA" {if ($Dept = "Accounting")
                        {$Path = "OU=Office Employees,OU=LA,OU=Company,DC=CaliOffice,DC=company,DC=com"
                        }
                        elseif ($Dept = "Human Resources")
                        {$Path = "OU=Office Employees,OU=LA,OU=Company,DC=CaliOffice,DC=company,DC=com"
                        }
                      elseif ($Dept = "Information Technology")
                        {$Path = "OU=Company,DC=MainOffice,DC=company,DC=com"
                        }
                      }
                    default {
                    Write-Warning "An Error Has Occurred."
                    break
                }
            }
:serviceloop while(1) {
    $Dept = Read-Host "Enter Department"
    switch ($Dept)
        {
            "Field" {$Dept = "Field Technician"}
            "Field Technician" {$Dept = "Field Technician"}
            "Field Tech" {$Dept = "Field Technician"}
            "Field Tech." {$Dept = "Field Technician"}
            "FT" {$Dept = "Field Technician"}
            "Ops" {$Dept = "Operations"}
            "Operations" {$Dept = "Operations"}
            "Transportation and Disposal" {$Dept = "Transportation and Disposal"}
            "Transportation & Disposal" {$Dept = "Transportation and Disposal"}
            "Transportation" {$Dept = "Transportation and Disposal"}
            "Disposal" {$Dept = "Transportation and Disposal"}
            "T & D" {$Dept = "Transportation and Disposal"}
            "T&D" {$Dept = "Transportation and Disposal"}
            "TD" {$Dept = "Transportation and Disposal"}
            "T and D" {$Dept = "Transportation and Disposal"}
            "Transport" {$Dept = "Transportation and Disposal"}
            "Project Manager" {$Dept = "Project Manager"}
            "Project" {$Dept = "Project Manager"}
            "PM" {$Dept = "Project Manager"}
            "Human Resources" {$Dept = "Human Resources"}
            "Human" {$Dept = "Human Resources"}
            "Resources" {$Dept = "Human Resources"}
            "Resources" {$Dept = "Human Resources"}
            "Information Technology" {$Dept = "Information Technology"}
            "Information Services" {$Dept = "Information Technology"}
            "IT" {$Dept = "Information Technology"}
            "IS" {$Dept = "Information Technology"}


            default {
                Write-Host "Invalid response."
                continue serviceloop
            }
        }

    Write-Host $Dept

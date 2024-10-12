#######################################
# HelloID-Conn-Prov-Source-Foederis-Persons and contracts
#
# Version: 1.0.0
#######################################
# Initialize default value's

$WarningPreference = "SilentlyContinue"
$config = ConvertFrom-Json $configuration
$WorkingPath = $config.WorkingPath
$CsvName = $config.CsvName
$CsvHID = $config.CsvNameHID

# Reading the csv file and creating a HID working one
(Get-Content "$WorkingPath\$CsvName" | Select-Object -Skip 1) | Set-Content "$WorkingPath\$CsvHID" -Encoding UTF8

# Formating to date MM-dd-yyyy
function Format-Date {
    param([PSCustomObject]$Date)
    if ($Date) {
       ([datetime]::ParseExact($Date,"dd/MM/yyyy",$null)).tostring(“MM-dd-yyyy”)
    }
    else {
        $null
    }
}

# Reading the HID working file
$persons =  Import-Csv -Path "$WorkingPath\$CsvHID" -Delimiter ";" -Header Matricule, Nom, Prenom, Direction,CodeDirection,UF,CodeUF,Emploi,CodeEmploi,MangerNomAffiche,PasBesoin2,PasBesoin,ManagerMatricule,PasBesoin3,DateSortie,DateEntree |  Select-Object -Skiplast 1 | where-object {$_.Direction -ne ''} 


$persons = $persons | where-object {
    if ($_.DateSortie) {
        (get-date $_.DateSortie) -gt (get-date "01/06/2021")
    }else{($_.DateSortie -eq "")}
}


$contracts = $persons| select-object Matricule,
"Direction",
"CodeDirection",
"UF",
"CodeUF",
"Emploi",
"CodeEmploi",
"ManagerMatricule",
"DateEntree",
"DateSortie" 
                                                                
foreach($p in $persons)
{
    $person = @{};
    $person["ExternalId"] = $p.Matricule
    $person["DisplayName"] = "$($p.Nom) $($p.Prenom) - $($p.Matricule)"
    $person["FirstName"] = $p.Prenom
    $person["LastName"] = $p.Nom
    $person["convention"] = "P"

     $person["Contracts"] = [System.Collections.ArrayList]@();
     foreach($c in $contracts)
    {
        if($c.Matricule -eq $p.Matricule)
        {
            $contract = @{}; 
            $contract["ID"] = $c.Matricule.trimstart('0');
            $contract["DirectionName"] = $c.Direction
            $contract["DirectionCode"] = $c.CodeDirection
            $contract["UnitéName"] = $c.UF
            $contract["Unitécode"] = $c.CodeUF
            $contract["EmploiIMMName"] = $c.Emploi
            $contract["EmploiIMMCode"] = $c.CodeEMploi
            $contract["ManagerCode"] = $c.ManagerMatricule  -replace '\s.+$'
            $contract["Datededébutdecontrat"] = Format-Date $c.DateEntree
            $contract["Datededépart"] = Format-Date $c.DateSortie
            $person["DatedArriveeDatedepart"] = ($c.DateEntree) + "-" + ($c.DateSortie)
                                
            [void]$person.Contracts.Add($contract);
        }
    }

# Exporting eaach person into the HElloID Vault   
    Write-Output ($person | ConvertTo-Json -Depth 50)
} 
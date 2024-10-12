#######################################
# HelloID-Conn-Prov-Source-Foederis-Departments
#
# Version: 1.0.0
#######################################

# Initialize default value's

$WarningPreference = "SilentlyContinue"
$config = ConvertFrom-Json $configuration
$WorkingPath = $config.WorkingPath
$CsvName = $config.CsvNameHID
$CsvFilePath = $WorkingPath + "\" + $CsvName 
Start-sleep 10

# Importing the departments
$departments = Import-CSV -Path $CsvFilePath -Delimiter ";" -Header Matricule, Nom, Prenom, Direction,CodeDirection,UF,CodeUF,Emploi,CodeEmploi,MangerNomAffiche,ManagerMatricule,DatePasBesoin,DateSortie,DateEntree | Select-Object -SkipLast 3 | where-object {$_."Direction" -ne ''} | select-object CodeDirection, Direction -Unique

foreach($item in $departments)
{
    $department = @{
        ExternalId=$item.CodeDirection
        DisplayName=$item.Direction
        Name=$item.Direction
    }

    Write-Output ($department | ConvertTo-Json -Depth 50)
}
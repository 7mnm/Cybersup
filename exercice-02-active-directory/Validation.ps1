# Vérifier les utilisateurs créés
Get-ADUser -Filter * | Select Name, SamAccountName

# Vérifier les groupes et membres
Get-ADGroup -Filter * | ForEach-Object {
    [PSCustomObject]@{
        Group = $_.Name
        Members = (Get-ADGroupMember $_).Count
    }
}
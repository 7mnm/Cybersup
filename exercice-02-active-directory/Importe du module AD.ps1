# Create-UsersFromCSV.ps1
# Configuration
$csvPath = "C:\Users\Administrateur\Documents\utilisateurs.csv"
$logFile = "C:\Users\Administrateur\Desktop\AD_creation.log"

# Demarrer la journalisation
Start-Transcript -Path $logFile -Append

try {
    # Importer le CSV avec encodage UTF-8
    $users = Import-Csv -Path $csvPath -Encoding UTF8

    # Creer les groupes manquants
    $allGroups = $users | ForEach-Object {
        for ($i = 1; $i -le 6; $i++) {
            $group = $_.("groupe$i")
            if ($group -and -not (Get-ADGroup -Filter "Name -eq '$group'" -ErrorAction SilentlyContinue)) {
                New-ADGroup -Name $group -GroupScope Global
                Write-Output "Groupe cree : $group"
            }
        }
    } | Select-Object -Unique

    # Creer les utilisateurs
    foreach ($user in $users) {
        $username = ($user.prenom[0] + $user.nom -replace '[^a-zA-Z]', '').ToLower()
        $displayName = "$($user.prenom) $($user.nom)"

        if (-not (Get-ADUser -Filter "SamAccountName -eq '$username'" -ErrorAction SilentlyContinue)) {
            New-ADUser -Name $displayName `
                       -GivenName $user.prenom `
                       -Surname $user.nom `
                       -SamAccountName $username `
                       -UserPrincipalName "$username@laplateforme.io" `
                       -AccountPassword (ConvertTo-SecureString "Azerty_2025!" -AsPlainText -Force) `
                       -ChangePasswordAtLogon $true `
                       -Enabled $true

            Write-Output "Utilisateur cree : $username"
        } else {
            Write-Warning "Utilisateur $username existe deja - Mise a jour des groupes"
        }

        # Gestion des groupes
        for ($i = 1; $i -le 6; $i++) {
            $group = $user."groupe$i"
            if ($group) {
                try {
                    Add-ADGroupMember -Identity $group -Members $username -ErrorAction Stop
                    Write-Output "  Ajoute a $group"
                } catch {
                    Write-Warning "  Impossible d'ajouter $username a $group : $_"
                }
            }
        }
    }
} catch {
    Write-Error "ERREUR CRITIQUE : $_"
} finally {
    Stop-Transcript
}
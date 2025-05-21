# Installer le rôle AD Domain Services
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

# Promouvoir le serveur en contrôleur de domaine
Install-ADDSForest `
   -DomainName "laplateforme.io" `
   -DomainNetbiosName "LAPLATEFORME" `
   -InstallDns:$true `
   -Force:$true

# Redémarrage automatique nécessaire
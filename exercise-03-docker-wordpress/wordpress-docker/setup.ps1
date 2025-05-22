# Créer le dossier WordPress
if (!(Test-Path ".\wordpress")) {
    mkdir wordpress
}

# Télécharger WordPress si nécessaire
if (-not (Test-Path ".\wordpress\index.php")) {
    Invoke-WebRequest https://wordpress.org/latest.zip -OutFile latest.zip
    Expand-Archive latest.zip -DestinationPath .
    Move-Item -Path .\wordpress\* -Destination .\wordpress -Force
    Remove-Item latest.zip
    Remove-Item -Recurse -Force .\wordpress\wordpress
}

# Lancer Docker
docker-compose down
docker-compose up -d --build
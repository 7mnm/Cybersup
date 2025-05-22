# 🧪 Exercice 03 – Docker : Déploiement WordPress

## 📦 Objectif

Déployer une stack Docker complète incluant :
- WordPress
- MariaDB
- Nginx (proxy)
- Volumes partagés pour les données et les configurations

## 📁 Fichiers inclus

exercise-03-docker-wordpress/
├── wordpress-docker/
│   ├── nginx/                   # Configuration Nginx
│   │   └── nginx.conf           # Fichier de config du 
│   ├── php/                     # Configurations PHP 
│   ├── wordpress/               # Fichiers WordPress
│   ├── Captures/               # Captures d'ecran utilisé 
│   ├── docker-compose.yaml      # Configuration Docker 
│   ├── Dockerfile               # Image Docker 
│   ├── setup.ps1                # Script d'installation 
├── README.md                # Fichier d'explications

## ⚙️ Lancement

.\setup.ps1


Accès : [http://localhost:8080](http://localhost:8080)

## 🔐 Informations base de données

- Database : `wordpress`
- User : `wpuser`
- Password : `wppass`
- Root password : `rootpass`

## 🧼 Nettoyage

```bash
docker-compose down -v
```
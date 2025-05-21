# 🚀 Test d’admission – MSc Cybersécurité (Cybersup)

Ce dépôt contient les livrables pour les **trois exercices techniques** demandés dans le cadre du test d’admission au MSc Cybersécurité à Cybersup.

---

## 📁 Contenu du dépôt


├── exercice-01-packet-tracer/
│ ├── labo.pkt
│ ├── README.md
│ ├── captures/
│ └── Configs/

├── exercice-02-active-directory/
│ ├── script_AD_creation.ps1
│ ├── utilisateurs.csv
│ ├── README.md
│ └── captures/

├── exercice-03-docker-wordpress/
│ ├── docker-compose.yaml
│ ├── nginx.conf
│ ├── README.md
│ └── captures/

└── README.md (ce fichier)

---

## 🧪 Exercice 01 – Packet Tracer

Création d’un mini-laboratoire réseau avec :
- 3 bureaux identiques (3 switches, PC, AP, IP phones)
- Routeur Cisco 1941 : DHCP, routage inter-VLAN
- Plan d’adressage IP selon les VLANs
- Test de connectivité entre les VLANs + Internet

📂 Dossier : `exercice-01-packet-tracer/`  
📸 Captures : topologie, tests de ping, configs

---

## 🧪 Exercice 02 – Active Directory avec PowerShell

- Installation et configuration d’un domaine Active Directory `laplateforme.io`
- Importation automatique d’utilisateurs et groupes depuis un fichier CSV
- Attribution du mot de passe `Azerty_2025!` à tous les comptes
- Forcer le changement de mot de passe à la première connexion

📂 Dossier : `exercice-02-active-directory/`  
📸 Captures : création AD, importation, test utilisateurs

---

## 🧪 Exercice 03 – Docker (WordPress)

- Déploiement d’un site WordPress avec NGINX, PHP, MariaDB via `docker-compose`
- Utilisation de **volumes** pour persister les données et les configurations
- Personnalisation de la configuration NGINX

📂 Dossier : `exercice-03-docker-wordpress/`  
📸 Captures : containers lancés, page WordPress, test config nginx

---


## 👤 Auteur

**Nom** : Abdelmounaim ERRAFAI
**Date** : 21 Mai 2025  
**Contact** : a.errafai@gmail.com

---

## 📝 Remarques

- Chaque exercice est documenté dans un `README.md` spécifique à son dossier.
- Toutes les configurations et scripts ont été testés avec succès dans l’environnement simulé (Packet Tracer, Windows Server, Docker).

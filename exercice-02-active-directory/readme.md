# 🧪 Exercice 02 – Active Directory (PowerShell)

## 🎯 Objectif

Créer un domaine Active Directory nommé `laplateforme.io`, importer des utilisateurs depuis un fichier CSV, les associer à leurs groupes, et configurer un mot de passe par défaut.

## 📂 Contenu

- `utilisateurs.csv` : liste des utilisateurs et groupes
- `script_AD_creation.ps1` : script PowerShell d'installation AD + import CSV
- `captures/` : preuve de création du domaine, des comptes et des groupes

## 🔐 Mot de passe par défaut

- Mot de passe : `Azerty_2025!`
- Obligation de changement au premier login

## 🛠️ Environnement requis

- Windows Server 2016 ou 2019
- PowerShell exécuté en administrateur
- Module ActiveDirectory installé

## ✅ Résultat attendu

- Domaine fonctionnel `laplateforme.io`
- Utilisateurs créés avec nom d’utilisateur `prenom.nom`
- Groupes créés dynamiquement s’ils n’existent pas

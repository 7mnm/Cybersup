# 📡 LABO Réseau – Admission MSc Cybersécurité (Cybersup)

## 🎯 Objectif
Ce projet a pour but de configurer un mini-laboratoire réseau avec Packet Tracer, en respectant une architecture multi-VLAN. L’objectif est de valider les compétences en configuration réseau (VLAN, Trunk, DHCP, routage inter-VLAN) et en structuration d’un réseau d’entreprise simulé.

---

## 🖥️ Équipements utilisés
- 1 Routeur Cisco 1941
- 3 Switchs PT
- 3 Points d'accès Wi-Fi PT-AC
- 3 PC portables
- 6 PC fixes
- 3 Téléphones IP Cisco 7960

---

## 🧱 Structure de chaque bureau
Chaque bureau comprend :
- 1 switch
- 2 PC fixes (VLAN 20)
- 1 PC portable connecté via Wi-Fi (VLAN 10)
- 1 téléphone IP (VLAN 1)
- 1 point d’accès Wi-Fi

---

## 🌐 Configuration VLAN

| Port       | Affectation            | VLAN  |
|------------|------------------------|--------|
| Fa8/1          | Administration         | VLAN 30 |
| Fa6/1, 7/1     | PC fixes               | VLAN 20 |
| Fa4/1, 5/1     | Point d’accès Wi-Fi    | VLAN 10 |
| Fa2/1, 3/1     | Téléphones IP          | VLAN 1  |
| Fa1/1, 9/1     | Trunk (liaison)        | TRUNK   |

---

## 🧭 Plan d’adressage IP

| VLAN   | Usage           | Réseau              | Plage DHCP                    |
|--------|------------------|----------------------|-------------------------------|
| VLAN 1 | VoIP             | 192.168.0.0/24       | 192.168.0.10 – 192.168.0.50   |
| VLAN 10| Wi-Fi            | 192.168.10.0/24      | 192.168.10.10 – 192.168.10.50 |
| VLAN 20| PC Fixes         | 192.168.20.0/24      | 192.168.20.10 – 192.168.20.50 |
| VLAN 30| Administration   | 192.168.30.0/24      | 192.168.30.10 – 192.168.30.50 |

---

## 🔧 Étapes de configuration

1. Création des VLANs sur les switchs
2. Attribution des ports aux VLANs
3. Configuration des ports trunk pour liaison inter-switchs et vers le routeur
4. Configuration du routeur (sous-interfaces, DHCP, routage inter-VLAN)
5. Test de connectivité entre les VLANs et avec l’extérieur

---

## 📂 Contenu du dépôt

- `labo.pkt` : fichier Packet Tracer du lab
- `README.md` : ce fichier
- `Configs/` : dossier contenant l'export des configurations de chaque équipement
- `Captures/` : captures d’écran de la topologie et des tests de connectivité

---

## 📎 Remarques

- L’accès Internet est simulé via la 2e interface du routeur (`GigabitEthernet0/1`)
- Chaque VLAN est géré par une sous-interface du routeur (Routage Inter-VLAN)
- L’ensemble de la configuration a été testée avec succès dans Cisco Packet Tracer

---

**Auteur :** Abdelmounaim ERRAFAI
**Date :** 21 Mai 2025  

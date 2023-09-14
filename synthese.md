# Projet de Gestion de Location de Voitures

Ce projet en Java connecté à une base de données MySQL simule un système de location de voitures, dans un contexte de développement pédagogique. Il est important de noter que ce projet n'est pas sécurisé et ne doit pas être utilisé en production. Il a été créé dans le but de mettre en valeur la logique de développement plutôt que la sécurité.

## Fonctionnalités

### Utilisateurs

- Les utilisateurs peuvent être des clients ou des employés.
- Les clients ont la possibilité d'être soit des particuliers, soit des professionnels.
- Les clients peuvent créer un compte s'ils n'en ont pas déjà un en fournissant des informations personnelles.
- Les clients existants peuvent se connecter pour accéder à leur profil.
- Les employés ont des privilèges spéciaux pour gérer le système.

### Processus de Réservation

- Une fois connectés, les clients peuvent parcourir les voitures de location disponibles.
- Ils ont accès aux caractéristiques de chaque voiture,ladisponibilité... y compris le prix.
- Après avoir choisi une voiture, ils doivent fournir leurs informations bancaires.
- Une fois la réservation confirmée, le statut de la voiture passe automatiquement à "indisponible" pour les autres clients.

### Gestion par les Employés

- Les employés sont responsables de la maintenance de la liste des voitures disponibles.
- Ils peuvent ajouter de nouvelles voitures au système avec des images.
- Les employés appliquent des réductions en fonction du type de client (particulier ou professionnel).
- Ils ont également la capacité de visualiser toutes les réservations effectuées par les clients.

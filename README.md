# Clash Royale API

## Objectif
Une API simple développée en Go avec une base de données MySQL, permettant d’exposer les cartes du jeu Clash Royale afin d’être consommées par un front web.
Ce projet a pour objectif de mettre en pratique les bonnes pratiques de développement, notamment en termes de structure, de conventions, de qualité et de maintenance du code.

## Démarrage 

### Prérequis 

Assurez-vous d’avoir installé :

- Go ≥ 1.22
- MySQL ≥ 8.0
- Git

### 1. Cloner le repos
```bash
git clone https://github.com/Shiokaa/clash_royale_api
cd clash_royale_api
```

### 2. Configurer l'environnement

Créez un fichier `.env` à la racine du projet avec ce contenu :

```env
# Server
PUBLIC_HOST=http://localhost
PORT=3000

# Database
DB_USER=root
DB_PASSWORD=
DB_HOST=127.0.0.1
DB_PORT=3306
DB_NAME=clash_royale_api
```

### 3. Préparer la base de données

```sql
-- Importez les fichiers SQL dans cet ordre :

-- Exécutez le fichier :
database/migrations/001_init.sql

-- Puis exécutez :
database/seeds/cards_seed.sql
```

### 4. Installer les dépendances

```bash
go mod tidy
```

### 5. Démarrer le serveur

```bash
go run backend/cmd/server/main.go
```

Frontend démarrage

Accédez ensuite à [http://localhost:3000](http://localhost:3000)

## Routes de l'API

| Méthode | Route               | Description                                      |
|---------|--------------------|--------------------------------------------------|
| GET     | /cards             | Récupération de toutes les cartes               |
| GET     | /cards/{id}        | Récupération d'une seul carte avec son ID       |

## Structure
On retrouve 2 dossiers fondamentaux : 
- Le dossier `backend` contenant tout le nécessaire pour faire fonctionner l'API
- Le dossier `frontend` contenant tout le nécessaire pour afficher les données de l'API


## Conventions

### Nommage & commentaires
- Nommage en anglais
- Commentaires en français

### Qualité du code
- Formatter : Prettier
- Linter : GolangCI-Lint

### Git workflow
- `feat/*` → nouvelle fonctionnalité
- `fix/*` → correction d’un bug
- `chore/*` → tâche de maintenance (configuration, dépendances…)
Commits et Pull Requests rédigés en anglais.

## Observabilité
L’application utilise des logs console pour tracer les erreurs :
- Message personnalisé décrivant le contexte
- Erreur retournée par Go/Mysql
  
---

## Sécurité de base
- Fichier `.gitignore` pour exclure les fichiers sensibles et inutiles
- Variables sensibles externalisées dans `.env`
Des améliorations de sécurité sont possibles (gestion des secrets, sanitization, validations…).

## Limites & pistes
### Amélioration possible :
- Exploiter pleinement les tables MySQL non utilisées
- Ajouter une authentification / autorisations
- Couvrir l’API avec des tests unitaires & d’intégration
- Ajouter OpenAPI/Swagger pour la documentation
- Améliorer le frontend et la navigation
- Ajouter la CI/CD (lint, tests, build)

CREATE DATABASE IF NOT EXISTS clash_royale_api;

USE clash_royale_api;

-- Table des cartes
-- Cette table contient tous les détails sur une carte dont ses statistiques
CREATE TABLE
    IF NOT EXISTS cards (
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(25) NOT NULL,
        description TEXT NOT NULL,
        rarity ENUM ('common', 'rare', 'epic', 'legendary', 'champion') NOT NULL,
        type ENUM ('spell', 'troop', 'building') NOT NULL,
        unlocked_arena TINYINT NOT NULL,
        elixir_cost TINYINT NOT NULL,
        image_url VARCHAR(255),
        stats JSON
    );

-- Table des statistiques de chaque carte par leur niveau
-- Cette table contient l'id de la carte en "FOREIGN KEY", le niveau ainsi que les statistiques en fonction de ce niveau
CREATE TABLE
    IF NOT EXISTS card_stats_by_levels (
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        card_id INT NOT NULL,
        level TINYINT NOT NULL,
        stats JSON,
        UNIQUE (card_id, level),
        FOREIGN KEY (card_id) REFERENCES cards (id) ON DELETE CASCADE
    );

-- Table d'une capacité d'un champion
-- Cette table contient l'id de la carte en "FOREIGN KEY", ainsi que les détails de la capacité
CREATE TABLE
    IF NOT EXISTS champion_abilities (
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        card_id INT UNIQUE,
        name VARCHAR(25) NOT NULL,
        description TEXT NOT NULL,
        elixir_cost TINYINT NOT NULL,
        cooldown TINYINT NOT NULL,
        image_url VARCHAR(255),
        effect JSON,
        FOREIGN KEY (card_id) REFERENCES cards (id) ON DELETE CASCADE
    );

-- Table des stats d'une capacité d'un champion en fonction du niveau
-- Cette table contient l'id de la capacité d'un champion en "FOREIGN KEY"
CREATE TABLE
    IF NOT EXISTS champion_ability_by_levels (
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        champion_ability_id INT,
        level TINYINT NOT NULL,
        stats JSON,
        FOREIGN KEY (champion_ability_id) REFERENCES champion_abilities (id) ON DELETE CASCADE
    );
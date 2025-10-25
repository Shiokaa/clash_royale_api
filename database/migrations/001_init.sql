CREATE DATABASE IF NOT EXISTS clash_royale_api;
USE clash_royale_api;

-- Table cards
CREATE TABLE IF NOT EXISTS cards (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    rarity ENUM('common', 'rare', 'epic', 'legendary', 'champion') NOT NULL,
    type ENUM('spell', 'troop', 'building') NOT NULL,
    unlocked_arena TINYINT NOT NULL,
    elixir_cost TINYINT NOT NULL,
    has_evolution BOOLEAN NOT NULL DEFAULT 0,
    image_url VARCHAR(255)
);

-- Table card_stats
CREATE TABLE IF NOT EXISTS card_stats (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    card_id INT NOT NULL UNIQUE,
    hitpoints SMALLINT,
    damage SMALLINT,
    damage_second SMALLINT,
    hit_speed DECIMAL(4,2),
    speed ENUM('slow','medium','fast','very fast'),
    count TINYINT,
    `range` DECIMAL(4,2),
    duration DECIMAL(4,2),
    tower_damage SMALLINT,
    tower_damage_second SMALLINT,
    radius DECIMAL(4,2),
    lifetime TINYINT,
    target ENUM('air', 'ground', 'building', 'air & ground'),
    death_damage SMALLINT,
    shield SMALLINT,
    damage_over_time JSON,
    FOREIGN KEY (card_id) REFERENCES cards(id) ON DELETE CASCADE
);


-- Table card_levels_stats
CREATE TABLE IF NOT EXISTS card_levels_stats (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    card_id INT NOT NULL UNIQUE,
    level TINYINT NOT NULL,
    hitpoints SMALLINT,
    damage SMALLINT,
    damage_over_time JSON,
    FOREIGN KEY (card_id) REFERENCES cards(id) ON DELETE CASCADE
);
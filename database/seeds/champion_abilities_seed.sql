USE clash_royale_api;

-- Insertions pour la table "champion_abilities"
INSERT INTO
    champion_abilities (
        card_id,
        name,
        description,
        elixir_cost,
        cooldown,
        image_url,
        effect
    )
VALUES
    (
        49,
        'Royal Rescue',
        'Guardian charges into battle, dealing Charge Damage and pushing enemies back!',
        3,
        30,
        NULL,
        '{"hit_speed":1.2}'
    ),
    (
        81,
        'Dashing Dash',
        'Dashes towards his enemies and chain attacks everything in his path!',
        1,
        8,
        NULL,
        '{"dash_distance":5.5,"max_dashes":10}'
    ),
    (
        82,
        'Soul Summoning',
        'Collect souls of the fallen and bring them back from the dead!',
        2,
        20,
        NULL,
        '{"min_skeleton_count":6,"max_skeleton_count":16}'
    ),
    (
        83,
        'Explosive Escape',
        'Mines underground to the opposite lane, leaving a bomb at the original location. Surprise!',
        1,
        13,
        NULL,
        '{"targets":"air & ground"}'
    ),
    (
        103,
        'Cloaking Cape',
        'Activates stealth mode and shoots her arrows faster!',
        1,
        17,
        NULL,
        '{"invisibility_duration":3.5,"damage_sec_boost":180}'
    ),
    (
        104,
        'Lightning Link',
        'Electrifies the link, damaging any enemies that get near. Shocking!',
        2,
        17,
        NULL,
        '{"duration":4,"hit_speed":0.5,"targets":"air & ground","radius":2}'
    ),
    (
        105,
        'Pensive Protection',
        'Takes less Damage while deflecting projectiles back at the opponent!',
        1,
        17,
        NULL,
        '{"duration":4,"damage_reduction":65}'
    ),
    (
        117,
        'Getaway Grenade',
        'Briefly becomes invisible and teleports backwards!',
        1,
        3,
        NULL,
        '{"grenade_count":2,"teleport_range":6,"invisible_duration":1}'
    );
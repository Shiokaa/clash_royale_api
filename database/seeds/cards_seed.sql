USE clash_royale_api;

-- Insertions pour la table "cards"
INSERT INTO
    cards (
        name,
        description,
        rarity,
        type,
        unlocked_arena,
        elixir_cost,
        image_url,
        stats
    )
VALUES
    (
        'Skeletons',
        'Three fast, very weak melee fighters. Surround your enemies with this pile of bones!',
        'common',
        'troop',
        2,
        1,
        NULL,
        '{"hit_speed":1.1,"targets":"ground","speed":"fast","range":"melee: short","count":3}'
    ),
    (
        'Fire Spirit',
        "The Fire Spirit is on a mission to give you a warm hug. It'd be adorable if it wasn't on fire",
        'common',
        'troop',
        4,
        1,
        NULL,
        '{"targets":"air & ground","speed":"very fast","range":2.5}'
    ),
    (
        'Electro Spirit',
        'Jumps on enemies, dealing Area Damage and stunning up to 9 enemy Troops. Locked in an eternal battle with Knight for the best mustache.',
        'common',
        'troop',
        4,
        1,
        NULL,
        '{"chained_attacks":9,"stun_duration":0.5,"targets":"air & ground","speed":"very fast","range":2.5}'
    ),
    (
        'Ice Spirit',
        'Spawns one lively little Ice Spirit to freeze a group of enemies. Stay frosty.',
        'common',
        'troop',
        8,
        1,
        NULL,
        '{"freeze_duration":1.1,"targets":"air & ground","speed":"very fast","range":2.5}'
    ),
    (
        'Heal Spirit',
        'A mischievous Spirit that leaps at enemies, dealing Damage and leaving behind a powerful healing effect that restores Hitpoints to friendly Troops! R.I.P. Heal 2017 - 2020 Alas, we hardly used ye.',
        'common',
        'troop',
        13,
        1,
        NULL,
        '{"duration":1,"targets":"air & ground","speed":"very fast","range":2.5}'
    ),
    (
        'Mirror',
        'Mirrors your last card played for +1 Elixir. Does not appear in your starting hand',
        'epic',
        'spell',
        15,
        0,
        NULL,
        NULL
    ),
    (
        'Goblins',
        'Four fast, unarmored melee attackers. Small, fast, green and mean!',
        'common',
        'troop',
        1,
        2,
        NULL,
        '{"hit_speed":1.1,"targets":"ground","speed":"very fast","range":"melee: short","count":4}'
    ),
    (
        'Spear Goblins',
        'Three unarmored ranged attackers. Who the heck taught these guys to throw spears!? Who thought that was a good idea?!',
        'common',
        'troop',
        1,
        2,
        NULL,
        '{"hit_speed":1.7,"targets":"air & ground","speed":"very fast","range":5,"count":3}'
    ),
    (
        'Bomber',
        'Small, lightly protected skeleton who throws bombs. Deals area damage that can wipe out a swarm of enemies.',
        'common',
        'troop',
        2,
        2,
        NULL,
        '{"hit_speed":1.8,"targets":"ground","speed":"medium","range":4.5}'
    ),
    (
        'Bats',
        'Spawns a handful of tiny flying creatures. Think of them as sweet, purple... balls of DESTRUCTION!',
        'common',
        'troop',
        5,
        2,
        NULL,
        '{"hit_speed":1.3,"targets":"air & ground","speed":"very fast","range":"melee: medium","count":5}'
    ),
    (
        'Zap',
        'Zaps enemies, briefly stunning them and dealing damage inside a small radius. Reduced damage to Crown Towers.',
        'common',
        'spell',
        5,
        2,
        NULL,
        '{"stun_duration":0.5,"radius":2.5}'
    ),
    (
        'Giant Snowball',
        "It's HUGE! Once it began rolling down Frozen Peak, there was no stopping it. Enemies hit are knocked back and slowed down. Reduced damage to Crown Towers.",
        'common',
        'spell',
        8,
        2,
        NULL,
        '{"slowdown_duration":3,"radius":2.5}'
    ),
    (
        'Ice Golem',
        "He's tough, targets buildings and explodes when destroyed, slowing nearby enemies. Made entirely out of ice... or is he?! Yes.",
        'rare',
        'troop',
        8,
        2,
        NULL,
        '{"hit_speed":2.5,"targets":"buildings","speed":"slow","range":"melee: short"}'
    ),
    (
        'Berserker',
        "It's surprising how often she needs her axes sharpened, but then again, if you liked hitting things as fast as her, so would you.",
        'common',
        'troop',
        9,
        2,
        NULL,
        '{"hit_speed":0.6,"targets":"ground","speed":"fast","range":"melee: short"}'
    ),
    (
        'Barbarian Barrel',
        'It rolls over and damages anything in its path, then breaks open and out pops a Barbarian! How did he get inside?!',
        'epic',
        'spell',
        9,
        2,
        NULL,
        '{"targets":"ground","width":2.6,"range":4.5}'
    ),
    (
        'The Log',
        "A split bottle of Rage turned an innocent tree trunk into 'The Log'. Now, it seeks revenge by crushing anything in its path! Reduced damage to Crown Towers.",
        'common',
        'spell',
        11,
        2,
        NULL,
        '{"targets":"ground","width":3.9,"range":10.1}'
    ),
    (
        'Wall Breakers',
        "A daring duo of dangerous dive bombers. Nothing warms a Wall Breaker's cold and undead heart like blowing up buildings.",
        'epic',
        'troop',
        12,
        2,
        NULL,
        '{"targets":"buildings","speed":"very fast","range":"melee: short","count":2}'
    ),
    (
        'Suspicious Bush',
        'This invisible bush skulks towards the nearest building. Sus. If Suspicious Bush reaches its target or gets destroyed by a spell, it surprises the enemy with Bush Goblins!',
        'rare',
        'troop',
        13,
        2,
        NULL,
        '{"bush_goblin_count":2,"targets":"buildings","speed":"medium"}'
    ),
    (
        'Rage',
        'Increases troop movement and attack speed. Buildings attack faster and summon troops quicker, too. Chaaaarge!',
        'epic',
        'spell',
        14,
        2,
        NULL,
        '{"deploy_time":0.5,"duration":4.5,"boost":30,"radius":3}'
    ),
    (
        'Goblin Curse',
        "One does not simply reverse a curse! Enemies within the curse's reach will take damage over time and be turned into Goblins after they are defeated.",
        'epic',
        'spell',
        14,
        2,
        NULL,
        '{"duration":6,"radius":3}'
    ),
    (
        'Knight',
        "A tough melee fighter. The Barbarian's handsome, cultured cousin. Rumor has it that he was knighted based on the sheer awesomeness of his mustache alone.",
        'common',
        'troop',
        0,
        3,
        NULL,
        '{"hit_speed":1.2,"targets":"ground","speed":"medium","range":"melee: medium"}'
    ),
    (
        'Archers',
        "A pair of lightly armored ranged attackers. They'll help you take down ground and air units, but you're on your own with hair coloring advice.",
        'common',
        'troop',
        0,
        3,
        NULL,
        '{"hit_speed":0.9,"targets":"air & ground","speed":"medium","range":5,"count":2}'
    ),
    (
        'Minions',
        "Three fast, unarmored flying attackers. Roses are red, minions are blue, they can fly, and will crush you!",
        'common',
        'troop',
        0,
        3,
        NULL,
        '{"hit_speed":1.1,"targets":"air & ground","speed":"fast","range":2.5,"count":3}'
    ),
    (
        'Arrows',
        'Arrows pepper a large area, damaging all enemies hit. Reduced damage to Crown Towers.',
        'common',
        'spell',
        0,
        3,
        NULL,
        '{"radius":3.5}'
    ),
    (
        'Tombstone',
        'Building that periodically spawns Skeletons to fight the enemy... and when destroyed, spawns 4 more Skeletons! Creepy.',
        'rare',
        'building',
        2,
        3,
        NULL,
        '{"spawn_on_death":{"name":"skeleton","count":4},"spawn_speed":4,"lifetime":30}'
    ),
    (
        'Cannon',
        'Defensive building. Shoots cannonballs with deadly effect, but cannot target flying troops.',
        'common',
        'building',
        3,
        3,
        NULL,
        '{"hit_speed":1,"targets":"ground","range":5.5,"lifetime":30}'
    ),
    (
        'Mega Minion',
        'Flying, armored and powerful. What could be its weakness?! Cupcakes.',
        'rare',
        'troop',
        3,
        3,
        NULL,
        '{"hit_speed":1.5,"targets":"air & ground","speed":"medium","range":"melee: long"}'
    ),
    (
        'Spirit Empress (Ground)',
        '',
        'legendary',
        'troop',
        15,
        3,
        NULL,
        '{"hit_speed":1.1,"targets":"ground","speed":"medium","range":"melee: medium"}'
    ),
    (
        'Guards',
        "Three ruthless bone brothers with shields. Knock off their shields and all that's left are three ruthless bone brothers.",
        'epic',
        'troop',
        6,
        3,
        NULL,
        '{"hit_speed":1,"targets":"ground","speed":"fast","range":"melee: long","count":3}'
    ),
    (
        'Goblin Barrel',
        "Spawns three Goblins anywhere in the Arena. It's going to be a thrilling ride, boys!",
        'epic',
        'spell',
        6,
        3,
        NULL,
        '{"radius":1.5,"goblin_count":3}'
    ),
    (
        'Vines',
        "Entangle the three highest hitpoint troops or buildings in the area, stunning them while doing damage. If the troop is in the air, they'll ground them. Don't worry, they'll grow on you!",
        'epic',
        'spell',
        8,
        3,
        NULL,
        '{"count":3,"duration":2,"radius":2.5}'
    ),
    (
        'Goblin Gang',
        "Spawns six Goblins — three with knives, three with spears — at a discounted Elixir cost. It's like a Goblin Value Pack!",
        'common',
        'troop',
        9,
        3,
        NULL,
        '{"goblin_count":3,"spear_goblin_count":3}'
    ),
    (
        'Skeleton Barrel',
        "It's a Skeleton party in the sky, until all the balloons pop... then it's a Skeleton party on the ground!",
        'common',
        'troop',
        9,
        3,
        NULL,
        '{"skeleton_count":7,"targets":"buildings","speed":"fast"}'
    ),
    (
        'Dart Goblin',
        "Runs fast, shoots far and chews gum. How does he blow darts with a mouth full of Double Trouble gum? Years of didgeridoo lessons.",
        'rare',
        'troop',
        9,
        3,
        NULL,
        '{"hit_speed":0.8,"targets":"air & ground","speed":"very fast","range":6.5}'
    ),
    (
        'Princess',
        "This stunning Princess shoots flaming arrows from long range. If you're feeling warm feelings towards her, it's probably because you're on fire.",
        'legendary',
        'troop',
        11,
        3,
        NULL,
        '{"hit_speed":3,"targets":"air & ground","speed":"medium","range":9,"deploy_time":1.2}'
    ),
    (
        'Miner',
        "The Miner can burrow his way underground and appear anywhere in the Arena. It's not magic, it's a shovel. A shovel that deals reduced damage to Crown Towers.",
        'legendary',
        'troop',
        11,
        3,
        NULL,
        '{"hit_speed":1.3,"targets":"ground","speed":"fast","range":"melee: medium"}'
    ),
    (
        'Firecracker',
        "Shoots a firework that explodes on impact, damaging the target and showering anything behind it with sparks. This is what happens when Archers get bored!",
        'common',
        'troop',
        12,
        3,
        NULL,
        '{"hit_speed":3,"targets":"air & ground","speed":"fast","range":6}'
    ),
    (
        'Earthquake',
        "Deals Damage per second to Troops and Crown Towers. Deals huge Building Damage! Does not affect flying units (it is an EARTHquake, after all).",
        'rare',
        'spell',
        12,
        3,
        NULL,
        '{"slowdown_enemies":50,"duration":3,"radius":3.5}'
    ),
    (
        'Ice Wizard',
        "This chill caster throws ice shards that slow down enemies' movement and attack speed. Despite being freezing cold, he has a handlebar mustache that's too hot for TV.",
        'legendary',
        'troop',
        12,
        3,
        NULL,
        '{"hit_speed":1.7,"slowdown_duration":1,"targets":"air & ground","speed":"medium","range":5.5}'
    ),
    (
        'Bandit',
        "The Bandit dashes to her target and delivers an extra big hit! While dashing, she can't be touched. The mask keeps her identity safe, and gives her bonus cool points!",
        'legendary',
        'troop',
        13,
        3,
        NULL,
        '{"min_dash_range":3.5,"max_dash_range":6,"hit_speed":1,"targets":"ground","speed":"fast","range":"melee: short"}'
    ),
    (
        'Royal Delivery',
        "No need to sign for this package! Dropped from the sky, it deals Area Damage to enemy Troops before delivering a Royal Recruit. The empty box is also handy for espionage.",
        'common',
        'spell',
        14,
        3,
        NULL,
        '{"count":1,"radius":3}'
    ),
    (
        'Elixir Golem',
        "Splits into two Elixir Golemites when destroyed, which split into two sentient Blobs when defeated. Each part of the Elixir Golem gives your opponent some Elixir when destroyed!",
        'rare',
        'troop',
        14,
        3,
        NULL,
        '{"hit_speed":1.1,"targets":"buildings","speed":"slow","range":"melee: short"}'
    ),
    (
        'Tornado',
        "Drags enemy troops to its center while dealing damage over time, just like a magnet. A big, swirling, Tornado-y magnet.",
        'epic',
        'spell',
        15,
        3,
        NULL,
        '{"duration":1,"radius":5.5}'
    ),
    (
        'Clone',
        "Duplicates all friendly troops in the target area. Cloned troops are fragile, but pack the same punch as the original! Doesn't affect buildings.",
        'epic',
        'spell',
        15,
        3,
        NULL,
        '{"clone_hitpoints":1,"clone_shield_hitpoints":1,"radius":3}'
    ),
    (
        'Void',
        "You shall not pass! Unless there are a lot of you... Creates a field of dark magic damaging all enemy troops and buildings within. More damage is dealt when fewer targets are on its area. Reduced damage to Crown Towers.",
        'epic',
        'spell',
        15,
        3,
        NULL,
        '{"duration":4,"radius":2.5}'
    ),
    (
        'Fisherman',
        "His Ranged Attack can pull enemies towards him, and pull himself to enemy buildings. He's also mastered the ancient art of 'Fish Slapping'.",
        'legendary',
        'troop',
        15,
        3,
        NULL,
        '{"min_ranged_attack_range":3.5,"max_ranged_attack_range":7,"hit_speed":1.3,"targets":"ground","speed":"medium","range":"melee: medium"}'
    ),
    (
        'Skeleton Army',
        "Spawns an army of Skeletons. Meet Larry and his friends Harry, Gerry, Terry, Mary, etc.",
        'epic',
        'troop',
        6,
        3,
        NULL,
        '{"skeleton_count":15}'
    ),
    (
        'Royal Ghost',
        "He drifts invisibly through the Arena until he's startled by an enemy... then he attacks! Then he's invisible again! Zzzz.",
        'legendary',
        'troop',
        12,
        3,
        NULL,
        '{"hit_speed":1.8,"targets":"ground","speed":"fast","range":"melee: medium"}'
    ),
    (
        'Little Prince',
        "Who let their nephew into the Arena?! This mischievous Royal gains Hit Speed when firing, as long as he stands still! He may look weak, but he's always being watched over from afar...",
        'champion',
        'troop',
        18,
        3,
        NULL,
        '{"min_hit_speed":1.2,"max_hit_speed":0.4,"targets":"air & ground","speed":"medium","range":5.5}'
    ),
    (
        'Musketeer',
        "Don't be fooled by her delicately coiffed hair, the Musketeer is a mean shot with her trusty boomstick.",
        'rare',
        'troop',
        0,
        4,
        NULL,
        '{"hit_speed":1,"targets":"air & ground","speed":"medium","range":6}'
    ),
    (
        'Mini P.E.K.K.A.',
        "The Arena is a certified butterfly-free zone. No distractions for P.E.K.K.A, only destruction.",
        'rare',
        'troop',
        0,
        4,
        NULL,
        '{"hit_speed":1.6,"targets":"ground","speed":"fast","range":"melee: short"}'
    ),
    (
        'Goblin Hut',
        "Defensive building that spawns Spear Goblins when enemies are in range. Don't look inside... you don't want to see how they're made.",
        'rare',
        'building',
        1,
        4,
        NULL,
        '{"spawn_speed":1.9,"targets":"air & ground","range":6,"lifetime":3,"spawn_on_death":{"name":"spear goblin","count":1}}'
    ),
    (
        'Goblin Cage',
        "When the Goblin Cage is destroyed, a Goblin Brawler is unleashed into the Arena! Goblin Brawler always skips leg day.",
        'rare',
        'building',
        1,
        4,
        NULL,
        '{"goblin_brawler_count":1,"spawn_on_death":{"name":"goblin brawler","count":1},"lifetime":20}'
    ),
    (
        'Fireball',
        "Annnnnd... Fireball. Incinerates a small area, dealing high damage. Reduced damage to Crown Towers.",
        'rare',
        'spell',
        0,
        4,
        NULL,
        '{"radius":2.5}'
    ),
    (
        'Valkyrie',
        "Tough melee fighter, deals area damage around her. Swarm or horde, no problem! She can take them all out with a few spins.",
        "rare",
        "troop",
        2,
        4,
        NULL,
        '{"hit_speed":1.5,"targets":"ground","speed":"medium","range":"melee: medium"}'
    ),
    (
        'Battle Ram',
        "Two Barbarians holding a big log charge at the nearest building, dealing significant damage if they connect; then they go to town with their swords!",
        "rare",
        "troop",
        3,
        4,
        NULL,
        '{"targets":"buildings","speed":"medium","range":"melee: short"}'
    ),
    (
        'Skeleton Dragons',
        "This pair of skeletal scorchers deal Area Damage and fly above the Arena. They also play a mean rib cage xylophone duet.",
        "common",
        "troop",
        4,
        4,
        NULL,
        '{"hit_speed":1.9,"targets":"air & ground","speed":"fast","range":3.5,"count":2}'
    ),
    (
        'Bomb Tower',
        "Defensive building that houses a Bomber. Deals area damage to anything dumb enough to stand near it.",
        "rare",
        "building",
        4,
        4,
        NULL,
        '{"hit_speed":1.8,"targets":"ground","range":6,"lifetime":30}'
    ),
    (
        'Mortar',
        "Defensive building with a long range. Shoots big boulders that deal area damage, but cannot hit targets that get very close!",
        "common",
        'building',
        5,
        4,
        NULL,
        '{"hit_speed":5,"targets":"ground","range":11.5,"deploy_time":3.5,"lifetime":30}'
    ),
    (
        'Hog Rider',
        "Fast melee troop that targets buildings and can jump over the river. He followed the echoing call of 'Hog Riderrrrr' all the way through the Arena doors.",
        "rare",
        "troop",
        5,
        4,
        NULL,
        '{"hit_speed":1.6,"targets":"buildings","speed":"very fast","range":"melee: short"}'
    ),
    (
        'Flying Machine',
        "The Master Builder has sent his first contraption to the Arena! It's a fast and fun flying machine, but fragile!",
        "rare",
        "troop",
        5,
        4,
        NULL,
        '{"hit_speed":1.1,"targets":"air & ground","speed":"fast","range":6}'
    ),
    (
        'Baby Dragon',
        "Burps fireballs from the sky that deal area damage. Baby dragons hatch cute, hungry and ready for a barbeque.",
        "epic",
        "troop",
        6,
        4,
        NULL,
        '{"hit_speed":1.5,"targets":"air & ground","speed":"fast","range":3.5}'
    ),
    (
        'Dark Prince',
        "The Dark Prince deals area damage and lets his spiked club do the talking for him - because when he does talk, it sounds like he has a bucket on his head.",
        "epic",
        "troop",
        7,
        4,
        NULL,
        '{"hit_speed":1.3,"targets":"ground","speed":"medium","range":"melee: medium"}'
    ),
    (
        'Battle Healer',
        "With each attack, she unleashes a powerful healing aura that restores Hitpoints to herself and friendly Troops.",
        "rare",
        "troop",
        8,
        4,
        NULL,
        '{"hit_speed":1.5,"targets":"ground","speed":"medium","range":"melee: long"}'
    ),
    (
        'Freeze',
        "Freezes and damages enemy troops and buildings, making them unable to move or attack. Everybody chill. Reduced damage to Crown Towers.",
        'epic',
        'spell',
        8,
        4,
        NULL,
        '{"freeze_duration":4,"radius":3}'
    ),
    (
        'Rune Giant',
        "Need your weapons sharpened? You've come to the right place. Rune Giant enchants Troops closest to her, having them deal Bonus Damage every third attack. Only two Troops can be enchanted at once.",
        "epic",
        "troop",
        9,
        4,
        NULL,
        '{"hit_speed":1.5,"targets":"buildings","speed":"medium","range":"melee: medium","enchant_limit":2,"enchant_range":7}'
    ),
    (
        'Poison',
        "Covers the area in a deadly toxin, damaging enemy troops and buildings over time. Yet somehow leaves the grass green and healthy. Go figure! Reduced damage to Crown Towers.",
        "epic",
        "spell",
        9,
        4,
        NULL,
        '{"slowdown_enemies":15,"duration":8,"radius":3.5}'
    ),
    (
        'Tesla',
        "Defensive building. Whenever it's not zapping the enemy, the power of Electrickery is best kept grounded.",
        "common",
        "building",
        10,
        4,
        NULL,
        '{"hit_speed":1.1,"targets":"air & ground","range":5.5,"lifetime":30}'
    ),
    (
        'Zappies',
        "Spawns a pack of miniature Zap machines. Who controls them...? Only the Master Builder knows.",
        "rare",
        "troop",
        10,
        4,
        NULL,
        '{"hit_speed":2.1,"stun_duration":0.5,"targets":"air & ground","speed":"medium","range":4.5,"count":3}'
    ),
    (
        'Furnace',
        "Furnace spawns one Fire Spirit at a time while dealing damage with its special cauldron brew. It also makes great brick-oven pancakes.",
        "rare",
        "troop",
        10,
        4,
        NULL,
        '{"spawn_speed":7,"hit_speed":1.8,"targets":"air & ground","speed":"medium","range":6}'
    ),
    (
        'Hunter',
        "He deals BIG damage up close - not so much at range. What he lacks in accuracy, he makes up for with his impressively bushy eyebrows.",
        "epic",
        "troop",
        10,
        4,
        NULL,
        '{"hit_speed":2.2,"targets":"air & ground","speed":"medium","range":4,"projectile_damage":6.5}'
    ),
    (
        'Inferno Dragon',
        "Shoots a focused beam of fire that increases in damage over time. Wears a helmet because flying can be dangerous.",
        "legendary",
        "troop",
        11,
        4,
        NULL,
        '{"hit_speed":0.4,"targets":"air & ground","speed":"medium","range":3.5}'
    ),
    (
        'Electro Wizard',
        "He lands with a 'POW!', stuns nearby enemies and shoots lightning with both hands! What a show off.",
        "legendary",
        "troop",
        11,
        4,
        NULL,
        '{"hit_speed":1.8,"stun_duration":0.5,"targets":"air & ground","speed":"fast","range":5}'
    ),
    (
        'Goblin Demolisher',
        "Boom goes dynamite! Goblin Demolisher deals area damage and explodes on death. At low health, he charges towards the nearest building.",
        "rare",
        "troop",
        12,
        4,
        NULL,
        '{"hit_speed":1.2,"targets":"ground","speed":"medium","range":5,"activation":50,"charge_targets":"buildings","charge_speed":"very fast"}'
    ),
    (
        'Phoenix',
        "This mystical creature will be reborn as an egg when destroyed. If it hatches, it returns to the fight! What an egg-cellent ability. Being born again is tiring, so a hatched Phoenix will have slightly less Hitpoints and Damage (80% of its total).",
        "legendary",
        "troop",
        12,
        4,
        NULL,
        '{"hit_speed":1,"targets":"air & ground","speed":"medium","range":"melee: long"}'
    ),
    (
        'Magic Archer',
        "Not quite a Wizard, nor an Archer - he shoots a magic arrow that passes through and damages all enemies in its path. It's not a trick, it's magic!",
        "legendary",
        "troop",
        13,
        4,
        NULL,
        '{"hit_speed":1.1,"targets":"air & ground","speed":"medium","range":7,"projectile_range":11}'
    ),
    (
        'Goblin Drill',
        "Building capable of burrowing underground and appearing anywhere in the Arena. Spawns Goblins one at a time until destroyed. Then spawns a few more, to make sure everything nearby has been properly stabbed.",
        "epic",
        "building",
        14,
        4,
        NULL,
        '{"spawn_on_death":{"name":"goblin","count":2},"spawn_speed":3,"lifetime":10}'
    ),
    (
        'Lumberjack',
        "He chops trees by day and hunts The Log by night. His bottle of Rage spills everywhere when he's defeated.",
        "legendary",
        "troop",
        14,
        4,
        NULL,
        '{"hit_speed":0.8,"targets":"ground","speed":"very fast","range":"melee: short"}'
    ),
    (
        'Night Witch',
        "Summons Bats to do her bidding! If you get too close, she's not afraid of pitching in with her mean-looking battle staff.",
        "legendary",
        "troop",
        14,
        4,
        NULL,
        '{"spawn_on_death":{"name":"bat","count":1},"spawn_speed":5,"hit_speed":1.3,"targets":"ground","speed":"medium","range":"melee: long"}'
    ),
    (
        'Mother Witch',
        "Places a curse on enemy troops with each attack. When a cursed troop is destroyed, it turns into a building-targeting Hog that fights alongside the Mother Witch. She also bakes great cookies.",
        "legendary",
        "troop",
        15,
        4,
        NULL,
        '{"hit_speed":1,"targets":"air & ground","speed":"medium","range":5.5,"effect_duration":5}'
    ),
    (
        'Golden Knight',
        "A warrior with luxurious hair and outstanding flexibility. Demonstrates his aerobics skills on demand.",
        "champion",
        "troop",
        16,
        4,
        NULL,
        '{"hit_speed":0.9,"targets":"ground","speed":"medium","range":"melee: medium"}'
    ),
    (
        'Skeleton King',
        "The King of the undead himself. He sometimes feels lonely (could be due to his non flattering features) and will summon friends to join him in the battle even after death. Tough guys have feelings too!",
        "champion",
        "troop",
        16,
        4,
        NULL,
        '{"hit_speed":1.6,"targets":"ground","speed":"medium","range":"melee: medium"}'
    ),
    (
        'Mighty Miner',
        "Walk softly... and carry a big drill! This Champion deals increasing Damage to his target and can switch lanes to escape combat or change attack plans. This makes him not only the mightiest, but also the sneakiest Miner in the Arena.",
        "champion",
        "troop",
        17,
        4,
        NULL,
        '{"hit_speed":0.4,"targets":"ground","speed":"medium","range":"melee: long"}'
    ),
    (
        'Giant',
        "Slow but durable, only attacks buildings. A real one-man wrecking crew!",
        "rare",
        "troop",
        0,
        5,
        NULL,
        '{"hit_speed":1.5,"targets":"buildings","speed":"slow","range":"melee: medium"}'
    ),
    (
        'Barbarians',
        "A horde of melee attackers with mean mustaches and even meaner tempers.",
        "common",
        "troop",
        3,
        5,
        NULL,
        '{"hit_speed":1.3,"targets":"ground","speed":"medium","range":"melee: short","count":5}'
    ),
    (
        'Wizard',
        "The most awesome man to ever set foot in the Arena, the Wizard will blow you away with his handsomeness... and/or fireballs.",
        "rare",
        "troop",
        4,
        5,
        NULL,
        '{"hit_speed":1.4,"targets":"air & ground","speed":"medium","range":5.5}'
    ),
    (
        'Inferno Tower',
        "Defensive building, roasts targets for damage that increases over time. Burns through even the biggest and toughest enemies!",
        "rare",
        "building",
        4,
        5,
        NULL,
        '{"hit_speed":0.4,"targets":"air & ground","range":6,"lifetime":30}'
    ),
    (
        'Witch',
        "Summons Skeletons, shoots destructo beams, has glowing pink eyes that unfortunately don't shoot lasers.",
        "epic",
        "troop",
        6,
        5,
        NULL,
        '{"spawn_speed":7,"hit_speed":1.1,"targets":"air & ground","speed":"medium","range":5.5}'
    ), 
    (
        'Royal Hogs',
        "The King's personal pets are loose! They love to chomp on apples and towers alike - who let the hogs out?!",
        "rare",
        "troop",
        7,
        5,
        NULL,
        '{"hit_speed":1.2,"targets":"buildings","speed":"very fast","range":"melee: short","count":4}'
    ),
    (
        'Balloon',
        "As pretty as they are, you won't want a parade of THESE balloons showing up on the horizon. Drops powerful bombs and when shot down, crashes dealing area damage.",
        "epic",
        "troop",
        7,
        5,
        NULL,
        '{"hit_speed":2,"targets":"buildings","speed":"medium","range":"melee: short"}'
    ),
    (
        'Prince',
        "Don't let the little pony fool you. Once the Prince gets a running start, you WILL be trampled. Deals double damage once he gets charging.",
        "epic",
        "troop",
        7,
        5,
        NULL,
        '{"hit_speed":1.4,"targets":"ground","speed":"medium","range":"melee: long"}'
    ),
    (
        'Minion Horde',
        "Six fast, unarmored flying attackers. Three's a crowd, six is a horde!",
        "common",
        "troop",
        10,
        5,
        NULL,
        '{"hit_speed":1.1,"targets":"air & ground","speed":"fast","range":2.5,"count":6}'
    ),
    (
        'Ram Rider',
        "Together they charge through the Arena; snaring enemies, knocking down towers... and chewing grass!?",
        "legendary",
        "troop",
        11,
        5,
        NULL,
        '{"rider_count":1,"hit_speed":1.8,"targets":"buildings","speed":"medium","range":"melee: short"}'
    ),
    (
        'Electro Dragon',
        "Spits out bolts of electricity hitting up to three targets. Suffers from middle child syndrome to boot.",
        "epic",
        "troop",
        12,
        5,
        NULL,
        '{"chained_attacks":3,"hit_speed":2.1,"stun_duration":0.5,"targets":"air & ground","speed":"medium","range":3.5}'
    ),
    (
        'Rascal Boy',
        "",
        "common",
        "troop",
        13,
        5,
        NULL,
        '{"hit_speed":1.5,"speed":"medium","range":"melee: short","targets":"ground"}'
    ),
    (
        'Rascal Girl',
        "",
        "common",
        "troop",
        13,
        5,
        NULL,
        '{"hit_speed":1,"speed":"medium","range":5,"targets":"air & ground"}'
    ),
    (
        'Rascals',
        "Spawns a mischievous trio of Rascals! The boy takes the lead, while the girls pelt enemies from behind... with slingshots full of Double Trouble Gum!",
        "common",
        "troop",
        13,
        5,
        NULL,
        '{"rascal_boy_count":1,"rascal_girl_count":2}'
    ),
    (
        'Bowler',
        "This big blue dude digs the simple things in life - Dark Elixir drinks and throwing rocks. His massive boulders roll through their target, hitting everything behind for a strike!",
        "epic",
        "troop",
        13,
        5,
        NULL,
        '{"hit_speed":2.5,"targets":"ground","speed":"slow","range":4,"projectile_range":7.5}'
    ),
    (
        'Executioner',
        "He throws his axe like a boomerang, striking all enemies on the way out AND back. It's a miracle he doesn't lose an arm.",
        "epic",
        "troop",
        14,
        5,
        NULL,
        '{"hit_speed":2.4,"targets":"air & ground","speed":"medium","range":4.5,"projectile_range":7.5}'
    ),
    (
        'Cannon Cart',
        "A Cannon on wheels?! Bet they won't see that coming! At low health, it becomes a Cannon not on wheels.",
        "epic",
        "troop",
        15,
        5,
        NULL,
        '{"hit_speed":0.9,"targets":"ground","speed":"medium","range":5.5,"activation":50}'
    ),
    (
        'Goblin Machine',
        "Goblin Machine has two arms for melee and one big rocket for faraway targets. Who let a baby drive this thing?",
        "legendary",
        "troop",
        15,
        5,
        NULL,
        '{"hit_speed":1.2,"targets":"ground","speed":"medium","range":"melee: medium"}'
    ),
    (
        'Graveyard',
        "Surprise! It's a party. A Skeleton party, anywhere in the Arena. Yay!",
        "legendary",
        "spell",
        12,
        5,
        NULL,
        '{"spawn_speed":0.5,"duration":9,"radius":4}'
    ),
    (
        'Archer Queen',
        "She is fast, deadly and hard to catch. Beware of her crossbow bolts and try not to blink - you might miss her!",
        "champion",
        "troop",
        17,
        5,
        NULL,
        '{"hit_speed":1.2,"targets":"air & ground","speed":"medium","range":5}'
    ),
    (
        'Goblinstein',
        "It’s ALIVE! Monster lumbers towards enemy buildings while Doctor waits to spring the trap. At the press of a button, Doctor electrifies the link between himself and Monster, frying nearby enemies!",
        "champion",
        "troop",
        18,
        5,
        NULL,
        '{"hit_speed":1.8,"stun_duration":0.5,"targets":"air & ground","speed":"medium","range":5.5}'
    ),
    (
        'Monk',
        "Monk has spent many isolated years perfecting a new style of combat. He fires off a 3-hit combo, with the last blow dealing extra Damage and pushing enemies back!",
        "champion",
        "troop",
        18,
        5,
        NULL,
        '{"hit_speed":0.8,"targets":"ground","speed":"medium","range":"melee: medium"}'
    ),
    (
        'Rocket',
        "Deals high damage to a small area. Looks really awesome doing it. Reduced damage to Crown Towers.",
        "rare",
        "spell",
        5,
        6,
        NULL,
        '{"radius":2}'
    ),
    (
        'Royal Giant',
        "Destroying enemy buildings with his massive cannon is his job; making a raggedy blond beard look good is his passion.",
        "common",
        "troop",
        7,
        6,
        NULL,
        '{"hit_speed":1.7,"targets":"buildings","speed":"slow","range":5}'
    ),
    (
        'Giant Skeleton',
        "The bigger the skeleton, the bigger the bomb. Carries a bomb that blows up when the Giant Skeleton dies.",
        "epic",
        "troop",
        8,
        6,
        NULL,
        '{"hit_speed":1.4,"targets":"ground","speed":"medium","range":"melee: short"}'
    ),
    (
        'Lightning',
        "Bolts of lightning damage and stun up to three enemy troops or buildings with the most hitpoints in the target area. Reduced damage to Crown Towers.",
        "epic",
        "spell",
        8,
        6,
        NULL,
        '{"count":3,"stun_duration":0.5,"radius":3.5}'
    ),
    (
        'Barbarian Hut',
        "Building that periodically spawns Barbarians to fight the enemy. Time to make the Barbarians!",
        "rare",
        "building",
        9,
        6,
        NULL,
        '{"spawn_on_death":{"name":"barbarian","count":1},"spawn_speed":15,"lifetime":30}'
    ),
    (
        'Goblin Giant',
        "This jolly green Goblin Giant stomps towards enemy buildings. He carries two Spear Goblins everywhere he goes. It's a weird but functional arrangement.",
        "epic",
        "troop",
        9,
        6,
        NULL,
        '{"spear_goblin_count":2,"hit_speed":1.5,"targets":"buildings","speed":"medium","range":"melee: medium"}'
    ),
    (
        'Elite Barbarians',
        "Spawns a pair of leveled up Barbarians. They're like regular Barbarians, only harder, better, faster and stronger.",
        "common",
        "troop",
        10,
        6,
        NULL,
        '{"hit_speed":1.4,"targets":"ground","speed":"fast","range":"melee: medium","count":2}'
    ),
    (
        'X-Bow',
        "Nice tower you got there. Would be a shame if this X-Bow whittled it down from this side of the Arena...",
        "epic",
        "building",
        10,
        6,
        NULL,
        '{"hit_speed":0.3,"targets":"ground","range":11.5,"deploy_time":3.5,"lifetime":30}'
    ),
    (
        'Sparky',
        "Sparky slowly charges up, then unloads MASSIVE area damage. Overkill isn't in her vocabulary.",
        "epic",
        "troop",
        10,
        6,
        NULL,
        '{"hit_speed":4,"targets":"ground","speed":"slow","range":5}'
    ),
    (
        'Elixir Collector',
        "You gotta spend Elixir to make Elixir! This building makes 8 Elixir over its Lifetime. Does not appear in your starting hand.",
        "rare",
        "building",
        15,
        6,
        NULL,
        '{"production_speed":12,"lifetime":76}'
    ),
    (
        'Spirit Empress',
        "Behold the Spirit Empress, the First of Her Name, Protector of Spirits, Rider of Dragons. Summon her as a hard-hitting ground troop for 3 Elixir, or atop her majestic spirit dragon for 6 Elixir.",
        "legendary",
        "troop",
        15,
        6,
        NULL,
        '{"hit_speed":1.4,"targets":"air & ground","speed":"medium","range":5,"ground_elixir":3}'
    ),
    (
        'Boss Bandit',
        "The boss of the Forest Gang finally shows her face...kind of. Boss Bandit dashes to her targets and is invulnerable while dashing. When things get tough, her pair of grenades are at the ready.",
        "champion",
        "troop",
        17,
        6,
        NULL,
        '{"min_dash_range":3.5,"max_dash_range":6,"hit_speed":1.2,"targets":"ground","speed":"fast","range":"melee: short"}'
    ),
    (
        'P.E.K.K.A.',
        "A heavily armored, slow melee fighter. Swings from the hip, but packs a huge punch.",
        "epic",
        "troop",
        6,
        7,
        NULL,
        '{"hit_speed":1.8,"targets":"ground","speed":"slow","range":"melee: medium"}'
    ),
    (
        'Royal Recruits',
        "Deploys a line of recruits armed with spears, shields and wooden buckets. They dream of ponies and one day wearing metal buckets.",
        "common",
        "troop",
        7,
        7,
        NULL,
        '{"hit_speed":1.3,"targets":"ground","speed":"medium","range":"melee: long","count":6}'
    ),
    (
        'Mega Knight',
        "He lands with the force of 1,000 mustaches, then jumps from one foe to the next dealing huge area damage. Stand aside!",
        "legendary",
        "troop",
        11,
        7,
        NULL,
        '{"min_jump_range":3.5,"max_jump_range":5,"hit_speed":1.7,"targets":"ground","speed":"medium","range":"melee: medium"}'
    ),
    (
        'Electro Giant',
        "He channels electricity through his Zap Pack, a unique device that stuns and damages any troop attacking him within its range. Don't tell him that his finger guns aren't real! He'll zap you.",
        "epic",
        "troop",
        13,
        7,
        NULL,
        '{"hit_speed":2.1,"targets":"buildings","speed":"slow","range":"melee: medium","stun_duration":0.5}'
    ),
    (
        'Lava Hound',
        "The Lava Hound is a majestic flying beast that attacks buildings. The Lava Pups are less majestic angry babies that attack anything.",
        "legendary",
        "troop",
        13,
        7,
        NULL,
        '{"hit_speed":1.3,"targets":"buildings","speed":"slow","range":3.5}'
    ),
    (
        'Golem',
        "Slow but durable, only attacks buildings. When destroyed, explosively splits into two Golemites and deals area damage!",
        "epic",
        "troop",
        10,
        8,
        NULL,
        '{"hit_speed":2.5,"targets":"buildings","speed":"slow","range":"melee: short","deploy_time":3}'
    ),
    (
        'Three Musketeers',
        "Trio of powerful, independent markswomen, fighting for justice and honor. Disrespecting them would not be just a mistake, it would be a cardinal sin!",
        "rare",
        "troop",
        7,
        9,
        NULL,
        '{"hit_speed":1,"targets":"air & ground","speed":"medium","range":6,"count":3}'
    );
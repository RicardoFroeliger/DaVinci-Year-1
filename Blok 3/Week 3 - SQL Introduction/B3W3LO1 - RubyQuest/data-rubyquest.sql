-- Gebruik de RubyQuest database voor de volgende queries.
use `rubyquest`;


-- Alle weapons
-- weapon: id, name, price, attack
insert into `weapon` values(1, "Dirk", 10, 100);
insert into `weapon` values(2, "Poniard", 15, 150);
insert into `weapon` values(3, "Rondel", 28, 200);
insert into `weapon` values(4, "Dagger", 50, 250);
insert into `weapon` values(5, "Anelace", 70, 300);
insert into `weapon` values(6, "Baselard", 110, 425);
insert into `weapon` values(7, "Cinquedea", 130, 450);
insert into `weapon` values(8, "Stiletto", 150, 500);
insert into `weapon` values(9, "Machete", 300, 725);
insert into `weapon` values(10, "Katara", 550, 925);
insert into `weapon` values(11, "Shortsword", 300, 700);
insert into `weapon` values(12, "Falchion", 320, 755);
insert into `weapon` values(13, "Flamberge", 430, 875);
insert into `weapon` values(14, "Cutlass", 620, 1180);
insert into `weapon` values(15, "Spatha", 735, 1400);
insert into `weapon` values(16, "Rapier", 965, 1770);
insert into `weapon` values(17, "Claymore", 1000, 1950);
insert into `weapon` values(18, "Sabre", 1175, 2115);
insert into `weapon` values(19, "Broadsword", 1345, 2545);
insert into `weapon` values(20, "Scimitar", 1600, 2865);
insert into `weapon` values(21, "Katana", 1830, 3040);
insert into `weapon` values(22, "Longsword", 2200, 3200);
insert into `weapon` values(23, "Quarterstaff", 12, 125);
insert into `weapon` values(24, "Club", 200, 515);
insert into `weapon` values(25, "Mace", 520, 1075);
insert into `weapon` values(26, "War Hammer", 700, 1580);
insert into `weapon` values(27, "Flail", 1200, 2050);
insert into `weapon` values(28, "Morning Star", 1730, 2450);
insert into `weapon` values(29, "Maul", 2005, 2900);
insert into `weapon` values(30, "Pike", 100, 325);
insert into `weapon` values(31, "Pitchfork", 150, 400);
insert into `weapon` values(32, "Lance", 500, 1000);
insert into `weapon` values(33, "Swordstaff", 575, 1100);
insert into `weapon` values(34, "Glaive", 780, 1505);
insert into `weapon` values(35, "Partisan", 945, 1800);
insert into `weapon` values(36, "Guisarme", 1400, 2200);
insert into `weapon` values(37, "scythe", 1700, 2770);
insert into `weapon` values(38, "Voulge", 1920, 2925);
insert into `weapon` values(39, "ranseur", 2520, 3100);
insert into `weapon` values(40, "Halberd", 2850, 3500);
insert into `weapon` values(41, "Tomahawk", 210, 225);
insert into `weapon` values(42, "Ono", 310, 750);
insert into `weapon` values(43, "Battle Axe", 1685, 2800);
insert into `weapon` values(44, "Sling", 15, 115);
insert into `weapon` values(45, "bow", 525, 900);
insert into `weapon` values(46, "Longbow", 780, 1500);
insert into `weapon` values(47, "Crossbow", 1300, 2500);

-- Boss Weapons
-- weapon: id, name, price, attack
insert into `weapon` values(48, "Shell Chain", 0, 1000);
insert into `weapon` values(49, "Soul Sword", 0, 2200);
insert into `weapon` values(50, "Obsidian Staff", 0, 3500);
insert into `weapon` values(51, "Knock-Down Hammer", 0, 4850);
insert into `weapon` values(52, "Axe of Terror", 0, 6200);


-- Armor
-- armor: id, name, price, defence
insert into `armor` values(1, "Loincloth", 10, 5);
insert into `armor` values(2, "Shirt", 15, 50);
insert into `armor` values(3, "Skin Armor", 100, 400);
insert into `armor` values(4, "Linothorax", 320, 900);
insert into `armor` values(5, "Cuirass", 515, 1200);
insert into `armor` values(6, "Leather Armor", 875, 1850);
insert into `armor` values(7, "Chainmail", 1125, 2200);
insert into `armor` values(8, "Plate Armor", 2100, 3100);
insert into `armor` values(9, "Bronze Armor", 2950, 4250);
insert into `armor` values(10, "Steel Armor", 3900, 5150);
insert into `armor` values(11, "Golden Armor", 5000, 6300);
insert into `armor` values(12, "Diamond Armor", 8325, 7250);
insert into `armor` values(13, "Shiny Robe", 1250, 2575);
insert into `armor` values(14, "Sorceress Skin", 4000, 4900);
insert into `armor` values(15, "Invincible Cloak", 8150, 7100);
insert into `armor` values(16, "Dragon Skull Armor", 9950, 8500);
insert into `armor` values(17, "Dragon Skin", 9950, 8500);
insert into `armor` values(18, "Tear of God", 15000, 9750);

-- Boss Armor
-- armor: id, name, price, defense
insert into `armor` values(19, "Giant Shell", 0, 400);
insert into `armor` values(20, "Skeleton Armor", 0, 625);
insert into `armor` values(21, "Evil Aura", 0, 1800);
insert into `armor` values(22, "Human Skin Armor", 0, 2375);
insert into `armor` values(23, "Apocalypse Armor", 0, 2925);


-- Alle dieren
-- animal: id, type, speed, defense, loyalty, owner
-- Sheep
insert into `animal` values(1, "Sheep", 3, 4, 0, 0);
insert into `animal` values(2, "Sheep", 3, 4, 0, 0);
insert into `animal` values(3, "Sheep", 3, 4, 0, 0);
insert into `animal` values(4, "Sheep", 3, 4, 0, 0);
insert into `animal` values(5, "Sheep", 3, 4, 0, 0);
insert into `animal` values(6, "Sheep", 3, 4, 0, 0);
insert into `animal` values(7, "Sheep", 3, 4, 1, 2);
insert into `animal` values(8, "Sheep", 3, 4, 0, 0);
insert into `animal` values(9, "Sheep", 3, 5, 2, 7);
insert into `animal` values(10, "Sheep", 3, 4, 0, 0);
insert into `animal` values(11, "Sheep", 3, 4, 0, 0);
insert into `animal` values(12, "Sheep", 3, 4, 0, 0);
insert into `animal` values(13, "Sheep", 3, 4, 0, 0);
insert into `animal` values(14, "Sheep", 3, 4, 0, 0);
insert into `animal` values(15, "Sheep", 3, 4, 0, 0);
insert into `animal` values(16, "Sheep", 3, 4, 0, 0);
insert into `animal` values(17, "Sheep", 3, 4, 0, 0);
insert into `animal` values(18, "Sheep", 3, 4, 0, 0);
insert into `animal` values(19, "Sheep", 3, 4, 0, 0);
insert into `animal` values(20, "Sheep", 3, 4, 0, 0);
insert into `animal` values(21, "Sheep", 3, 4, 0, 0);
insert into `animal` values(22, "Sheep", 3, 4, 0, 0);
insert into `animal` values(23, "Sheep", 3, 4, 0, 0);

-- Wolfs
insert into `animal` values(24, "Wolf", 6, 5, 0, 0);
insert into `animal` values(25, "Wolf", 6, 5, 0, 0);
insert into `animal` values(26, "Wolf", 6, 5, 0, 0);
insert into `animal` values(27, "Wolf", 6, 5, 0, 0);
insert into `animal` values(28, "Wolf", 6, 5, 0, 0);
insert into `animal` values(29, "Wolf", 6, 5, 0, 0);
insert into `animal` values(30, "Wolf", 6, 5, 1, 10);
insert into `animal` values(31, "Wolf", 6, 5, 0, 0);
insert into `animal` values(32, "Wolf", 6, 5, 0, 0);
insert into `animal` values(33, "Wolf", 6, 5, 0, 0);
insert into `animal` values(34, "Wolf", 6, 5, 0, 0);
insert into `animal` values(35, "Wolf", 6, 5, 0, 0);
insert into `animal` values(36, "Wolf", 7, 6, 4, 9);
insert into `animal` values(37, "Wolf", 6, 5, 0, 0);
insert into `animal` values(38, "Wolf", 6, 5, 0, 0);
insert into `animal` values(39, "Wolf", 6, 5, 0, 0);

-- Bears
insert into `animal` values(40, "Bear", 5, 8, 0, 0);
insert into `animal` values(41, "Bear", 5, 8, 0, 0);
insert into `animal` values(42, "Bear", 5, 8, 0, 0);
insert into `animal` values(43, "Bear", 5, 8, 0, 0);
insert into `animal` values(44, "Bear", 5, 8, 0, 0);
insert into `animal` values(45, "Bear", 5, 9, 3, 3);
insert into `animal` values(46, "Bear", 5, 8, 0, 0);
insert into `animal` values(47, "Bear", 5, 8, 0, 0);
insert into `animal` values(48, "Bear", 5, 8, 0, 0);
insert into `animal` values(49, "Bear", 5, 8, 0, 0);
insert into `animal` values(50, "Bear", 5, 8, 0, 0);
insert into `animal` values(51, "Bear", 5, 8, 0, 0);
insert into `animal` values(52, "Bear", 5, 8, 0, 0);
insert into `animal` values(53, "Bear", 5, 8, 0, 0);

-- Eagles
insert into `animal` values(54, "Eagle", 8, 2, 0, 0);
insert into `animal` values(55, "Eagle", 8, 2, 0, 0);
insert into `animal` values(56, "Eagle", 8, 2, 0, 0);
insert into `animal` values(57, "Eagle", 8, 2, 0, 0);
insert into `animal` values(58, "Eagle", 8, 2, 0, 0);
insert into `animal` values(59, "Eagle", 9, 3, 9, 1);
insert into `animal` values(60, "Eagle", 8, 2, 0, 0);
insert into `animal` values(61, "Eagle", 8, 2, 0, 0);
insert into `animal` values(62, "Eagle", 8, 2, 0, 0);
insert into `animal` values(63, "Eagle", 8, 3, 6, 4);
insert into `animal` values(64, "Eagle", 8, 2, 0, 0);
insert into `animal` values(65, "Eagle", 8, 2, 0, 0);
insert into `animal` values(66, "Eagle", 8, 2, 0, 0);
insert into `animal` values(67, "Eagle", 8, 2, 0, 0);
insert into `animal` values(68, "Eagle", 8, 2, 0, 0);
insert into `animal` values(69, "Eagle", 8, 2, 0, 0);
insert into `animal` values(70, "Eagle", 8, 2, 0, 0);

-- Tigers
insert into `animal` values(71, "Tiger", 9, 8, 0, 0);
insert into `animal` values(72, "Tiger", 9, 8, 0, 0);
insert into `animal` values(73, "Tiger", 9, 8, 0, 0);
insert into `animal` values(74, "Tiger", 9, 8, 0, 0);
insert into `animal` values(75, "Tiger", 9, 8, 0, 0);
insert into `animal` values(76, "Tiger", 9, 8, 0, 0);
insert into `animal` values(77, "Tiger", 10, 9, 3, 8);

-- Sea Snakes
insert into `animal` values(78, "Sea Snake", 10, 6, 0, 0);
insert into `animal` values(79, "Sea Snake", 10, 6, 0, 0);
insert into `animal` values(80, "Sea Snake", 10, 6, 0, 0);
insert into `animal` values(81, "Sea Snake", 10, 6, 0, 0);
insert into `animal` values(83, "Sea Snake", 10, 8, 10, 2);
insert into `animal` values(84, "Sea Snake", 10, 6, 0, 0);

-- Giant Rats
insert into `animal` values(85, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(86, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(87, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(88, "Giant Rat", 6, 6, 1, 5);
insert into `animal` values(89, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(90, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(91, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(92, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(93, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(94, "Giant Rat", 6, 8, 3, 6);
insert into `animal` values(95, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(96, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(98, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(99, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(100, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(101, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(102, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(103, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(104, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(105, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(106, "Giant Rat", 6, 6, 0, 0);
insert into `animal` values(107, "Giant Rat", 6, 6, 0, 0);


-- Eerst een nieuwe person aanmaken en dan bepalen of het een hero of een NPC is.
-- Maak eerst alle heroes, regio's en dan de cities en dan de NPC's zodat koppeling juist is

-- Eerst alle 'heroes'
-- Person: id, name, sex, max_health, attack, defense, agility, experience, gold, weapon, armor
-- Hero: id, level, health, stamina, intelligence, charisma, resilience, person
-- experience to level = 300 * 1,32^[level]
insert into `person` values(1, "Konan", "m", 1235, 120, 85, 50, 3652, 1850, 22, 4);
insert into `hero` values(null, 9, 1035, 30, 70, 80, 60, 1);

insert into `person` values(2, "Captain America", "m", 3585, 700, 165, 183, 4979965, 1800, 36, 17);
insert into `hero` values(null, 35, 3585, 50, 40, 10, 30, 2);

insert into `person` values(3, "Mega Mindy", "f", 500, 40, 60, 15, 540, 110, 46, 8);
insert into `hero` values(null, 2, 500, 80, 30, 60, 70, 3);

insert into `person` values(4, "Catwoman", "f", 1760, 60, 100, 80, 25700, 1030, 47, 2);
insert into `hero` values(null, 16, 1760, 80, 90, 50, 60, 4);

insert into `person` values(5, "Buzz Lightyear", "m", 1530, 185, 160, 60, 6380, 1345, 6, 11);
insert into `hero` values(null, 11, 1530, 10, 30, 90, 20, 5);

insert into `person` values(6, "Mario", "m", 420, 24, 28, 27, 697, 160, 16, 7);
insert into `hero` values(null, 3, 420, 90, 20, 80, 50, 6);

insert into `person` values(7, "Shrek", "m", 1360, 70, 68, 30, 14720, 467, 29, 4);
insert into `hero` values(null, 14, 1350, 60, 30, 70, 60, 7);

insert into `person` values(8, "Dante", "m", 1370, 93, 74, 112, 3702, 305, 11, 5);
insert into `hero` values(null, 9, 1370, 20, 90, 60, 70, 8);

insert into `person` values(9, "Zelda", "f", 2630, 339, 512, 109, 77443, 1925, 30, 15);
insert into `hero` values(null, 20, 2630, 90, 20, 90, 40, 9);

insert into `person` values(10, "Super MeatBoy", "m", 250, 5, 8, 2, 205, 32, 26, 1);
insert into `hero` values(null, 1, 210, 10, 80, 30, 30, 10);


-- Maak alle regio's en dan steden in RubyQuest
-- Region: id, name, holder
-- City: id, name, region

-- King / Boss = Bowser (id 11)
insert into `region` values(1, "Gursoy Island", 1);
insert into `city` values(19, "Tomparf", 1);
insert into `city` values(20, "Preqeu", 1);
insert into `city` values(21, "Hansora", 1);
insert into `city` values(22, "Ismir", 1);

-- King / Boss = Ser Cauthrien (id 12)
insert into `region` values(2, "Sempre", 1);
insert into `city` values(23, "Sempre City", 2);
insert into `city` values(24, "Nayak", 2);
insert into `city` values(25, "Umprivaklo", 2);
insert into `city` values(26, "Fjitsur", 2);
insert into `city` values(27, "Soyaki", 2);

-- King / Boss = Magician Faust (id 13)
insert into `region` values(3, "South Groval", 1);
insert into `city` values(7, "Harbor", 3);
insert into `city` values(8, "Montse", 3);
insert into `city` values(9, "Laeks", 3);
insert into `city` values(10, "Vermon", 3);
insert into `city` values(11, "Nordberg", 3);

-- King / Boss = Beelzebub (id 14)
insert into `region` values(4, "North Groval", 1);
insert into `city` values(1, "Knael", 4);
insert into `city` values(2, "Troy", 4);
insert into `city` values(3, "Pacifa", 4);
insert into `city` values(4, "Onker", 4);
insert into `city` values(5, "Quiro", 4);
insert into `city` values(6, "Antsor", 4);

-- King / Boss = The Demi-Fiend (id 15)
insert into `region` values(5, "Breach", 1);
insert into `city` values(12, "Charcol", 5);
insert into `city` values(13, "Droins", 5);
insert into `city` values(14, "Mordor", 5);
insert into `city` values(15, "Unterdages", 5);
insert into `city` values(16, "Drakegor", 5);
insert into `city` values(17, "Xantr", 5);
insert into `city` values(18, "Yester", 5);


-- Nu alle NPC's
-- Person: id, name, sex, max_health, attack, defense, agility, experience, gold, weapon, armor
-- NPC: id, health, profession, city, person
insert into `person` values(11, "Bowser", "m", 10000, 400, 100, 80, 500000, 10000, 48, 19);
insert into `npc` values(1, 10000, "Boss", 20, 11);

insert into `person` values(12, "Ser Cauthrien", "f", 22000, 800, 270, 120, 800000, 14000, 49, 20);
insert into `npc` values(2, 22000, "Boss", 25, 12);

insert into `person` values(13, "Magician Faust", "m", 28000, 1500, 325, 100, 1500000, 20000, 50, 21);
insert into `npc` values(3, 28000, "Boss", 11, 13);

insert into `person` values(14, "Beelzebub", "m", 40000, 2500, 610, 40, 2700000, 25000, 51, 22);
insert into `npc` values(4, 35500, "Boss", 3, 14);

insert into `person` values(15, "The Demi-Fiend", "m", 50000, 3800, 800, 100, 5200000, 40000, 52, 23);
insert into `npc` values(5, 50000, "Boss", 18, 15);


-- Update de regio's
update `region` set `holder` = 14 where `id` = 1;
update `region` set `holder` = 13 where `id` = 2;
update `region` set `holder` = 15 where `id` = 3;
update `region` set `holder` = 11 where `id` = 4;
update `region` set `holder` = 12 where `id` = 5;


-- City 1 
insert into `person` values(16, "Ryn'den", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(6, 250, "Blacksmith", 1, 16); 

insert into `person` values(17, "Ghas", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(7, 250, "Apothecary", 1, 17); 

insert into `person` values(18, "Torhin", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(8, 250, "Tailor", 1, 18); 

insert into `person` values(19, "Sliseror", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(9, 250, "Innkeeper", 1, 19); 

insert into `person` values(20, "En'war", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(10, 250, "Craftsman", 1, 20); 

insert into `person` values(21, "Usttaia", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(11, 250, "Pet Trainer", 1, 21); 

insert into `person` values(22, "Polran", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(12, 250, "Elder", 1, 22); 

-- City 2 
insert into `person` values(23, "Issrak", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(13, 250, "Blacksmith", 2, 23); 

insert into `person` values(24, "Tredrakel", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(14, 250, "Apothecary", 2, 24); 

insert into `person` values(25, "Phoaughough", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(15, 250, "Tailor", 2, 25); 

insert into `person` values(26, "Urnlor", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(16, 250, "Innkeeper", 2, 26); 

insert into `person` values(27, "Ioma", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(17, 250, "Craftsman", 2, 27); 

insert into `person` values(28, "Er-rothon", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(18, 250, "Pet Trainer", 2, 28); 

insert into `person` values(29, "Samgha", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(19, 250, "Elder", 2, 29); 

-- City 3 
insert into `person` values(30, "Oldoight", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(20, 250, "Blacksmith", 3, 30); 

insert into `person` values(31, "Oughattonosy", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(21, 250, "Apothecary", 3, 31); 

insert into `person` values(32, "Radardtan", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(22, 250, "Tailor", 3, 32); 

insert into `person` values(33, "Ir'ech", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(23, 250, "Innkeeper", 3, 33); 

insert into `person` values(34, "Ashzos", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(24, 250, "Craftsman", 3, 34); 

insert into `person` values(35, "Nyswhon", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(25, 250, "Pet Trainer", 3, 35); 

insert into `person` values(36, "Perer", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(26, 250, "Elder", 3, 36); 

-- City 4 
insert into `person` values(37, "Tonpryn", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(27, 250, "Blacksmith", 4, 37); 

insert into `person` values(38, "Chrorad", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(28, 250, "Apothecary", 4, 38); 

insert into `person` values(39, "Deemtor", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(29, 250, "Tailor", 4, 39); 

insert into `person` values(40, "Ingurn", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(30, 250, "Innkeeper", 4, 40); 

insert into `person` values(41, "Luzslor", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(31, 250, "Craftsman", 4, 41); 

insert into `person` values(42, "Burkelem", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(32, 250, "Pet Trainer", 4, 42); 

insert into `person` values(43, "Chel", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(33, 250, "Elder", 4, 43); 

-- City 5 
insert into `person` values(44, "Drainatin", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(34, 250, "Blacksmith", 5, 44); 

insert into `person` values(45, "Mossay", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(35, 250, "Apothecary", 5, 45); 

insert into `person` values(46, "Nyetlor", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(36, 250, "Tailor", 5, 46); 

insert into `person` values(47, "Therton", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(37, 250, "Innkeeper", 5, 47); 

insert into `person` values(48, "Kotaj", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(38, 250, "Craftsman", 5, 48); 

insert into `person` values(49, "Nimani", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(39, 250, "Pet Trainer", 5, 49); 

insert into `person` values(50, "Isuske", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(40, 250, "Elder", 5, 50); 

-- City 6 
insert into `person` values(51, "Ens", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(41, 250, "Blacksmith", 6, 51); 

insert into `person` values(52, "Chaquean", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(42, 250, "Apothecary", 6, 52); 

insert into `person` values(53, "Vamlye", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(43, 250, "Tailor", 6, 53); 

insert into `person` values(54, "Gum", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(44, 250, "Innkeeper", 6, 54); 

insert into `person` values(55, "Ris'ran", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(45, 250, "Craftsman", 6, 55); 

insert into `person` values(56, "Peroust", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(46, 250, "Pet Trainer", 6, 56); 

insert into `person` values(57, "Enys", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(47, 250, "Elder", 6, 57); 

-- City 7 
insert into `person` values(58, "Echuf", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(48, 250, "Blacksmith", 7, 58); 

insert into `person` values(59, "Liyese", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(49, 250, "Apothecary", 7, 59); 

insert into `person` values(60, "Ach'ran", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(50, 250, "Tailor", 7, 60); 

insert into `person` values(61, "Essold", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(51, 250, "Innkeeper", 7, 61); 

insert into `person` values(62, "Uema", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(52, 250, "Craftsman", 7, 62); 

insert into `person` values(63, "Xilent", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(53, 250, "Pet Trainer", 7, 63); 

insert into `person` values(64, "Nallyeo", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(54, 250, "Elder", 7, 64); 

-- City 8 
insert into `person` values(65, "Undald", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(55, 250, "Blacksmith", 8, 65); 

insert into `person` values(66, "Athemis", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(56, 250, "Apothecary", 8, 66); 

insert into `person` values(67, "Awas", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(57, 250, "Tailor", 8, 67); 

insert into `person` values(68, "Rodskel", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(58, 250, "Innkeeper", 8, 68); 

insert into `person` values(69, "Rainadan", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(59, 250, "Craftsman", 8, 69); 

insert into `person` values(70, "Ightalever", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(60, 250, "Pet Trainer", 8, 70); 

insert into `person` values(71, "Shyz", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(61, 250, "Elder", 8, 71); 

-- City 9 
insert into `person` values(72, "Entorm", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(62, 250, "Blacksmith", 9, 72); 

insert into `person` values(73, "Ina'vor'oph", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(63, 250, "Apothecary", 9, 73); 

insert into `person` values(74, "Vernn", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(64, 250, "Tailor", 9, 74); 

insert into `person` values(75, "Tedar", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(65, 250, "Innkeeper", 9, 75); 

insert into `person` values(76, "Umedyn", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(66, 250, "Craftsman", 9, 76); 

insert into `person` values(77, "Nahuz", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(67, 250, "Pet Trainer", 9, 77); 

insert into `person` values(78, "Andril", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(68, 250, "Elder", 9, 78); 

-- City 10 
insert into `person` values(79, "Kalskel", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(69, 250, "Blacksmith", 10, 79); 

insert into `person` values(80, "Sulthin", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(70, 250, "Apothecary", 10, 80); 

insert into `person` values(81, "Tais", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(71, 250, "Tailor", 10, 81); 

insert into `person` values(82, "Tidtan", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(72, 250, "Innkeeper", 10, 82); 

insert into `person` values(83, "Uinea", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(73, 250, "Craftsman", 10, 83); 

insert into `person` values(84, "Schehin", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(74, 250, "Pet Trainer", 10, 84); 

insert into `person` values(85, "Roth'gha", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(75, 250, "Elder", 10, 85); 

-- City 11 
insert into `person` values(86, "Hatck", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(76, 250, "Blacksmith", 11, 86); 

insert into `person` values(87, "Errhat", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(77, 250, "Apothecary", 11, 87); 

insert into `person` values(88, "Onck", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(78, 250, "Tailor", 11, 88); 

insert into `person` values(89, "Awoldo", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(79, 250, "Innkeeper", 11, 89); 

insert into `person` values(90, "Yidini", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(80, 250, "Craftsman", 11, 90); 

insert into `person` values(91, "Lyerak", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(81, 250, "Pet Trainer", 11, 91); 

insert into `person` values(92, "Boek", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(82, 250, "Elder", 11, 92); 

-- City 12 
insert into `person` values(93, "Ildsul", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(83, 250, "Blacksmith", 12, 93); 

insert into `person` values(94, "Blen", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(84, 250, "Apothecary", 12, 94); 

insert into `person` values(95, "Emm", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(85, 250, "Tailor", 12, 95); 

insert into `person` values(96, "Samran", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(86, 250, "Innkeeper", 12, 96); 

insert into `person` values(97, "Sulightust", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(87, 250, "Craftsman", 12, 97); 

insert into `person` values(98, "Banor", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(88, 250, "Pet Trainer", 12, 98); 

insert into `person` values(99, "Ineust", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(89, 250, "Elder", 12, 99); 

-- City 13 
insert into `person` values(100, "Ad'hat", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(90, 250, "Blacksmith", 13, 100); 

insert into `person` values(101, "Tassul", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(91, 250, "Apothecary", 13, 101); 

insert into `person` values(102, "Eltasi", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(92, 250, "Tailor", 13, 102); 

insert into `person` values(103, "Lorrodque", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(93, 250, "Innkeeper", 13, 103); 

insert into `person` values(104, "Peus", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(94, 250, "Craftsman", 13, 104); 

insert into `person` values(105, "Seel", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(95, 250, "Pet Trainer", 13, 105); 

insert into `person` values(106, "Riltur", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(96, 250, "Elder", 13, 106); 

-- City 14 
insert into `person` values(107, "Eldtur", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(97, 250, "Blacksmith", 14, 107); 

insert into `person` values(108, "Enth'ati", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(98, 250, "Apothecary", 14, 108); 

insert into `person` values(109, "Cheiahon", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(99, 250, "Tailor", 14, 109); 

insert into `person` values(110, "Hatackvesackos", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(100, 250, "Innkeeper", 14, 110); 

insert into `person` values(111, "Shyvor", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(101, 250, "Craftsman", 14, 111); 

insert into `person` values(112, "Slias", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(102, 250, "Pet Trainer", 14, 112); 

insert into `person` values(113, "Hiy", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(103, 250, "Elder", 14, 113); 

-- City 15 
insert into `person` values(114, "Ackurn", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(104, 250, "Blacksmith", 15, 114); 

insert into `person` values(115, "Dared-ild", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(105, 250, "Apothecary", 15, 115); 

insert into `person` values(116, "Mukovo", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(106, 250, "Tailor", 15, 116); 

insert into `person` values(117, "As'ingy", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(107, 250, "Innkeeper", 15, 117); 

insert into `person` values(118, "L'mosler", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(108, 250, "Craftsman", 15, 118); 

insert into `person` values(119, "Kinunt", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(109, 250, "Pet Trainer", 15, 119); 

insert into `person` values(120, "Oira", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(110, 250, "Elder", 15, 120); 

-- City 16 
insert into `person` values(121, "Cer'ing", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(111, 250, "Blacksmith", 16, 121); 

insert into `person` values(122, "Ightyril", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(112, 250, "Apothecary", 16, 122); 

insert into `person` values(123, "Stusmor", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(113, 250, "Tailor", 16, 123); 

insert into `person` values(124, "Aseyt", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(114, 250, "Innkeeper", 16, 124); 

insert into `person` values(125, "Anyso", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(115, 250, "Craftsman", 16, 125); 

insert into `person` values(126, "Tic", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(116, 250, "Pet Trainer", 16, 126); 

insert into `person` values(127, "Belbel", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(117, 250, "Elder", 16, 127); 

-- City 17 
insert into `person` values(128, "Rodkal", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(118, 250, "Blacksmith", 17, 128); 

insert into `person` values(129, "Iatas", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(119, 250, "Apothecary", 17, 129); 

insert into `person` values(130, "Emhata", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(120, 250, "Tailor", 17, 130); 

insert into `person` values(131, "Raks", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(121, 250, "Innkeeper", 17, 131); 

insert into `person` values(132, "Eseise", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(122, 250, "Craftsman", 17, 132); 

insert into `person` values(133, "Raninasam", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(123, 250, "Pet Trainer", 17, 133); 

insert into `person` values(134, "It'lyea", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(124, 250, "Elder", 17, 134); 

-- City 18 
insert into `person` values(135, "Ittinat", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(125, 250, "Blacksmith", 18, 135); 

insert into `person` values(136, "Omath", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(126, 250, "Apothecary", 18, 136); 

insert into `person` values(137, "Enjunt", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(127, 250, "Tailor", 18, 137); 

insert into `person` values(138, "Thitwar", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(128, 250, "Innkeeper", 18, 138); 

insert into `person` values(139, "Sniqua", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(129, 250, "Craftsman", 18, 139); 

insert into `person` values(140, "Kellye", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(130, 250, "Pet Trainer", 18, 140); 

insert into `person` values(141, "Sayul", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(131, 250, "Elder", 18, 141); 

-- City 19 
insert into `person` values(142, "Vorlersam", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(132, 250, "Blacksmith", 19, 142); 

insert into `person` values(143, "Sam'alei", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(133, 250, "Apothecary", 19, 143); 

insert into `person` values(144, "Rak'om'ead", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(134, 250, "Tailor", 19, 144); 

insert into `person` values(145, "Skel'quea", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(135, 250, "Innkeeper", 19, 145); 

insert into `person` values(146, "Seysash", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(136, 250, "Craftsman", 19, 146); 

insert into `person` values(147, "Zodovo", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(137, 250, "Pet Trainer", 19, 147); 

insert into `person` values(148, "Unddarash", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(138, 250, "Elder", 19, 148); 

-- City 20 
insert into `person` values(149, "Zhap", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(139, 250, "Blacksmith", 20, 149); 

insert into `person` values(150, "Cerrad", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(140, 250, "Apothecary", 20, 150); 

insert into `person` values(151, "Hiemkim", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(141, 250, "Tailor", 20, 151); 

insert into `person` values(152, "Nalelm", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(142, 250, "Innkeeper", 20, 152); 

insert into `person` values(153, "Y'taiough", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(143, 250, "Craftsman", 20, 153); 

insert into `person` values(154, "Ealea", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(144, 250, "Pet Trainer", 20, 154); 

insert into `person` values(155, "Etk", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(145, 250, "Elder", 20, 155); 

-- City 21 
insert into `person` values(156, "Cheal", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(146, 250, "Blacksmith", 21, 156); 

insert into `person` values(157, "Estina", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(147, 250, "Apothecary", 21, 157); 

insert into `person` values(158, "Gyves", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(148, 250, "Tailor", 21, 158); 

insert into `person` values(159, "Kelbur", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(149, 250, "Innkeeper", 21, 159); 

insert into `person` values(160, "E'naliss", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(150, 250, "Craftsman", 21, 160); 

insert into `person` values(161, "Oeny", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(151, 250, "Pet Trainer", 21, 161); 

insert into `person` values(162, "Modraris", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(152, 250, "Elder", 21, 162); 

-- City 22 
insert into `person` values(163, "Elmuk", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(153, 250, "Blacksmith", 22, 163); 

insert into `person` values(164, "Myf", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(154, 250, "Apothecary", 22, 164); 

insert into `person` values(165, "Lobih", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(155, 250, "Tailor", 22, 165); 

insert into `person` values(166, "Estuos", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(156, 250, "Innkeeper", 22, 166); 

insert into `person` values(167, "Bexym", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(157, 250, "Craftsman", 22, 167); 

insert into `person` values(168, "Awpage", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(158, 250, "Pet Trainer", 22, 168); 

insert into `person` values(169, "Yineu", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(159, 250, "Elder", 22, 169); 

-- City 23 
insert into `person` values(170, "Ler'rake", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(160, 250, "Blacksmith", 23, 170); 

insert into `person` values(171, "Ton'any", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(161, 250, "Apothecary", 23, 171); 

insert into `person` values(172, "Rynz", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(162, 250, "Tailor", 23, 172); 

insert into `person` values(173, "Detinine", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(163, 250, "Innkeeper", 23, 173); 

insert into `person` values(174, "Beleia", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(164, 250, "Craftsman", 23, 174); 

insert into `person` values(175, "Mirotug", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(165, 250, "Pet Trainer", 23, 175); 

insert into `person` values(176, "Streyt", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(166, 250, "Elder", 23, 176); 

-- City 24 
insert into `person` values(177, "Lomada", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(167, 250, "Blacksmith", 24, 177); 

insert into `person` values(178, "Ineald", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(168, 250, "Apothecary", 24, 178); 

insert into `person` values(179, "Wor'pero", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(169, 250, "Tailor", 24, 179); 

insert into `person` values(180, "Zeskel", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(170, 250, "Innkeeper", 24, 180); 

insert into `person` values(181, "Naeg", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(171, 250, "Craftsman", 24, 181); 

insert into `person` values(182, "Irchee", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(172, 250, "Pet Trainer", 24, 182); 

insert into `person` values(183, "Whuik", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(173, 250, "Elder", 24, 183); 

-- City 25 
insert into `person` values(184, "Rois", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(174, 250, "Blacksmith", 25, 184); 

insert into `person` values(185, "Omeng", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(175, 250, "Apothecary", 25, 185); 

insert into `person` values(186, "Xosuny", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(176, 250, "Tailor", 25, 186); 

insert into `person` values(187, "Polrd", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(177, 250, "Innkeeper", 25, 187); 

insert into `person` values(188, "Bofege", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(178, 250, "Craftsman", 25, 188); 

insert into `person` values(189, "Rillcha", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(179, 250, "Pet Trainer", 25, 189); 

insert into `person` values(190, "Enad", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(180, 250, "Elder", 25, 190); 

-- City 26 
insert into `person` values(191, "Ormny", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(181, 250, "Blacksmith", 26, 191); 

insert into `person` values(192, "Athikim", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(182, 250, "Apothecary", 26, 192); 

insert into `person` values(193, "Aldion", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(183, 250, "Tailor", 26, 193); 

insert into `person` values(194, "Perqueash", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(184, 250, "Innkeeper", 26, 194); 

insert into `person` values(195, "Therengwar", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(185, 250, "Craftsman", 26, 195); 

insert into `person` values(196, "Athen", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(186, 250, "Pet Trainer", 26, 196); 

insert into `person` values(197, "Fytas", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(187, 250, "Elder", 26, 197); 

-- City 27 
insert into `person` values(198, "Skel'um", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(188, 250, "Blacksmith", 27, 198); 

insert into `person` values(199, "Ryimtan", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(189, 250, "Apothecary", 27, 199); 

insert into `person` values(200, "Ustur", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(190, 250, "Tailor", 27, 200); 

insert into `person` values(201, "Ranexi", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(191, 250, "Innkeeper", 27, 201); 

insert into `person` values(202, "Quigh", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(192, 250, "Craftsman", 27, 202); 

insert into `person` values(203, "Vesest", "f", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(193, 250, "Pet Trainer", 27, 203); 

insert into `person` values(204, "Snalko", "m", 250, 10, 10, 10, 0, 0, 1, 1); 
insert into `npc` values(194, 250, "Elder", 27, 204); 


-- Alle creatures
-- creature: id, name, attack, defense, max_health, health, gold, experience, spawn
-- Region 1 - Killer Bee
insert into `creature` values(1, "Killer Bee", 3, 5, 10, 10, 2, 1, 1);
insert into `creature` values(2, "Killer Bee", 3, 5, 10, 10, 2, 1, 1);
insert into `creature` values(3, "Killer Bee", 3, 5, 10, 10, 2, 1, 1);
insert into `creature` values(4, "Killer Bee", 3, 5, 10, 8, 2, 1, 1);
insert into `creature` values(5, "Killer Bee", 3, 5, 10, 10, 2, 1, 1);
insert into `creature` values(6, "Killer Bee", 3, 5, 10, 2, 2, 1, 1);
insert into `creature` values(7, "Killer Bee", 3, 5, 10, 10, 2, 1, 1);
insert into `creature` values(8, "Killer Bee", 3, 5, 10, 10, 2, 1, 1);
insert into `creature` values(9, "Killer Bee", 3, 5, 10, 5, 2, 1, 1);
-- Region 1 - Bat
insert into `creature` values(10, "Bat", 8, 10, 12, 12, 2, 5, 1);
insert into `creature` values(11, "Bat", 8, 10, 12, 12, 2, 5, 1);
insert into `creature` values(12, "Bat", 8, 10, 12, 12, 2, 5, 1);
insert into `creature` values(13, "Bat", 8, 10, 12, 5, 2, 5, 1);
insert into `creature` values(14, "Bat", 8, 10, 12, 12, 2, 5, 1);
insert into `creature` values(15, "Bat", 8, 10, 12, 12, 2, 5, 1);
insert into `creature` values(16, "Bat", 8, 10, 12, 12, 2, 5, 1);
insert into `creature` values(17, "Bat", 8, 10, 12, 11, 2, 5, 1);
insert into `creature` values(18, "Bat", 8, 10, 12, 12, 2, 5, 1);
insert into `creature` values(19, "Bat", 8, 10, 12, 12, 2, 5, 1);
insert into `creature` values(20, "Bat", 8, 10, 12, 12, 2, 5, 1);
insert into `creature` values(21, "Bat", 8, 10, 12, 6, 2, 5, 1);
insert into `creature` values(22, "Bat", 8, 10, 12, 12, 2, 5, 1);
-- Region 1 - Imp
insert into `creature` values(23, "Imp", 4, 15, 20, 20, 5, 8, 1);
insert into `creature` values(24, "Imp", 4, 15, 20, 19, 5, 8, 1);
insert into `creature` values(25, "Imp", 4, 15, 20, 20, 5, 8, 1);
insert into `creature` values(26, "Imp", 4, 15, 20, 20, 5, 8, 1);
insert into `creature` values(27, "Imp", 4, 15, 20, 20, 5, 8, 1);
insert into `creature` values(28, "Imp", 4, 15, 20, 20, 5, 8, 1);
insert into `creature` values(29, "Imp", 4, 15, 20, 20, 5, 8, 1);
insert into `creature` values(30, "Imp", 4, 15, 20, 2, 5, 8, 1);
insert into `creature` values(31, "Imp", 4, 15, 20, 20, 5, 8, 1);
insert into `creature` values(32, "Imp", 4, 15, 20, 20, 5, 8, 1);
insert into `creature` values(33, "Imp", 4, 15, 20, 20, 5, 8, 1);
-- Region 1 - Tarantula
insert into `creature` values(34, "Tarantula", 18, 7, 15, 15, 7, 10, 1);
insert into `creature` values(35, "Tarantula", 18, 7, 15, 11, 7, 10, 1);
insert into `creature` values(36, "Tarantula", 18, 7, 15, 15, 7, 10, 1);
insert into `creature` values(37, "Tarantula", 18, 7, 15, 15, 7, 10, 1);
insert into `creature` values(38, "Tarantula", 18, 7, 15, 15, 7, 10, 1);
insert into `creature` values(39, "Tarantula", 18, 7, 15, 15, 7, 10, 1);
insert into `creature` values(40, "Tarantula", 18, 7, 15, 3, 7, 10, 1);
insert into `creature` values(41, "Tarantula", 18, 7, 15, 15, 7, 10, 1);
insert into `creature` values(42, "Tarantula", 18, 7, 15, 15, 7, 10, 1);
-- Region 1 - Goblin
insert into `creature` values(43, "Goblin", 30, 10, 25, 25, 10, 12, 1);
insert into `creature` values(44, "Goblin", 30, 10, 25, 25, 10, 12, 1);
insert into `creature` values(45, "Goblin", 30, 10, 25, 12, 10, 12, 1);
insert into `creature` values(46, "Goblin", 30, 10, 25, 25, 10, 12, 1);
insert into `creature` values(47, "Goblin", 30, 10, 25, 25, 10, 12, 1);
insert into `creature` values(48, "Goblin", 30, 10, 25, 25, 10, 12, 1);
insert into `creature` values(49, "Goblin", 30, 10, 25, 25, 10, 12, 1);
insert into `creature` values(50, "Goblin", 30, 10, 25, 5, 10, 12, 1);
insert into `creature` values(51, "Goblin", 30, 10, 25, 25, 10, 12, 1);
insert into `creature` values(52, "Goblin", 30, 10, 25, 25, 10, 12, 1);
insert into `creature` values(53, "Goblin", 30, 10, 25, 25, 10, 12, 1);
-- Region 1 - Orc
insert into `creature` values(54, "Orc", 30, 20, 30, 30, 10, 15, 1);
insert into `creature` values(55, "Orc", 30, 20, 30, 30, 10, 15, 1);
insert into `creature` values(56, "Orc", 30, 20, 30, 30, 10, 15, 1);
insert into `creature` values(57, "Orc", 30, 20, 30, 23, 10, 15, 1);
insert into `creature` values(58, "Orc", 30, 20, 30, 30, 10, 15, 1);
insert into `creature` values(59, "Orc", 30, 20, 30, 30, 10, 15, 1);
insert into `creature` values(60, "Orc", 30, 20, 30, 30, 10, 15, 1);
insert into `creature` values(61, "Orc", 30, 20, 30, 30, 10, 15, 1);
insert into `creature` values(62, "Orc", 30, 20, 30, 3, 10, 15, 1);
insert into `creature` values(63, "Orc", 30, 20, 30, 30, 10, 15, 1);
insert into `creature` values(64, "Orc", 30, 20, 30, 45, 10, 15, 1);
insert into `creature` values(65, "Orc", 30, 20, 30, 30, 10, 15, 1);
insert into `creature` values(66, "Orc", 30, 20, 30, 30, 10, 15, 1);
insert into `creature` values(67, "Orc", 30, 20, 30, 30, 10, 15, 1);
insert into `creature` values(68, "Orc", 30, 20, 30, 30, 10, 15, 1);

-- Region 2 - Kobold
insert into `creature` values(69, "Kobold", 30, 60, 110, 110, 25, 22, 2);
insert into `creature` values(70, "Kobold", 30, 60, 110, 110, 25, 22, 2);
insert into `creature` values(71, "Kobold", 30, 60, 110, 110, 25, 22, 2);
insert into `creature` values(72, "Kobold", 30, 60, 110, 75, 25, 22, 2);
insert into `creature` values(73, "Kobold", 30, 60, 110, 110, 25, 22, 2);
insert into `creature` values(74, "Kobold", 30, 60, 110, 110, 25, 22, 2);
insert into `creature` values(75, "Kobold", 30, 60, 110, 110, 25, 22, 2);
insert into `creature` values(76, "Kobold", 30, 60, 110, 110, 25, 22, 2);
insert into `creature` values(77, "Kobold", 30, 60, 110, 63, 25, 22, 2);
insert into `creature` values(78, "Kobold", 30, 60, 110, 110, 25, 22, 2);
insert into `creature` values(79, "Kobold", 30, 60, 110, 110, 25, 22, 2);
insert into `creature` values(80, "Kobold", 30, 60, 110, 110, 25, 22, 2);
insert into `creature` values(81, "Kobold", 30, 60, 110, 22, 25, 22, 2);
insert into `creature` values(82, "Kobold", 30, 60, 110, 110, 25, 22, 2);
insert into `creature` values(83, "Kobold", 30, 60, 110, 110, 25, 22, 2);
insert into `creature` values(84, "Kobold", 30, 60, 110, 109, 25, 22, 2);
insert into `creature` values(85, "Kobold", 30, 60, 110, 110, 25, 22, 2);
-- Region 2 - Gargoyle
insert into `creature` values(86, "Gargoyle", 44, 30, 90, 90, 20, 25, 2);
insert into `creature` values(87, "Gargoyle", 44, 30, 90, 74, 20, 25, 2);
insert into `creature` values(88, "Gargoyle", 44, 30, 90, 90, 20, 25, 2);
insert into `creature` values(89, "Gargoyle", 44, 30, 90, 56, 20, 25, 2);
insert into `creature` values(90, "Gargoyle", 44, 30, 90, 90, 20, 25, 2);
insert into `creature` values(91, "Gargoyle", 44, 30, 90, 90, 20, 25, 2);
insert into `creature` values(92, "Gargoyle", 44, 30, 90, 90, 20, 25, 2);
insert into `creature` values(93, "Gargoyle", 44, 30, 90, 11, 20, 25, 2);
insert into `creature` values(94, "Gargoyle", 44, 30, 90, 90, 20, 25, 2);
insert into `creature` values(95, "Gargoyle", 44, 30, 90, 90, 20, 25, 2);
-- Region 2 - Ghost
insert into `creature` values(96, "Ghost", 40, 65, 150, 150, 0, 40, 2);
insert into `creature` values(97, "Ghost", 40, 65, 150, 150, 0, 40, 2);
insert into `creature` values(98, "Ghost", 40, 65, 150, 33, 0, 40, 2);
insert into `creature` values(99, "Ghost", 40, 65, 150, 150, 0, 40, 2);
insert into `creature` values(100, "Ghost", 40, 65, 150, 150, 0, 40, 2);
insert into `creature` values(101, "Ghost", 40, 65, 150, 150, 0, 40, 2);
insert into `creature` values(102, "Ghost", 40, 65, 150, 150, 0, 40, 2);
insert into `creature` values(103, "Ghost", 40, 65, 150, 150, 0, 40, 2);
insert into `creature` values(104, "Ghost", 40, 65, 150, 150, 0, 40, 2);
insert into `creature` values(105, "Ghost", 40, 65, 150, 150, 0, 40, 2);
-- Region 2 - Magog
insert into `creature` values(106, "Magog", 60, 60, 60, 60, 60, 20, 2);
insert into `creature` values(107, "Magog", 60, 60, 60, 60, 60, 20, 2);
insert into `creature` values(108, "Magog", 60, 60, 60, 60, 60, 20, 2);
insert into `creature` values(109, "Magog", 60, 60, 60, 60, 60, 20, 2);
insert into `creature` values(110, "Magog", 60, 60, 60, 60, 60, 20, 2);
insert into `creature` values(111, "Magog", 60, 60, 60, 12, 60, 20, 2);
insert into `creature` values(112, "Magog", 60, 60, 60, 60, 60, 20, 2);
insert into `creature` values(113, "Magog", 60, 60, 60, 60, 60, 20, 2);
insert into `creature` values(114, "Magog", 60, 60, 60, 60, 60, 20, 2);
insert into `creature` values(115, "Magog", 60, 60, 60, 60, 60, 20, 2);
insert into `creature` values(116, "Magog", 60, 60, 60, 60, 60, 20, 2);
insert into `creature` values(117, "Magog", 60, 60, 60, 60, 60, 20, 2);
insert into `creature` values(118, "Magog", 60, 60, 60, 60, 60, 20, 2);
insert into `creature` values(119, "Magog", 60, 60, 60, 60, 60, 20, 2);
insert into `creature` values(120, "Magog", 60, 60, 60, 60, 60, 20, 2);
insert into `creature` values(121, "Magog", 60, 60, 60, 60, 60, 20, 2);
-- Region 2 - Wraith
insert into `creature` values(122, "Wraith", 75, 25, 75, 75, 20, 35, 2);
insert into `creature` values(123, "Wraith", 75, 25, 75, 75, 20, 35, 2);
insert into `creature` values(124, "Wraith", 75, 25, 75, 75, 20, 35, 2);
insert into `creature` values(125, "Wraith", 75, 25, 75, 75, 20, 35, 2);
insert into `creature` values(126, "Wraith", 75, 25, 75, 75, 20, 35, 2);
insert into `creature` values(127, "Wraith", 75, 25, 75, 75, 20, 35, 2);

-- Region 3 - Troll
insert into `creature` values(128, "Troll", 95, 70, 150, 150, 80, 50, 3);
insert into `creature` values(129, "Troll", 95, 70, 150, 150, 80, 50, 3);
insert into `creature` values(130, "Troll", 95, 70, 150, 104, 80, 50, 3);
insert into `creature` values(131, "Troll", 95, 70, 150, 150, 80, 50, 3);
insert into `creature` values(132, "Troll", 95, 70, 150, 150, 80, 50, 3);
insert into `creature` values(133, "Troll", 95, 70, 150, 150, 80, 50, 3);
insert into `creature` values(134, "Troll", 95, 70, 150, 150, 80, 50, 3);
insert into `creature` values(135, "Troll", 95, 70, 150, 150, 80, 50, 3);
insert into `creature` values(136, "Troll", 95, 70, 150, 150, 80, 50, 3);
-- Region 3 - Golem
insert into `creature` values(137, "Golem", 100, 75, 135, 135, 30, 50, 3);
insert into `creature` values(138, "Golem", 100, 75, 135, 135, 30, 50, 3);
insert into `creature` values(139, "Golem", 100, 75, 135, 135, 30, 50, 3);
insert into `creature` values(140, "Golem", 100, 75, 135, 135, 30, 50, 3);
insert into `creature` values(141, "Golem", 100, 75, 135, 105, 30, 50, 3);
insert into `creature` values(142, "Golem", 100, 75, 135, 135, 30, 50, 3);
insert into `creature` values(143, "Golem", 100, 75, 135, 135, 30, 50, 3);
insert into `creature` values(145, "Golem", 100, 75, 135, 132, 30, 50, 3);
insert into `creature` values(146, "Golem", 100, 75, 135, 135, 30, 50, 3);
insert into `creature` values(147, "Golem", 100, 75, 135, 135, 30, 50, 3);
insert into `creature` values(148, "Golem", 100, 75, 135, 135, 30, 50, 3);
-- Region 3 - Demon
insert into `creature` values(149, "Demon", 150, 45, 100, 100, 55, 55, 3);
insert into `creature` values(150, "Demon", 150, 45, 100, 100, 55, 55, 3);
insert into `creature` values(151, "Demon", 150, 45, 100, 100, 55, 55, 3);
insert into `creature` values(152, "Demon", 150, 45, 100, 56, 55, 55, 3);
insert into `creature` values(153, "Demon", 150, 45, 100, 100, 55, 55, 3);
insert into `creature` values(154, "Demon", 150, 45, 100, 100, 55, 55, 3);
insert into `creature` values(155, "Demon", 150, 45, 100, 100, 55, 55, 3);
-- Region 3 - Troglodyte
insert into `creature` values(156, "Troglodyte", 120, 80, 180, 180, 45, 58, 3);
insert into `creature` values(157, "Troglodyte", 120, 80, 180, 180, 45, 58, 3);
insert into `creature` values(158, "Troglodyte", 120, 80, 180, 180, 45, 58, 3);
insert into `creature` values(159, "Troglodyte", 120, 80, 180, 180, 45, 58, 3);
insert into `creature` values(160, "Troglodyte", 120, 80, 180, 180, 45, 58, 3);
insert into `creature` values(161, "Troglodyte", 120, 80, 180, 122, 45, 58, 3);
insert into `creature` values(162, "Troglodyte", 120, 80, 180, 180, 45, 58, 3);
insert into `creature` values(163, "Troglodyte", 120, 80, 180, 180, 45, 58, 3);
insert into `creature` values(164, "Troglodyte", 120, 80, 180, 180, 45, 58, 3);
-- Region 3 - Valkyrie
insert into `creature` values(165, "Valkyrie", 100, 110, 220, 220, 50, 60, 3);
insert into `creature` values(166, "Valkyrie", 100, 110, 220, 220, 50, 60, 3);
insert into `creature` values(167, "Valkyrie", 100, 110, 220, 220, 50, 60, 3);
insert into `creature` values(168, "Valkyrie", 100, 110, 220, 220, 50, 60, 3);
insert into `creature` values(169, "Valkyrie", 100, 110, 220, 220, 50, 60, 3);
insert into `creature` values(170, "Valkyrie", 100, 110, 220, 220, 50, 60, 3);
insert into `creature` values(171, "Valkyrie", 100, 110, 220, 220, 50, 60, 3);
insert into `creature` values(172, "Valkyrie", 100, 110, 220, 198, 50, 60, 3);
insert into `creature` values(173, "Valkyrie", 100, 110, 220, 220, 50, 60, 3);
insert into `creature` values(174, "Valkyrie", 100, 110, 220, 220, 50, 60, 3);
insert into `creature` values(175, "Valkyrie", 100, 110, 220, 220, 50, 60, 3);
insert into `creature` values(176, "Valkyrie", 100, 110, 220, 220, 50, 60, 3);
insert into `creature` values(177, "Valkyrie", 100, 110, 220, 220, 50, 60, 3);
insert into `creature` values(178, "Valkyrie", 100, 110, 220, 220, 50, 60, 3);
-- Region 3 - Centaur
insert into `creature` values(179, "Centaur", 165, 190, 150, 150, 44, 65, 3);
insert into `creature` values(180, "Centaur", 165, 190, 150, 150, 44, 65, 3);
insert into `creature` values(181, "Centaur", 165, 190, 150, 150, 44, 65, 3);
insert into `creature` values(182, "Centaur", 165, 190, 150, 150, 44, 65, 3);
insert into `creature` values(183, "Centaur", 165, 190, 150, 150, 44, 65, 3);
insert into `creature` values(184, "Centaur", 165, 190, 150, 150, 44, 65, 3);
insert into `creature` values(185, "Centaur", 165, 190, 150, 150, 44, 65, 3);
insert into `creature` values(186, "Centaur", 165, 190, 150, 150, 44, 65, 3);

-- Region 4 - Gorgon
insert into `creature` values(187, "Gorgon",  185, 200, 250, 250, 60, 68, 4);
insert into `creature` values(188, "Gorgon",  185, 200, 250, 250, 60, 68, 4);
insert into `creature` values(189, "Gorgon",  185, 200, 250, 250, 60, 68, 4);
insert into `creature` values(190, "Gorgon",  185, 200, 250, 219, 60, 68, 4);
insert into `creature` values(191, "Gorgon",  185, 200, 250, 250, 60, 68, 4);
insert into `creature` values(192, "Gorgon",  185, 200, 250, 250, 60, 68, 4);
insert into `creature` values(193, "Gorgon",  185, 200, 250, 250, 60, 68, 4);
insert into `creature` values(194, "Gorgon",  185, 200, 250, 250, 60, 68, 4);
-- Region 4 - Cyclops
insert into `creature` values(195, "Cyclops", 240, 285, 230, 230, 40, 72, 4);
insert into `creature` values(196, "Cyclops", 240, 285, 230, 230, 40, 72, 4);
insert into `creature` values(197, "Cyclops", 240, 285, 230, 230, 40, 72, 4);
insert into `creature` values(198, "Cyclops", 240, 285, 230, 230, 40, 72, 4);
insert into `creature` values(199, "Cyclops", 240, 285, 230, 57, 40, 72, 4);
insert into `creature` values(200, "Cyclops", 240, 285, 230, 230, 40, 72, 4);
insert into `creature` values(201, "Cyclops", 240, 285, 230, 230, 40, 72, 4);
insert into `creature` values(202, "Cyclops", 240, 285, 230, 230, 40, 72, 4);
-- Region 4 - Hydra
insert into `creature` values(203, "Hydra", 290, 300, 250, 250, 50, 75, 4);
insert into `creature` values(204, "Hydra", 290, 300, 250, 250, 50, 75, 4);
insert into `creature` values(205, "Hydra", 290, 300, 250, 250, 50, 75, 4);
insert into `creature` values(206, "Hydra", 290, 300, 250, 250, 50, 75, 4);
insert into `creature` values(207, "Hydra", 290, 300, 250, 250, 50, 75, 4);
insert into `creature` values(208, "Hydra", 290, 300, 250, 202, 50, 75, 4);
insert into `creature` values(209, "Hydra", 290, 300, 250, 250, 50, 75, 4);
insert into `creature` values(210, "Hydra", 290, 300, 250, 250, 50, 75, 4);
insert into `creature` values(211, "Hydra", 290, 300, 250, 250, 50, 75, 4);
insert into `creature` values(212, "Hydra", 290, 300, 250, 48, 50, 75, 4);
insert into `creature` values(213, "Hydra", 290, 300, 250, 250, 50, 75, 4);
insert into `creature` values(214, "Hydra", 290, 300, 250, 250, 50, 75, 4);
insert into `creature` values(215, "Hydra", 290, 300, 250, 250, 50, 75, 4);
insert into `creature` values(216, "Hydra", 290, 300, 250, 1, 50, 75, 4);
insert into `creature` values(217, "Hydra", 290, 300, 250, 250, 50, 75, 4);
-- Region 4 - Pterodactyl
insert into `creature` values(218, "Pterodactyl", 405, 360, 200, 200, 20, 77, 4);
insert into `creature` values(219, "Pterodactyl", 405, 360, 200, 200, 20, 77, 4);
insert into `creature` values(220, "Pterodactyl", 405, 360, 200, 200, 20, 77, 4);
insert into `creature` values(221, "Pterodactyl", 405, 360, 200, 200, 20, 77, 4);
insert into `creature` values(222, "Pterodactyl", 405, 360, 200, 6, 20, 77, 4);
insert into `creature` values(223, "Pterodactyl", 405, 360, 200, 200, 20, 77, 4);
insert into `creature` values(224, "Pterodactyl", 405, 360, 200, 200, 20, 77, 4);

-- Region 5 - Titan
insert into `creature` values(225, "Titan",  680, 560, 800, 800, 0, 250, 5);
insert into `creature` values(226, "Titan",  680, 560, 800, 800, 0, 250, 5);
insert into `creature` values(227, "Titan",  680, 560, 800, 799, 0, 250, 5);
insert into `creature` values(228, "Titan",  680, 560, 800, 800, 0, 250, 5);
insert into `creature` values(229, "Titan",  680, 560, 800, 800, 0, 250, 5);
-- Region 5 - Minotaur
insert into `creature` values(230, "Minotaur",  520, 490, 590, 590, 120, 200, 5);
insert into `creature` values(231, "Minotaur",  520, 490, 590, 590, 120, 200, 5);
insert into `creature` values(232, "Minotaur",  520, 490, 590, 590, 120, 200, 5);
insert into `creature` values(233, "Minotaur",  520, 490, 590, 590, 120, 200, 5);
insert into `creature` values(234, "Minotaur",  520, 490, 590, 590, 120, 200, 5);
insert into `creature` values(235, "Minotaur",  520, 490, 590, 590, 120, 200, 5);
insert into `creature` values(236, "Minotaur",  520, 490, 590, 590, 120, 200, 5);
-- Region 5 - Behemoth
insert into `creature` values(237, "Behemoth",  610, 310, 890, 890, 105, 280, 5);
insert into `creature` values(238, "Behemoth",  610, 310, 890, 890, 105, 280, 5);
insert into `creature` values(239, "Behemoth",  610, 310, 890, 890, 105, 280, 5);
insert into `creature` values(240, "Behemoth",  610, 310, 890, 890, 105, 280, 5);
insert into `creature` values(241, "Behemoth",  610, 310, 890, 890, 105, 280, 5);
insert into `creature` values(242, "Behemoth",  610, 310, 890, 890, 105, 280, 5);
insert into `creature` values(243, "Behemoth",  610, 310, 890, 890, 105, 280, 5);
insert into `creature` values(244, "Behemoth",  610, 310, 890, 890, 105, 280, 5);
insert into `creature` values(245, "Behemoth",  610, 310, 890, 890, 105, 280, 5);
insert into `creature` values(246, "Behemoth",  610, 310, 890, 890, 105, 280, 5);
insert into `creature` values(247, "Behemoth",  610, 310, 890, 890, 105, 280, 5);
-- Region 5 - Wyvern
insert into `creature` values(248, "Wyvern",  785, 610, 725, 725, 200, 300, 5);
insert into `creature` values(249, "Wyvern",  785, 610, 725, 725, 200, 300, 5);
insert into `creature` values(250, "Wyvern",  785, 610, 725, 725, 200, 300, 5);
insert into `creature` values(251, "Wyvern",  785, 610, 725, 725, 200, 300, 5);
insert into `creature` values(252, "Wyvern",  785, 610, 725, 725, 200, 300, 5);
insert into `creature` values(253, "Wyvern",  785, 610, 725, 725, 200, 300, 5);
insert into `creature` values(254, "Wyvern",  785, 610, 725, 725, 200, 300, 5);
insert into `creature` values(255, "Wyvern",  785, 610, 725, 725, 200, 300, 5);

-- Region 1 - Mini Boss - Red Dragon
insert into `creature` values(256, "Red Dragon",  2500, 2500, 1000, 1000, 1500, 500, 1);
-- Region 2 - Mini Boss - Green Dragon
insert into `creature` values(257, "Green Dragon",  2500, 4500, 1000, 1000, 1500, 650, 2);
-- Region 3 - Mini Boss - Brown Dragon
insert into `creature` values(258, "Brown Dragon",  3000, 3000, 2000, 2000, 1500, 650, 3);
-- Region 4 - Mini Boss - Black Dragon
insert into `creature` values(259, "Black Dragon",  5000, 5000, 3000, 3000, 2500, 850, 4);
-- Region 5 - Mini Boss - White Dragon
insert into `creature` values(260, "White Dragon",  7500, 6000, 4000, 4000, 5000, 1000, 5);


-- Quests
-- quest: id, title, experience, gold, publisher, holder
-- Region 1
-- City 19
insert into `quest` values(1, "Find my shoe!", 300, 20, 132, 0);
insert into `quest` values(2, "Sheepie number 9", 420, 10, 134, 0);
insert into `quest` values(3, "Materials for a wheelchair", 350, 40, 137, 0);
insert into `quest` values(4, "Prove your strength!", 500, 50, 138, 0);

-- City 20
insert into `quest` values(5, "Find the Imp who stole my sword", 490, 30, 139, 0);
insert into `quest` values(6, "Free the chicken", 290, 15, 142, 0);
insert into `quest` values(7, "Football with a severed head", 510, 22, 143, 0);
insert into `quest` values(8, "Worm eating contest", 480, 100, 144, 0);

-- City 21
insert into `quest` values(9, "Kill my mother in law", 350, 150, 146, 0);
insert into `quest` values(10, "Collect food for my brother", 450, 30, 147, 0);
insert into `quest` values(11, "Where did he go?", 800, 65, 149, 0);
insert into `quest` values(12, "Walking dead", 720, 43, 151, 0);
insert into `quest` values(13, "My love for him...", 550, 80, 152, 0);

-- City 22
insert into `quest` values(14, "The wise old Turtle", 970, 120, 154, 0);
insert into `quest` values(15, "Collect the diamonds", 1100, 60, 158, 0);
insert into `quest` values(16, "Travel to Sempre City in Sempre", 965, 86, 159, 0);

-- Region 2
-- City 23
insert into `quest` values(17, "Kotaj is missing", 960, 180, 162, 0);
insert into `quest` values(18, "Get your ride", 480, 60, 165, 0);

-- City 24
insert into `quest` values(19, "He has a mustache, kill him!", 1500, 250, 167, 0);
insert into `quest` values(20, "Do you like appels?", 1220, 170, 169, 0);
insert into `quest` values(21, "So you are alone?", 1125, 230, 171, 0);
insert into `quest` values(22, "It's a joke", 680, 270, 172, 0);

-- City 25
insert into `quest` values(23, "His wolf must die!", 1600, 325, 175, 0);
insert into `quest` values(24, "Destroy the tower", 1700, 400, 177, 2);
insert into `quest` values(25, "Go to Fjitsur", 725, 200, 179, 0);

-- City 26
insert into `quest` values(26, "Find the smurfs!", 1300, 500, 181, 0);
insert into `quest` values(27, "Kill the Green Dragon", 2500, 1000, 187, 0);

-- City 27
insert into `quest` values(28, "Kill the Queen!", 2500, 1000, 194, 0);

-- Region 3
-- City 7
insert into `quest` values(29, "There he goes", 1875, 700, 49, 0);
insert into `quest` values(30, "Another godless man", 1620, 620, 51, 0);
insert into `quest` values(31, "Fix the boat", 1235, 545, 53, 0);
insert into `quest` values(32, "You find my wallet?", 950, 615, 54, 0);

-- City 8
insert into `quest` values(33, "The golden hammer", 1940, 230, 55, 0);
insert into `quest` values(34, "Me love shinies!", 1745, 450, 58, 0);
insert into `quest` values(35, "Give me his eyes", 1460, 385, 60, 0);

-- City 9
insert into `quest` values(36, "Away with the peace", 3000, 1200, 68, 0);

-- City 10
insert into `quest` values(37, "He's shitting on my porch", 2200, 400, 70, 5);
insert into `quest` values(38, "Delicious soup", 1950, 300, 72, 0);
insert into `quest` values(39, "More, more, more!", 1500, 750, 73, 0);
insert into `quest` values(40, "Total carnage", 2650, 975, 75, 0);

-- City 11
insert into `quest` values(41, "Annihilate that sucker!", 3500, 2000, 82, 0);

-- Region 4
-- City 1
insert into `quest` values(42, "So, you think you can dance?", 950, 750, 11, 0);
insert into `quest` values(43, "The voice of Knael", 950, 750, 12, 0);

-- City 2
insert into `quest` values(44, "The dark pit", 2250, 820, 14, 0);
insert into `quest` values(45, "Where is the sun?", 2300, 780, 16, 0);
insert into `quest` values(46, "My neighbour likes other women", 1800, 900, 18, 0);

-- City 3
insert into `quest` values(47, "How much is not the question", 500, 2500, 21, 0);
insert into `quest` values(48, "I saw it all", 1950, 450, 24, 0);
insert into `quest` values(49, "Kill that wrench", 1850, 1500, 24, 0);

-- City 4
insert into `quest` values(50, "Hail the paper boy!", 1250, 800, 28, 0);

-- City 5
insert into `quest` values(51, "So I did", 1600, 700, 34, 0);
insert into `quest` values(52, "I want chocolate!", 2100, 800, 36, 0);
insert into `quest` values(53, "He has forest weed", 2350, 950, 38, 0);
insert into `quest` values(54, "The paper boy is back", 2200, 1200, 40, 0);

-- City 6
insert into `quest` values(55, "That fat sucker is gone", 2350, 1200, 45, 0);
insert into `quest` values(56, "Found him, kill him!", 4500, 2500, 47, 0);

-- Region 5
-- City 12
insert into `quest` values(57, "The lost search", 2590, 0, 84, 0);
insert into `quest` values(58, "Turtle killer", 3500, 750, 88, 0);

-- City 13
insert into `quest` values(59, "Why? Because!", 3200, 450, 91, 0);
insert into `quest` values(60, "For all the evil", 3100, 1650, 94, 0);
insert into `quest` values(61, "My last meal", 2850, 1975, 96, 0);

-- City 14
insert into `quest` values(62, "Yo mama!", 3650, 2130, 98, 0);
insert into `quest` values(63, "Yo daddy!", 3650, 2130, 102, 0);

-- City 15
insert into `quest` values(64, "I was born too early", 3475, 2540, 104, 0);
insert into `quest` values(65, "The cave is destroyed", 3280, 1480, 105, 0);
insert into `quest` values(66, "It was a Behemoth!", 3640, 2450, 105, 0);
insert into `quest` values(67, "Damn this region!", 3850, 1850, 109, 0);

-- City 16
insert into `quest` values(68, "One more strike", 4000, 3000, 117, 0);

-- City 17
insert into `quest` values(69, "A dark land", 3950, 1200, 118, 0);
insert into `quest` values(70, "The Demi-Fiend is the boss here", 3500, 1350, 120, 0);
insert into `quest` values(71, "Screaming from Yester", 1250, 500, 123, 0);

-- City 18
insert into `quest` values(72, "Persue the villagers", 4000, 2500, 130, 0);
insert into `quest` values(73, "Be the hero!", 8000, 5000, 131, 0);
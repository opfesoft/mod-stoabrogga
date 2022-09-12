-- ARAC (All Races All Classes)

-- Enable Dwarf Hunter quests for Human and Gnome
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 1 | 64 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 4 = 4 AND `qt`.`AllowableRaces` & 4 = 4) AS `ID`);

-- Enable Draenei Shaman quests for Human, Dwarf, Night Elf and Gnome
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 1 | 4 | 8 | 64 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 64 = 64 AND `qt`.`AllowableRaces` & 1024 = 1024) AS `ID`);

-- Enable Night Elf Druid quests for Human, Dwarf, Gnome and Draenei
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 1 | 4 | 64 | 1024 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 1024 = 1024 AND `qt`.`AllowableRaces` & 8 = 8) AS `ID`);

-- Enable Blood Elf Paladin quests for Orc, Undead, Tauren and Troll
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 2 | 16 | 32 | 128 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 2 = 2 AND `qt`.`AllowableRaces` & 512 = 512) AS `ID`);

-- Enable Troll Priest quests for Orc and Tauren
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 2 | 32 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 16 = 16 AND `qt`.`AllowableRaces` & 128 = 128) AS `ID`);

-- Enable Troll Mage quests for Orc and Tauren
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 2 | 32 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 128 = 128 AND `qt`.`AllowableRaces` & 128 = 128) AS `ID`);

-- Enable Tauren Druid quests for Orc, Undead, Troll and Blood Elf
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 2 | 16 | 128 | 512 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 1024 = 1024 AND `qt`.`AllowableRaces` & 32 = 32) AS `ID`);

-- Enable Human Mage quests for Night Elf
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 8 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 128 = 128 AND `qt`.`AllowableRaces` & 1 = 1) AS `ID`);

-- Enable Gnome Mage quests for Dwarf
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 4 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 128 = 128 AND `qt`.`AllowableRaces` & 64 = 64) AS `ID`);

-- Enable Human Warlock quests for Night Elf and Draenei
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 8 | 1024 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 256 = 256 AND `qt`.`AllowableRaces` & 1 = 1) AS `ID`);

-- Enable Gnome Warlock quests for Dwarf
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 4 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 256 = 256 AND `qt`.`AllowableRaces` & 64 = 64) AS `ID`);

-- Enable Human Paladin quests for Night Elf
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 8 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 2 = 2 AND `qt`.`AllowableRaces` & 1 = 1) AS `ID`);

-- Enable Dwarf Paladin quests for Gnome
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 64 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 2 = 2 AND `qt`.`AllowableRaces` & 4 = 4) AS `ID`);

-- Enable Blood Elf Hunter quests for Undead
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 16 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 4 = 4 AND `qt`.`AllowableRaces` & 512 = 512) AS `ID`);

-- Enable Orc Shaman quests for Undead and Blood Elf
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 16 | 512 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 64 = 64 AND `qt`.`AllowableRaces` & 2 = 2) AS `ID`);

-- Enable Orc Rogue quests for Tauren
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 32 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 8 = 8 AND `qt`.`AllowableRaces` & 2 = 2) AS `ID`);

-- Enable Human Rogue quests for Draenei
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 1024 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 8 = 8 AND `qt`.`AllowableRaces` & 1 = 1) AS `ID`);

-- Enable Orc Warlock quests for Tauren and Troll
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 32 | 128 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 256 = 256 AND `qt`.`AllowableRaces` & 2 = 2) AS `ID`);

-- Enable Dwarf Priest quests for Gnome
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 64 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 16 = 16 AND `qt`.`AllowableRaces` & 4 = 4) AS `ID`);

-- Enable Undead Warrior quests for Blood Elf
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | 512 WHERE `ID` IN (SELECT `ID` FROM
(SELECT `qt`.`ID` FROM `quest_template` `qt`, `quest_template_addon` `qta` WHERE `qt`.`ID` = `qta`.`ID` AND `qta`.`AllowableClasses` & 1 = 1 AND `qt`.`AllowableRaces` & 16 = 16) AS `ID`);



-- Human start position for Hunter, Shaman, Druid (position taken from Warrior)
DELETE FROM `playercreateinfo` WHERE `race` = 1 AND `class` IN (3,7,11);
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 3 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 1 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 7 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 1 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 11 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 1 AND `class` = 1;

-- Orc start position for Paladin, Priest, Mage, Druid (position taken from Warrior)
DELETE FROM `playercreateinfo` WHERE `race` = 2 AND `class` IN (2,5,8,11);
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 2 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 2 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 5 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 2 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 8 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 2 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 11 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 2 AND `class` = 1;

-- Dwarf start position for Shaman, Mage, Warlock, Druid (position taken from Warrior)
DELETE FROM `playercreateinfo` WHERE `race` = 3 AND `class` IN (7,8,9,11);
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 7 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 3 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 8 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 3 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 9 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 3 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 11 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 3 AND `class` = 1;

-- Night Elf start position for Paladin, Shaman, Mage, Warlock (position taken from Warrior)
DELETE FROM `playercreateinfo` WHERE `race` = 4 AND `class` IN (2,7,8,9);
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 2 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 4 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 7 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 4 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 8 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 4 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 9 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 4 AND `class` = 1;

-- Undead start position for Paladin, Hunter, Shaman, Druid (position taken from Warrior)
DELETE FROM `playercreateinfo` WHERE `race` = 5 AND `class` IN (2,3,7,11);
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 2 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 5 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 3 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 5 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 7 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 5 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 11 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 5 AND `class` = 1;

-- Tauren start position for Paladin, Rogue, Priest, Mage, Warlock (position taken from Warrior)
DELETE FROM `playercreateinfo` WHERE `race` = 6 AND `class` IN (2,4,5,8,9);
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 2 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 6 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 4 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 6 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 5 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 6 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 8 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 6 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 9 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 6 AND `class` = 1;

-- Gnome start position for Paladin, Hunter, Priest, Shaman, Druid (position taken from Warrior)
DELETE FROM `playercreateinfo` WHERE `race` = 7 AND `class` IN (2,3,5,7,11);
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 2 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 7 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 3 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 7 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 5 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 7 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 7 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 7 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 11 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 7 AND `class` = 1;

-- Troll start position for Paladin, Warlock, Druid (position taken from Warrior)
DELETE FROM `playercreateinfo` WHERE `race` = 8 AND `class` IN (2,9,11);
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 2 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 8 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 9 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 8 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 11 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 8 AND `class` = 1;

-- Blood Elf start position for Warrior, Shaman, Druid (position taken from Paladin)
DELETE FROM `playercreateinfo` WHERE `race` = 10 AND `class` IN (1,7,11);
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 1 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 10 AND `class` = 2;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 7 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 10 AND `class` = 2;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 11 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 10 AND `class` = 2;

-- Draenei start position for Rogue, Warlock, Druid (position taken from Warrior)
DELETE FROM `playercreateinfo` WHERE `race` = 11 AND `class` IN (4,9,11);
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 4 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 11 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 9 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 11 AND `class` = 1;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT `race`, 11 AS `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation` FROM `playercreateinfo` WHERE `race` = 11 AND `class` = 1;



-- Human level stats (Hunter and Shaman taken from Draenei, Druid taken from Night Elf)
DELETE FROM `player_levelstats` WHERE `race` = 1 AND `class` IN (3,7,11);
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 1 AS `race`, 3 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 11 AND `class` = 3;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 1 AS `race`, 7 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 11 AND `class` = 7;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 1 AS `race`, 11 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 4 AND `class` = 11;

-- Orc level stats (Paladin taken from Draenei, Priest and Mage taken from Troll, Druid taken from Tauren)
DELETE FROM `player_levelstats` WHERE `race` = 2 AND `class` IN (2,5,8,11);
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 2 AS `race`, 2 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 11 AND `class` = 2;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 2 AS `race`, 5 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 8 AND `class` = 5;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 2 AS `race`, 8 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 8 AND `class` = 8;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 2 AS `race`, 11 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 6 AND `class` = 11;

-- Dwarf level stats (Shaman and Mage taken from Troll, Warlock taken from Orc, Druid taken from Tauren)
DELETE FROM `player_levelstats` WHERE `race` = 3 AND `class` IN (7,8,9,11);
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 3 AS `race`, 7 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 8 AND `class` = 7;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 3 AS `race`, 8 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 8 AND `class` = 8;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 3 AS `race`, 9 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 2 AND `class` = 9;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 3 AS `race`, 11 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 6 AND `class` = 11;

-- Night Elf level stats (Paladin, Mage and Warlock taken from Blood Elf, Shaman taken from Draenei)
DELETE FROM `player_levelstats` WHERE `race` = 4 AND `class` IN (2,7,8,9);
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 4 AS `race`, 2 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 10 AND `class` = 2;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 4 AS `race`, 7 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 11 AND `class` = 7;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 4 AS `race`, 8 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 10 AND `class` = 8;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 4 AS `race`, 9 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 10 AND `class` = 9;

-- Undead level stats (Paladin taken from Human, Hunter and Shaman taken from Troll, Druid taken from Night Elf)
DELETE FROM `player_levelstats` WHERE `race` = 5 AND `class` IN (2,3,7,11);
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 5 AS `race`, 2 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 1 AND `class` = 2;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 5 AS `race`, 3 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 8 AND `class` = 3;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 5 AS `race`, 7 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 8 AND `class` = 7;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 5 AS `race`, 11 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 4 AND `class` = 11;

-- Tauren level stats (Paladin taken from Human, Rogue taken from Orc, Priest taken from Dwarf, Mage and Warlock taken from Undead)
DELETE FROM `player_levelstats` WHERE `race` = 6 AND `class` IN (2,4,5,8,9);
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 6 AS `race`, 2 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 1 AND `class` = 2;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 6 AS `race`, 4 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 2 AND `class` = 4;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 6 AS `race`, 5 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 3 AND `class` = 5;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 6 AS `race`, 8 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 5 AND `class` = 8;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 6 AS `race`, 9 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 5 AND `class` = 9;

-- Gnome level stats (Paladin and Shaman taken from Draenei, Hunter, Priest and Druid taken from Night Elf)
DELETE FROM `player_levelstats` WHERE `race` = 7 AND `class` IN (2,3,5,7,11);
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 7 AS `race`, 2 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 11 AND `class` = 2;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 7 AS `race`, 3 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 4 AND `class` = 3;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 7 AS `race`, 5 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 4 AND `class` = 5;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 7 AS `race`, 7 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 11 AND `class` = 7;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 7 AS `race`, 11 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 4 AND `class` = 11;

-- Troll level stats (Paladin taken from Human, Warlock taken from Orc, Druid taken from Tauren)
DELETE FROM `player_levelstats` WHERE `race` = 8 AND `class` IN (2,9,11);
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 8 AS `race`, 2 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 1 AND `class` = 2;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 8 AS `race`, 9 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 2 AND `class` = 9;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 8 AS `race`, 11 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 6 AND `class` = 11;

-- Blood Elf level stats (Warrior taken from Night Elf, Shaman taken from Draenei, Druid taken from Night Elf)
DELETE FROM `player_levelstats` WHERE `race` = 10 AND `class` IN (1,7,11);
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 10 AS `race`, 1 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 4 AND `class` = 1;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 10 AS `race`, 7 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 11 AND `class` = 7;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 10 AS `race`, 11 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 4 AND `class` = 11;

-- Draenei level stats (Rogue and Warlock taken from Blood Elf, Druid taken from Night Elf)
DELETE FROM `player_levelstats` WHERE `race` = 11 AND `class` IN (4,9,11);
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 11 AS `race`, 4 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 10 AND `class` = 4;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 11 AS `race`, 9 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 10 AND `class` = 9;
INSERT INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
SELECT 11 AS `race`, 11 AS `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM `player_levelstats` WHERE `race` = 4 AND `class` = 11;



-- Generic Warrior spells for Blood Elf
UPDATE `playercreateinfo_spell` SET `racemask` = `racemask` | 512 WHERE `Spell` IN (78,2457,5301,32215);

-- Generic Paladin spells for Orc, Night Elf, Undead, Tauren, Gnome, Troll
UPDATE `playercreateinfo_spell` SET `racemask` = `racemask` | 2 | 8 | 16 | 32 | 64 | 128 WHERE `Spell` IN (635,21084,27762,60091);

-- Generic Hunter spells for Human, Undead, Gnome
UPDATE `playercreateinfo_spell` SET `racemask` = `racemask` | 1 | 16 | 64 WHERE `Spell` IN (75,2973,13358,24949,34082);

-- Human and Undead Hunters use Crossbows
UPDATE `playercreateinfo_spell` SET `racemask` = `racemask` | 1 | 16 WHERE `Spell` = 5011;

-- Gnome Hunters use Guns
UPDATE `playercreateinfo_spell` SET `racemask` = `racemask` | 64 WHERE `Spell` = 266;

-- Generic Rogue spells for Tauren, Draenei
UPDATE `playercreateinfo_spell` SET `racemask` = `racemask` | 32 | 1024 WHERE `Spell` IN (1752,2098,16092,21184,2567,2764,1180);

-- Generic Priest spells for Orc, Tauren, Gnome
UPDATE `playercreateinfo_spell` SET `racemask` = `racemask` | 2 | 32 | 64 WHERE `Spell` IN (585,2050,5009,5019);

-- Generic Shaman spells for Human, Dwarf, Night Elf, Undead, Gnome, Blood Elf
UPDATE `playercreateinfo_spell` SET `racemask` = `racemask` | 1 | 4 | 8 | 16 | 64 | 512 WHERE `Spell` IN (331,403,27763);

-- Generic Mage spells for Orc, Dwarf, Night Elf, Tauren
UPDATE `playercreateinfo_spell` SET `racemask` = `racemask` | 2 | 4 | 8 | 32 WHERE `Spell` IN (133,168,5009,5019);

-- Generic Warlock spells for Dwarf, Night Elf, Tauren, Troll, Draenei
UPDATE `playercreateinfo_spell` SET `racemask` = `racemask` | 4 | 8 | 32 | 128 | 1024 WHERE `Spell` IN (686,687,58284,1180,5009,5019);

-- Generic Druid spells for Human, Orc, Dwarf, Undead, Gnome, Troll, Blood Elf, Draenei
UPDATE `playercreateinfo_spell` SET `racemask` = `racemask` | 1 | 2 | 4 | 16 | 64 | 128 | 512 | 1024 WHERE `Spell` IN (5176,5185,27764,1180);



-- Human specific spells for Hunter, Shaman, Druid
UPDATE `playercreateinfo_spell` SET `classmask` = `classmask` | 4 | 64 | 1024 WHERE `Spell` IN (20598,20597,59752,58985,20864,20599);

-- Orc specific spells for Paladin, Priest, Mage, Druid
UPDATE `playercreateinfo_spell` SET `classmask` = `classmask` | 2 | 16 | 128 | 1024 WHERE `Spell` IN (21563,20573,20574);
UPDATE `playercreateinfo_spell` SET `classmask` = `classmask` | 2 | 1024 WHERE `Spell` IN (33697); -- Blood Fury (melee attack damage / spell damage)
UPDATE `playercreateinfo_spell` SET `classmask` = `classmask` | 16 | 128 WHERE `Spell` IN (33702); -- Blood Fury (spell power)

-- Dwarf specific spells for Shaman, Mage, Warlock, Druid
UPDATE `playercreateinfo_spell` SET `classmask` = `classmask` | 64 | 128 | 256 | 1024 WHERE `Spell` IN (2481,20594,20595,20596,59224,672);

-- Night Elf specific spells for Paladin, Shaman, Mage, Warlock
UPDATE `playercreateinfo_spell` SET `classmask` = `classmask` | 2 | 64 | 128 | 256 WHERE `Spell` IN (20582,20583,20585,21009,58984,671);

-- Undead specific spells for Paladin, Hunter, Shaman, Druid
UPDATE `playercreateinfo_spell` SET `classmask` = `classmask` | 2 | 4 | 64 | 1024 WHERE `Spell` IN (7744,17737,20577,20579,5227);

-- Tauren specific spells for Paladin, Rogue, Priest, Mage, Warlock
UPDATE `playercreateinfo_spell` SET `classmask` = `classmask` | 2 | 8 | 16 | 128 | 256 WHERE `Spell` IN (20549,20550,20551,20552,670);

-- Gnome specific spells for Paladin, Hunter, Priest, Shaman, Druid
UPDATE `playercreateinfo_spell` SET `classmask` = `classmask` | 2 | 4 | 16 | 64 | 1024 WHERE `Spell` IN (20589,20591,20592,20593,7340);

-- Troll specific spells for Paladin, Warlock, Druid
UPDATE `playercreateinfo_spell` SET `classmask` = `classmask` | 2 | 256 | 1024 WHERE `Spell` IN (20555,7341,58943,26297,26290,20558,20557);

-- Blood Elf specific spells for Warrior, Shaman, Druid
UPDATE `playercreateinfo_spell` SET `classmask` = `classmask` | 1 | 64 | 1024 WHERE `Spell` IN (813,822,28877);
UPDATE `playercreateinfo_spell` SET `racemask` = `racemask` | 512, `classmask` = `classmask` | 1 WHERE `Spell` = 20582; -- No Arcane Torrent for generating Rage, use Quickness as alternative for the Blood Elf Warrior
UPDATE `playercreateinfo_spell` SET `classmask` = `classmask` | 1 | 64 | 1024 WHERE `Spell` = 28730;                    -- Arcane Torrent for generating Mana

-- Draenei specific spells for Rogue, Warlock, Druid
UPDATE `playercreateinfo_spell` SET `classmask` = `classmask` | 8 | 256 | 1024 WHERE `Spell` IN (28878,28875,29932);
UPDATE `playercreateinfo_spell` SET `classmask` = `classmask` | 8 WHERE `Spell` IN (59221,28880);    -- Shadow Resistance / Gift of the Naaru: take the same as Warrior
UPDATE `playercreateinfo_spell` SET `classmask` = `classmask` | 256 WHERE `Spell` IN (59541,59548);  -- Shadow Resistance / Gift of the Naaru: take the same as Mage
UPDATE `playercreateinfo_spell` SET `classmask` = `classmask` | 1024 WHERE `Spell` IN (59540,59547); -- Shadow Resistance / Gift of the Naaru: take the same as Shaman



-- Enable Two-Handed Maces for Orc, Night Elf, Undead, Gnome, Troll, Blood Elf (already restricted to Warrior and Paladin)
UPDATE `playercreateinfo_spell` SET `racemask` = `racemask` | 2 | 8 | 16 | 64 | 128 | 512 WHERE `Spell` = 199;



-- Human default action buttons (Hunter, Shaman, Druid)
DELETE FROM `playercreateinfo_action` WHERE `race` = 1 AND `class` IN (3,7,11);
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
VALUES
(1,3,0,6603,0),
(1,3,1,2973,0),
(1,3,2,75,0),
(1,3,11,59752,0),
(1,7,0,6603,0),
(1,7,1,403,0),
(1,7,2,331,0),
(1,7,11,59752,0),
(1,11,0,5176,0),
(1,11,1,5185,0),
(1,11,11,59752,0);

-- Orc default action buttons (Paladin, Priest, Mage, Druid)
DELETE FROM `playercreateinfo_action` WHERE `race` = 2 AND `class` IN (2,5,8,11);
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
VALUES
(2,2,0,6603,0),
(2,2,1,21084,0),
(2,2,2,635,0),
(2,2,11,33697,0),
(2,5,0,585,0),
(2,5,1,2050,0),
(2,5,11,33702,0),
(2,8,0,133,0),
(2,8,1,168,0),
(2,8,11,33702,0),
(2,11,0,5176,0),
(2,11,1,5185,0),
(2,11,11,33697,0);

-- Dwarf default action buttons (Shaman, Mage, Warlock, Druid)
DELETE FROM `playercreateinfo_action` WHERE `race` = 3 AND `class` IN (7,8,9,11);
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
VALUES
(3,7,0,6603,0),
(3,7,1,403,0),
(3,7,2,331,0),
(3,7,11,20594,0),
(3,8,0,133,0),
(3,8,1,168,0),
(3,8,11,20594,0),
(3,9,0,686,0),
(3,9,1,687,0),
(3,9,11,20594,0),
(3,11,0,5176,0),
(3,11,1,5185,0),
(3,11,11,20594,0);

-- Night Elf default action buttons (Paladin, Shaman, Mage, Warlock)
DELETE FROM `playercreateinfo_action` WHERE `race` = 4 AND `class` IN (2,7,8,9);
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
VALUES
(4,2,0,6603,0),
(4,2,1,21084,0),
(4,2,2,635,0),
(4,2,11,58984,0),
(4,7,0,6603,0),
(4,7,1,403,0),
(4,7,2,331,0),
(4,7,11,58984,0),
(4,8,0,133,0),
(4,8,1,168,0),
(4,8,11,58984,0),
(4,9,0,686,0),
(4,9,1,687,0),
(4,9,11,58984,0);

-- Undead default action buttons (Paladin, Hunter, Shaman, Druid)
DELETE FROM `playercreateinfo_action` WHERE `race` = 5 AND `class` IN (2,3,7,11);
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
VALUES
(5,2,0,6603,0),
(5,2,1,21084,0),
(5,2,2,635,0),
(5,2,11,20577,0),
(5,3,0,6603,0),
(5,3,1,2973,0),
(5,3,2,75,0),
(5,3,11,20577,0),
(5,7,0,6603,0),
(5,7,1,403,0),
(5,7,2,331,0),
(5,7,11,20577,0),
(5,11,0,5176,0),
(5,11,1,5185,0),
(5,11,11,20577,0);

-- Tauren default action buttons (Paladin, Rogue, Priest, Mage, Warlock)
DELETE FROM `playercreateinfo_action` WHERE `race` = 6 AND `class` IN (2,4,5,8,9);
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
VALUES
(6,2,0,6603,0),
(6,2,1,21084,0),
(6,2,2,635,0),
(6,2,11,20549,0),
(6,4,0,6603,0),
(6,4,1,1752,0),
(6,4,2,2098,0),
(6,4,3,2764,0),
(6,4,11,20549,0),
(6,5,0,585,0),
(6,5,1,2050,0),
(6,5,11,20549,0),
(6,8,0,133,0),
(6,8,1,168,0),
(6,8,11,20549,0),
(6,9,0,686,0),
(6,9,1,687,0),
(6,9,11,20549,0);

-- Gnome default action buttons (Paladin, Hunter, Priest, Shaman, Druid)
DELETE FROM `playercreateinfo_action` WHERE `race` = 7 AND `class` IN (2,3,5,7,11);
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
VALUES
(7,2,0,6603,0),
(7,2,1,21084,0),
(7,2,2,635,0),
(7,2,11,20589,0),
(7,3,0,6603,0),
(7,3,1,2973,0),
(7,3,2,75,0),
(7,3,11,20589,0),
(7,5,0,585,0),
(7,5,1,2050,0),
(7,5,11,20589,0),
(7,7,0,6603,0),
(7,7,1,403,0),
(7,7,2,331,0),
(7,7,11,20589,0),
(7,11,0,5176,0),
(7,11,1,5185,0),
(7,11,11,20589,0);

-- Troll default action buttons (Paladin, Warlock, Druid)
DELETE FROM `playercreateinfo_action` WHERE `race` = 8 AND `class` IN (2,9,11);
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
VALUES
(8,2,0,6603,0),
(8,2,1,21084,0),
(8,2,2,635,0),
(8,2,11,26297,0),
(8,9,0,686,0),
(8,9,1,687,0),
(8,9,11,26297,0),
(8,11,0,5176,0),
(8,11,1,5185,0),
(8,11,11,26297,0);

-- Blood Elf default action buttons (Warrior, Shaman, Druid)
DELETE FROM `playercreateinfo_action` WHERE `race` = 10 AND `class` IN (1,7,11);
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
VALUES
(10,1,72,6603,0),
(10,1,73,78,0),
(10,7,0,6603,0),
(10,7,1,403,0),
(10,7,2,331,0),
(10,7,11,28730,0),
(10,11,0,5176,0),
(10,11,1,5185,0),
(10,11,11,28730,0);

-- Draenei default action buttons (Rogue, Warlock, Druid)
DELETE FROM `playercreateinfo_action` WHERE `race` = 11 AND `class` IN (4,9,11);
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
VALUES
(11,4,0,6603,0),
(11,4,1,1752,0),
(11,4,2,2098,0),
(11,4,3,2764,0),
(11,4,11,28880,0),
(11,9,0,686,0),
(11,9,1,687,0),
(11,9,11,59548,0),
(11,11,0,5176,0),
(11,11,1,5185,0),
(11,11,11,59547,0);

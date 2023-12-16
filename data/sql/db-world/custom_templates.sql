-- Custom items
DELETE FROM `item_template` WHERE `entry` IN (703000,701000,702000,702001,702002,702003,702004,702005,702006,702007,702008,702009);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`)
VALUES
-- Tome of Uber Heal
(703000,9,0,-1,'Tome of Uber Heal',61330,7,134217792,0,1,4500000,4500000,0,-1,-1,80,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,483,0,-1,0,-1,0,-1,1908,6,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,'Learn Uber Heal Over Time',0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0),
-- Tome of World Flying
(701000,9,0,-1,'Tome of World Flying',61330,7,134217792,0,1,4500000,4500000,0,-1,-1,80,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,483,0,-1,0,-1,0,-1,31700,6,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,'Learn to fly everywhere',0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0),
-- Bat mounts
(702000,15,5,-1,'Bat',51143,4,0,0,1,2000000,0,0,-1,-1,80,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702000,6,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,1,'Teaches you how to summon this mount.  This is an extremely fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0),
(702001,15,5,-1,'Duskbat',51143,4,0,0,1,2000000,0,0,-1,-1,80,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702001,6,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,1,'Teaches you how to summon this mount.  This is an extremely fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0),
(702002,15,5,-1,'Vampire Bat',51143,4,0,0,1,2000000,0,0,-1,-1,80,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702002,6,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,1,'Teaches you how to summon this mount.  This is an extremely fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0),
(702003,15,5,-1,'Albino Bat',51143,4,0,0,1,2000000,0,0,-1,-1,80,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702003,6,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,1,'Teaches you how to summon this mount.  This is an extremely fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0),
-- Hover Disk mount
(702004,15,5,-1,'Hover Disk',58824,4,0,0,1,2000000,0,0,-1,-1,80,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702004,6,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,1,'Teaches you how to summon this disk.  This is an extremely fast disk.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0),
-- Amani Bear mounts
(702005,15,5,-1,'Green Amani War Bear',40160,4,0,0,1,0,0,0,262143,-1,70,70,762,150,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702005,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'Teaches you how to summon this mount.  This is a very fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0),
(702006,15,5,-1,'Yellow Amani War Bear',40160,4,0,0,1,0,0,0,262143,-1,70,70,762,150,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702006,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'Teaches you how to summon this mount.  This is a very fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0),
(702007,15,5,-1,'Brown Amani War Bear',40160,4,0,0,1,0,0,0,262143,-1,70,70,762,150,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702007,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'Teaches you how to summon this mount.  This is a very fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0),
-- Shredder mounts
(702008,15,5,-1,'Shredder MK-873',44269,4,0,0,1,0,0,0,262143,-1,80,1,762,150,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702008,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'Teaches you how to summon this mount.  This is a very fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0),
(702009,15,5,-1,'Shredder MK-581',44269,4,0,0,1,0,0,0,262143,-1,80,1,762,150,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702009,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'Teaches you how to summon this mount.  This is a very fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0);


-- Quest item (previously unused item "Currency Token Test Token 3")
UPDATE `item_template` SET `class` = 12, `name` = 'Strange Artifact', `description` = '', `Flags` = 0, `maxcount` = 1, `stackable` = 1, `spellid_1` = 0, `BagFamily` = 0, `bonding` = 4 WHERE `entry` = 38644;


-- Custom creatures
DELETE FROM `creature_template` WHERE `entry` IN (
702000,702001,702002,702003,702004,702005,702006,702007,702008,702009,102010,702010,
702108,702109,702110,702111,702112,702113,702114,
702200,702201,702202,702203,702204,702205,702206,702207,702208);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`)
VALUES
-- Creatures with custom model IDs
-- -------------------------------
-- Bat mounts
(702000,0,0,0,0,0,702000,0,0,0,'Bat','','',0,10,10,2,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,0,140,1,0,0,''),
(702001,0,0,0,0,0,702001,0,0,0,'Duskbat','','',0,10,10,2,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,0,140,1,0,0,''),
(702002,0,0,0,0,0,702002,0,0,0,'Vampire Bat','','',0,10,10,2,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,0,140,1,0,0,''),
(702003,0,0,0,0,0,702003,0,0,0,'Albino Bat','','',0,10,10,2,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,0,140,1,0,0,''),
-- Hover Disk mount
(702004,0,0,0,0,0,702004,0,0,0,'Hover Disk','','',0,10,10,2,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,0,140,1,0,0,''),
-- Amani Bear mounts
(702005,0,0,0,0,0,702005,0,0,0,'Green Amani War Bear','','',0,10,10,0,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,0.7,1,1,0,140,1,0,0,''),
(702006,0,0,0,0,0,702006,0,0,0,'Yellow Amani War Bear','','',0,10,10,0,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,0.7,1,1,0,140,1,0,0,''),
(702007,0,0,0,0,0,702007,0,0,0,'Brown Amani War Bear','','',0,10,10,0,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,0.7,1,1,0,140,1,0,0,''),
-- Shredder mounts
(702008,0,0,0,0,0,702008,0,0,0,'Shredder MK-873','','',0,10,10,0,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,0.7,1,1,0,140,1,0,0,''),
(702009,0,0,0,0,0,702009,0,0,0,'Shredder MK-581','','',0,10,10,0,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,0.7,1,1,0,140,1,0,0,''),
-- Teito (entry needs to be lower than 200000 or else the trainer spells won't be added, see "ACORE_TRAINER_START_REF")
(102010,0,0,0,0,0,702010,0,0,0,'Loremaster Teito','Shaman Trainer','',4515,80,80,2,29,51,1,1.14286,1,1,0,10,2000,2000,2,0,2048,0,0,0,0,7,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'SmartAI',0,3,1,5,8,1,0,0,1,0,2,''),
-- Zarursha
(702010,0,0,0,0,0,702012,0,0,0,'Zarursha of the Shattered Sun','','',0,80,80,2,83,0,1,1.14286,1,1,0,10,2000,2000,2,0,2048,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'SmartAI',0,3,1,5,8,1,0,0,1,0,2,''),

-- Creatures with already existing model IDs
-- -----------------------------------------
-- Teito's Minion & Mount
(702108,0,0,0,0,0,21114,0,0,0,'Spirit Wolf','Teito''s Minion','',0,80,80,2,29,0,1,1.14286,1,1,0,6,2000,2000,1,0,2048,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'SmartAI',0,3,1,3,1,1,0,0,1,0,2,''),
(702109,0,0,0,0,0,22464,0,0,0,'Amani War Bear','Teito''s Mount','',0,80,80,2,29,0,1,1.14286,1,1,0,8,2000,2000,1,0,2048,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'SmartAI',0,3,1,4,1,1,0,0,1,0,2,''),
-- Zarursha's Pet 1
(702110,0,0,0,0,0,7671,0,0,0,'Zerwosh','Zarursha''s Pet','',0,80,80,2,83,0,1,1.14286,1,1,0,8,2000,2000,1,0,2048,0,42,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'SmartAI',0,3,1,4,1,1,0,0,1,0,2,''),
-- Rexxar & Misha
(702111,0,0,0,0,0,20918,0,0,0,'Rexxar','Champion of the Horde','',0,72,72,0,83,0,1.5,1.14286,1,3,0,35,2000,2000,1,0,2048,0,0,0,0,0,0,7,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'SmartAI',0,3,1,200,20,1,0,0,1,0,2,''),
(702112,0,0,0,0,0,9492,0,0,0,'Misha','','',0,72,72,0,83,0,1.5,1.14286,1,1,0,4.6,2000,2000,1,0,2048,0,0,0,0,0,0,1,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'SmartAI',0,3,1,50,1,1,0,0,1,0,2,''),
-- Zarursha's Pet 2 & Mount
(702113,0,0,0,0,0,8808,0,0,0,'Gronklaash','Zarursha''s Pet','',0,80,80,2,83,0,1,1.14286,1,1,0,8,2000,2000,1,0,2048,0,24,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,4,1,1,0,0,1,0,2,'npc_gronklaash'),
(702114,0,0,0,0,0,17719,0,0,0,'Swift Red Wind Rider','Zarursha''s Mount','',0,80,80,2,83,0,1,1.14286,1,1,0,8,2000,2000,1,0,2048,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,4,1,4,1,1,0,0,1,0,2,'npc_swift_red_wind_rider'),
-- Creatures for use by the Beastmaster module
(702200,0,0,0,0,0,17814,0,0,0,'Barbed Spider (Black)','','',0,63,64,1,14,0,1,1.14286,1,0,0,1,2000,2000,2,0,2048,0,32,0,0,0,0,1,1,18464,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,3,1,1,1,1,0,0,1,0,0,''),
(702201,0,0,0,0,0,22120,0,0,0,'Frost Nymph','','',0,40,41,0,72,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,9,0,0,0,0,1,1,1557,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,3,1,1.2,1,1,0,0,1,0,0,''),
(702202,0,0,0,0,0,23747,0,0,0,'Arcane Wyrm','','',0,63,64,1,14,0,1,1.14286,1,0,0,1,2000,2000,2,0,2048,0,32,0,0,0,0,1,1,18464,0,70160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,3,1,1,1,1,0,0,1,0,0,''),
(702203,0,0,0,0,0,23329,0,0,0,'Mana Wyrm','','',0,63,64,1,14,0,1,1.14286,1,0,0,1,2000,2000,2,0,2048,0,32,0,0,0,0,1,1,18464,0,70160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,3,1,1,1,1,0,0,1,0,0,''),
(702204,0,0,0,0,0,22464,0,0,0,'Amani War Bear','','',0,21,22,0,14,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,4,0,0,0,0,1,1,2351,0,100005,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,1,1.3,1,1,0,0,1,0,0,''),
(702205,0,0,0,0,0,15290,0,0,0,'Zulian Tiger','','',0,21,22,0,14,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,4,0,0,0,0,1,1,2351,0,100005,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,1,1.3,1,1,0,0,1,0,0,''),
(702206,0,0,0,0,0,15289,0,0,0,'Razzashi Raptor','','',0,21,22,0,14,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,4,0,0,0,0,1,1,2351,0,100005,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,1,1.3,1,1,0,0,1,0,0,''),
(702207,0,0,0,0,0,21492,0,0,0,'Raven Lord','','',0,21,22,0,14,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,4,0,0,0,0,1,1,2351,0,100005,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,1,1.3,1,1,0,0,1,0,0,''),
(702208,0,0,0,0,0,26423,0,0,0,'Mammoth','','',0,78,79,2,16,0,1,1,1,0,0,1,2000,2000,1,0,2048,0,43,0,0,0,0,1,65537,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,0,0,1,0,0,'');

-- Amani War Bear: Randomly execute emote "ONESHOT_ATTACKUNARMED"
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (102010,702108,702109,702010,702110,702111,702112) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (70210900,70201000,70211100) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
-- Teito: Cast "Riptide"
(102010,0,0,0,2,0,100,0,0,50,15000,25000,0,11,75367,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Loremaster Teito - On Health Below 50% - Cast ''Riptide'''),

-- Amani War Bear: Randomly execute emote "ONESHOT_ATTACKUNARMED"; force Teito to cast "Riptide" if below 50% health
(702109,0,0,0,1,0,100,0,20000,45000,20000,45000,0,80,70210900,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Amani War Bear - Out of Combat - Call Timed Action List'),
(702109,0,1,0,4,0,100,0,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Amani War Bear - On Aggro - Set Root Off'),
(702109,0,2,0,2,0,100,0,0,50,15000,25000,0,86,75367,0,19,102010,40,0,1,0,0,0,0,0,0,0,0,'Amani War Bear - On Health Below 50% - Cross Cast ''Riptide'''),

(70210900,9,0,0,0,0,100,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Amani War Bear - On Script - Set Root On'),
(70210900,9,1,0,0,0,100,0,0,0,0,0,0,5,35,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Amani War Bear - On Script - Play Emote ''ONESHOT_ATTACKUNARMED'''),
(70210900,9,2,0,0,0,100,0,2000,2000,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Amani War Bear - On Script - Set Root Off'),

-- Spirit Wolf: Force Teito to cast "Riptide" if below 50% health
(702108,0,2,0,2,0,100,0,0,50,15000,25000,0,86,75367,0,19,102010,40,0,1,0,0,0,0,0,0,0,0,'Spirit Wolf - On Health Below 50% - Cross Cast ''Riptide'''),

-- Zarursha: Respawn "Zerwosh"; cast "Shoot"
(702010,0,0,0,11,0,100,0,0,0,0,0,0,80,70201000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zarursha of the Shattered Sun - On Respawn - Call Timed Action List'),
(702010,0,1,0,9,0,100,0,2,30,2000,2000,0,11,40873,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Zarursha of the Shattered Sun - Within 2-30 Range - Cast ''Shoot'' (Prevent Combat Movement)'),
(702010,0,2,0,9,0,100,1,2,30,250,250,0,11,53338,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Zarursha of the Shattered Sun - Within 2-30 Range - Cast ''Hunter''s Mark'' (No Repeat)'),
(702010,0,3,0,6,0,100,0,0,0,0,0,0,41,0,0,0,0,0,0,11,702110,40,0,0,0,0,0,0,'Zarursha of the Shattered Sun - On Death - Despawn ''Zerwosh'''),

(70201000,9,0,0,0,0,100,0,1000,1000,0,0,0,70,0,0,0,0,0,0,11,702110,40,0,0,0,0,0,0,'Zarursha of the Shattered Sun - On Script - Respawn ''Zerwosh'''),

-- Zerwosh: Despawn (only if Zarursha is not nearby, see conditions)
(702110,0,0,0,1,0,100,0,1000,1000,10000,10000,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Zerwosh - OOC - Despawn'),
(702110,0,1,0,0,0,100,0,250,250,10000,30000,0,11,55754,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Zerwosh - IC - Cast ''Acid Spit'''),

-- Rexxar: Respawn "Misha"
(702111,0,0,0,11,0,100,0,0,0,0,0,0,80,70211100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Rexxar - On Respawn - Call Timed Action List'),
(702111,0,1,0,6,0,100,0,0,0,0,0,0,41,0,0,0,0,0,0,11,702112,40,0,0,0,0,0,0,'Rexxar - On Death - Despawn ''Misha'''),

(70211100,9,0,0,0,0,100,0,1000,1000,0,0,0,70,0,0,0,0,0,0,11,702112,40,0,0,0,0,0,0,'Rexxar - On Script - Respawn ''Misha'''),

-- Misha: Despawn (only if Rexxar is not nearby, see conditions)
(702112,0,0,0,1,0,100,0,1000,1000,10000,10000,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Misha - OOC - Despawn');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` IN (702110,702112);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `Comment`)
VALUES
(22,1,702110,0,0,29,1,702010,40,0,1,0,0,'Ensure that Zerwosh''s despawn SAI is only executed if Zarursha is not nearby (40 yards)'),
(22,1,702112,0,0,29,1,702111,40,0,1,0,0,'Ensure that Misha''s despawn SAI is only executed if Rexxar is not nearby (40 yards)');

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (102010,702010,702111);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(102010,1,33468,33332,0), -- Teito's equip
(702010,1,44249,0,45210), -- Zarursha's equip
(702111,1,10612,10612,0); -- Rexxar's equip

-- Teito: Shaman trainer spells
DELETE FROM `npc_trainer` WHERE `ID` = 102010;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`)
VALUES
(102010,-200018,0,0,0,0),
(102010,-200017,0,0,0,0);

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (702000,702001,702002,702003,702004,702005,702006,702007,702008,702009,702010,702011,702012);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
VALUES
(702000,0,0,2,0),
(702001,0,0,2,0),
(702002,0,0,2,0),
(702003,0,0,2,0),
(702004,0,0,2,0),
(702005,0,0,2,0),
(702006,0,0,2,0),
(702007,0,0,2,0),
(702008,0,0,2,0),
(702009,0,0,2,0),
(702010,0.306,1.5,0,0),
(702011,2,0,0,0),
(702012,0.236,1.5,1,0);

DELETE FROM `creature_template_locale` WHERE `entry` IN (702000,702001,702002,702003,702004,702005,702006,702007,702008,702009);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`)
VALUES
(702000,'deDE','Fledermaus',''),
(702001,'deDE','Nachtsauger',''),
(702002,'deDE','Vampirfledermaus',''),
(702003,'deDE','Albinofledermaus',''),
(702004,'deDE','Fliegende Scheibe',''),
(702005,'deDE','Grüner Kriegsbär der Amani',''),
(702006,'deDE','Gelber Kriegsbär der Amani',''),
(702007,'deDE','Brauner Kriegsbär der Amani',''),
(702008,'deDE','Schredder MK-873',''),
(702009,'deDE','Schredder MK-581','');


-- Black Qiraji Battle Tank: Use other models
UPDATE `creature_template` set `modelid1` = 17699, `modelid2` = 17697, `modelid3` = 17719, `modelid4` = 17759 where `entry` = 32568;

-- Ethereal Soul-Trader: Allow selling items
UPDATE `creature_template` SET `flags_extra` = `flags_extra` & ~0x00001000 WHERE `entry` = 27914;


-- Waypoints
DELETE FROM `waypoints` WHERE `entry` IN (702113,702114);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`)
VALUES
(702113,1,2152.99,-4671.53,50.2302,'Gronklaash (Zarursha''s Pet)'),
(702113,2,2157.14,-4675.89,49.9069,NULL),
(702113,3,2160.9,-4681.37,50.2523,NULL),
(702113,4,2162.81,-4687.14,49.2647,NULL),
(702113,5,2167.5,-4690.31,48.9666,NULL),
(702113,6,2172.31,-4688.87,49.6017,NULL),
(702113,7,2174.13,-4685.1,50.1981,NULL),
(702113,8,2174.7,-4680.23,50.9504,NULL),
(702113,9,2174.07,-4676.08,51.2556,NULL),
(702113,10,2169.84,-4671.92,51.0667,NULL),
(702113,11,2164.57,-4671.27,50.0169,NULL),
(702113,12,2158.28,-4671.69,49.9524,NULL),
(702113,13,2152.14,-4672.44,50.0335,NULL),
(702113,14,2147.64,-4675.52,48.9994,NULL),
(702113,15,2144.9,-4678.55,47.9881,NULL),
(702113,16,2142.52,-4681.26,46.2013,NULL),
(702113,17,2140.29,-4683.65,44.9889,NULL),
(702113,18,2136.56,-4686.43,44.5002,NULL),
(702113,19,2132.65,-4689.19,43.8982,NULL),
(702113,20,2129.08,-4692.17,43.4635,NULL),
(702113,21,2128.18,-4696.06,43.0617,NULL),
(702113,22,2129.49,-4699.5,42.8001,NULL),
(702113,23,2131.9,-4701.9,42.5964,NULL),
(702113,24,2135.33,-4702.4,42.3993,NULL),
(702113,25,2138.48,-4701.74,42.3547,NULL),
(702113,26,2140.85,-4699.04,42.5232,NULL),
(702113,27,2142.15,-4695.47,42.692,NULL),
(702113,28,2142.2,-4691.75,43.0401,NULL),
(702113,29,2141.82,-4688.15,43.7552,NULL),
(702113,30,2142.61,-4685.14,44.7028,NULL),
(702113,31,2144.38,-4680.52,47.1684,NULL),
(702113,32,2146.46,-4677.15,48.6045,NULL),
(702113,33,2149.05,-4673,49.4317,NULL),

(702114,1,2068.02,-4693.87,84.3082,'Swift Red Wind Rider (Zarursha''s Mount)'),
(702114,2,2081.86,-4673.01,86.0896,NULL),
(702114,3,2092.28,-4645.51,87.9767,NULL),
(702114,4,2080,-4621.27,87.5859,NULL),
(702114,5,2058.93,-4616.49,82.911,NULL),
(702114,6,2029.11,-4617.37,78.3328,NULL),
(702114,7,2004.13,-4623.67,69.1031,NULL),
(702114,8,1979.7,-4631.75,58.0916,NULL),
(702114,9,1954.95,-4641.95,52.2948,NULL),
(702114,10,1936.27,-4654.66,54.3653,NULL),
(702114,11,1919.08,-4677.43,61.865,NULL),
(702114,12,1916.21,-4705.15,73.976,NULL),
(702114,13,1934.32,-4726.24,85.2771,NULL),
(702114,14,1961.55,-4736.08,95.1362,NULL),
(702114,15,1995.05,-4738.13,95.1925,NULL),
(702114,16,2025.36,-4725.84,90.2549,NULL),
(702114,17,2047.53,-4709.12,86.9912,NULL);

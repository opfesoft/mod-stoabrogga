-- Custom items
DELETE FROM `item_template` WHERE `entry` IN (703000,701000,702000,702001,702002,702003,702004,702005,702006,702007,702008,702009);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `VerifiedBuild`)
VALUES
-- Tome of Uber Heal
(703000,9,0,-1,'Tome of Uber Heal',61330,7,134217792,0,1,4500000,4500000,0,-1,-1,80,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,483,0,-1,0,-1,0,-1,1908,6,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,'Learn Uber Heal Over Time',0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0,1),
-- Tome of World Flying
(701000,9,0,-1,'Tome of World Flying',61330,7,134217792,0,1,4500000,4500000,0,-1,-1,80,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,483,0,-1,0,-1,0,-1,31700,6,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,'Learn to fly everywhere',0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0,1),
-- Bat mounts
(702000,15,5,-1,'Bat',51143,4,0,0,1,2000000,0,0,-1,-1,80,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702000,6,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,1,'Teaches you how to summon this mount.  This is an extremely fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0,1),
(702001,15,5,-1,'Duskbat',51143,4,0,0,1,2000000,0,0,-1,-1,80,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702001,6,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,1,'Teaches you how to summon this mount.  This is an extremely fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0,1),
(702002,15,5,-1,'Vampire Bat',51143,4,0,0,1,2000000,0,0,-1,-1,80,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702002,6,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,1,'Teaches you how to summon this mount.  This is an extremely fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0,1),
(702003,15,5,-1,'Albino Bat',51143,4,0,0,1,2000000,0,0,-1,-1,80,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702003,6,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,1,'Teaches you how to summon this mount.  This is an extremely fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0,1),
-- Hover Disk mount
(702004,15,5,-1,'Hover Disk',58824,4,0,0,1,2000000,0,0,-1,-1,80,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702004,6,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,1,'Teaches you how to summon this disk.  This is an extremely fast disk.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0,1),
-- Amani Bear mounts
(702005,15,5,-1,'Green Amani War Bear',40160,4,0,0,1,0,0,0,262143,-1,70,70,762,150,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702005,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'Teaches you how to summon this mount.  This is a very fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0,0),
(702006,15,5,-1,'Yellow Amani War Bear',40160,4,0,0,1,0,0,0,262143,-1,70,70,762,150,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702006,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'Teaches you how to summon this mount.  This is a very fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0,0),
(702007,15,5,-1,'Brown Amani War Bear',40160,4,0,0,1,0,0,0,262143,-1,70,70,762,150,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702007,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'Teaches you how to summon this mount.  This is a very fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0,0),
-- Shredder mounts
(702008,15,5,-1,'Shredder MK-873',44269,4,0,0,1,0,0,0,262143,-1,80,1,762,150,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702008,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'Teaches you how to summon this mount.  This is a very fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0,0),
(702009,15,5,-1,'Shredder MK-581',44269,4,0,0,1,0,0,0,262143,-1,80,1,762,150,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55884,0,-1,0,-1,330,3000,702009,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'Teaches you how to summon this mount.  This is a very fast mount.',0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0,0,0);


-- Custom creatures
DELETE FROM `creature_template` WHERE `entry` IN (702000,702001,702002,702003,702004,702005,702006,702007,702008,702009,702100,702101,702102,702103,702104,702105,702106,702107);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`)
VALUES
-- Bat mounts
(702000,0,0,0,0,0,702000,0,0,0,'Bat','','',0,10,10,2,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,0,140,1,0,0,'',0),
(702001,0,0,0,0,0,702001,0,0,0,'Duskbat','','',0,10,10,2,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,0,140,1,0,0,'',0),
(702002,0,0,0,0,0,702002,0,0,0,'Vampire Bat','','',0,10,10,2,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,0,140,1,0,0,'',0),
(702003,0,0,0,0,0,702003,0,0,0,'Albino Bat','','',0,10,10,2,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,0,140,1,0,0,'',0),
-- Hover Disk mount
(702004,0,0,0,0,0,702004,0,0,0,'Hover Disk','','',0,10,10,2,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,0,140,1,0,0,'',0),
-- Amani Bear mounts
(702005,0,0,0,0,0,702005,0,0,0,'Green Amani War Bear','','',0,10,10,0,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,0.7,1,1,0,140,1,0,0,'',0),
(702006,0,0,0,0,0,702006,0,0,0,'Yellow Amani War Bear','','',0,10,10,0,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,0.7,1,1,0,140,1,0,0,'',0),
(702007,0,0,0,0,0,702007,0,0,0,'Brown Amani War Bear','','',0,10,10,0,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,0.7,1,1,0,140,1,0,0,'',0),
-- Shredder mounts
(702008,0,0,0,0,0,702008,0,0,0,'Shredder MK-873','','',0,10,10,0,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,0.7,1,1,0,140,1,0,0,'',0),
(702009,0,0,0,0,0,702009,0,0,0,'Shredder MK-581','','',0,10,10,0,35,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,0.7,1,1,0,140,1,0,0,'',0),
-- Creatures for use by the Beastmaster module
(702100,0,0,0,0,0,17814,0,0,0,'Barbed Spider (Black)','','',0,63,64,1,14,0,1,1.14286,1,0,0,1,2000,2000,2,0,2048,0,32,0,0,0,0,1,1,18464,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,3,1,1,1,1,0,0,1,0,0,'',0),
(702101,0,0,0,0,0,22120,0,0,0,'Frost Nymph','','',0,40,41,0,72,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,9,0,0,0,0,1,1,1557,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,3,1,1.2,1,1,0,0,1,0,0,'',0),
(702102,0,0,0,0,0,23747,0,0,0,'Arcane Wyrm','','',0,63,64,1,14,0,1,1.14286,1,0,0,1,2000,2000,2,0,2048,0,32,0,0,0,0,1,1,18464,0,70160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,3,1,1,1,1,0,0,1,0,0,'',0),
(702103,0,0,0,0,0,23329,0,0,0,'Mana Wyrm','','',0,63,64,1,14,0,1,1.14286,1,0,0,1,2000,2000,2,0,2048,0,32,0,0,0,0,1,1,18464,0,70160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,3,1,1,1,1,0,0,1,0,0,'',0),
(702104,0,0,0,0,0,22464,0,0,0,'Amani War Bear','','',0,21,22,0,14,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,4,0,0,0,0,1,1,2351,0,100005,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,1,1.3,1,1,0,0,1,0,0,'',0),
(702105,0,0,0,0,0,15290,0,0,0,'Zulian Tiger','','',0,21,22,0,14,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,4,0,0,0,0,1,1,2351,0,100005,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,1,1.3,1,1,0,0,1,0,0,'',0),
(702106,0,0,0,0,0,15289,0,0,0,'Razzashi Raptor','','',0,21,22,0,14,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,4,0,0,0,0,1,1,2351,0,100005,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,1,1.3,1,1,0,0,1,0,0,'',0),
(702107,0,0,0,0,0,21492,0,0,0,'Raven Lord','','',0,21,22,0,14,0,1,1.14286,1,0,0,1,2000,2000,1,0,2048,0,4,0,0,0,0,1,1,2351,0,100005,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,1,1.3,1,1,0,0,1,0,0,'',0);

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (702000,702001,702002,702003,702004,702005,702006,702007,702008,702009);
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
(702009,0,0,2,0);

DELETE FROM `creature_template_locale` WHERE `entry` IN (702000,702001,702002,702003,702004,702005,702006,702007,702008,702009);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`)
VALUES
(702000,'deDE','Fledermaus','',1),
(702001,'deDE','Nachtsauger','',1),
(702002,'deDE','Vampirfledermaus','',1),
(702003,'deDE','Albinofledermaus','',1),
(702004,'deDE','Fliegende Scheibe','',1),
(702005,'deDE','Grüner Kriegsbär der Amani','',1),
(702006,'deDE','Gelber Kriegsbär der Amani','',1),
(702007,'deDE','Brauner Kriegsbär der Amani','',1),
(702008,'deDE','Schredder MK-873','',1),
(702009,'deDE','Schredder MK-581','',1);


-- Black Qiraji Battle Tank: Use other models
UPDATE `creature_template` set `modelid1` = 17699, `modelid2` = 17697, `modelid3` = 17719, `modelid4` = 17759 where `entry` = 32568;

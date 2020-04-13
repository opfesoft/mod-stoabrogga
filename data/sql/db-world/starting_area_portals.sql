-- Starting area Portal NPCs
DELETE FROM `creature_template` WHERE `entry` BETWEEN 603252 AND 603255;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`)
VALUES
(603252,0,0,0,0,0,30615,0,0,0,'Portal','','Interact',53252,80,80,0,35,1,1.14286,1.25,1,0,0,1,1410,1551,1,0,2048,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,117,586,'SmartAI',0,3,1,1,1,1,0,0,1,0,0,'',0),
(603253,0,0,0,0,0,30615,0,0,0,'Portal','','Interact',53253,80,80,0,35,1,1.14286,1.25,1,0,0,1,1410,1551,1,0,2048,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,117,586,'SmartAI',0,3,1,1,1,1,0,0,1,0,0,'',0),
(603254,0,0,0,0,0,30615,0,0,0,'Portal','','Interact',53254,80,80,0,35,1,1.14286,1.25,1,0,0,1,1410,1551,1,0,2048,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,117,586,'SmartAI',0,3,1,1,1,1,0,0,1,0,0,'',0),
(603255,0,0,0,0,0,30615,0,0,0,'Portal','','Interact',53255,80,80,0,35,1,1.14286,1.25,1,0,0,1,1410,1551,1,0,2048,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,117,586,'SmartAI',0,3,1,1,1,1,0,0,1,0,0,'',0);

DELETE FROM `gossip_menu` WHERE `MenuID` BETWEEN 53252 AND 53255;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(53252,16893),
(53253,16893),
(53254,16893),
(53255,16893);

DELETE FROM `gossip_menu_option` WHERE `MenuID` BETWEEN 53252 AND 53255;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`)
VALUES
-- Horde starting area hub 1
(53252,0,4,'Valley of Trials',0,1,1,0,0,0,0,'',0,0),
(53252,1,4,'Camp Narache',0,1,1,0,0,0,0,'',0,0),
(53252,2,4,'Deathknell',0,1,1,0,0,0,0,'',0,0),
(53252,3,4,'Sunstrider Isle',0,1,1,0,0,0,0,'',0,0),
-- Horde starting area hub 2
(53253,0,4,'Razor Hill',0,1,1,0,0,0,0,'',0,0),
(53253,1,4,'Bloodhoof Village',0,1,1,0,0,0,0,'',0,0),
(53253,2,4,'Brill',0,1,1,0,0,0,0,'',0,0),
(53253,3,4,'Falconwing Square',0,1,1,0,0,0,0,'',0,0),
-- Alliance starting area hub 1
(53254,0,4,'Northshire Valley',0,1,1,0,0,0,0,'',0,0),
(53254,1,4,'Coldridge Valley',0,1,1,0,0,0,0,'',0,0),
(53254,2,4,'Aldrassil',0,1,1,0,0,0,0,'',0,0),
(53254,3,4,'Ammen Vale',0,1,1,0,0,0,0,'',0,0),
-- Alliance starting area hub 2
(53255,0,4,'Goldshire',0,1,1,0,0,0,0,'',0,0),
(53255,1,4,'Kharanos',0,1,1,0,0,0,0,'',0,0),
(53255,2,4,'Dolanaar',0,1,1,0,0,0,0,'',0,0),
(53255,3,4,'Azure Watch',0,1,1,0,0,0,0,'',0,0);

DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN 603252 AND 603255 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
-- Horde starting area hub 1
(603252,0,0,0,62,0,100,0,53252,0,0,0,0,62,1,0,0,0,0,0,7,0,0,0,0,-591.472,-4206.15,38.6148,3.68034,'Portal - On Gossip Select 0 - Teleport ''Valley of Trials'''),
(603252,0,1,0,62,0,100,0,53252,1,0,0,0,62,1,0,0,0,0,0,7,0,0,0,0,-2926.27,-282.852,53.9151,0.522909,'Portal - On Gossip Select 1 - Teleport ''Camp Narache'''),
(603252,0,2,0,62,0,100,0,53252,2,0,0,0,62,0,0,0,0,0,0,7,0,0,0,0,1861.25,1612.04,95.6047,4.8979,'Portal - On Gossip Select 2 - Teleport ''Deathknell'''),
(603252,0,3,0,62,0,100,0,53252,3,0,0,0,62,530,0,0,0,0,0,7,0,0,0,0,10400.2,-6313.17,35.6769,4.14505,'Portal - On Gossip Select 3 - Teleport ''Sunstrider Isle'''),
-- Horde starting area hub 2
(603253,0,0,0,62,0,100,0,53253,0,0,0,0,62,1,0,0,0,0,0,7,0,0,0,0,265.288,-4769.25,11.9933,1.06182,'Portal - On Gossip Select 0 - Teleport ''Razor Hill'''),
(603253,0,1,0,62,0,100,0,53253,1,0,0,0,62,1,0,0,0,0,0,7,0,0,0,0,-2343.81,-428.649,-6.95221,1.54156,'Portal - On Gossip Select 1 - Teleport ''Bloodhoof Village'''),
(603253,0,2,0,62,0,100,0,53253,2,0,0,0,62,0,0,0,0,0,0,7,0,0,0,0,2281.76,264.29,35.0406,2.66737,'Portal - On Gossip Select 2 - Teleport ''Brill'''),
(603253,0,3,0,62,0,100,0,53253,3,0,0,0,62,530,0,0,0,0,0,7,0,0,0,0,9494.23,-6746.76,17.1456,5.04197,'Portal - On Gossip Select 3 - Teleport ''Falconwing Square'''),
-- Alliance starting area hub 1
(603254,0,0,0,62,0,100,0,53254,0,0,0,0,62,0,0,0,0,0,0,7,0,0,0,0,-8887.31,-128.403,81.5698,2.93852,'Portal - On Gossip Select 0 - Teleport ''Northshire Valley'''),
(603254,0,1,0,62,0,100,0,53254,1,0,0,0,62,0,0,0,0,0,0,7,0,0,0,0,-6173.08,405.924,398.588,4.30114,'Portal - On Gossip Select 1 - Teleport ''Coldridge Valley'''),
(603254,0,2,0,62,0,100,0,53254,2,0,0,0,62,1,0,0,0,0,0,7,0,0,0,0,10377.4,721.263,1325.4,1.08142,'Portal - On Gossip Select 2 - Teleport ''Aldrassil'''),
(603254,0,3,0,62,0,100,0,53254,3,0,0,0,62,530,0,0,0,0,0,7,0,0,0,0,-4041.81,-13794.9,75.8193,1.30377,'Portal - On Gossip Select 3 - Teleport ''Ammen Vale'''),
-- Alliance starting area hub 2
(603255,0,0,0,62,0,100,0,53255,0,0,0,0,62,0,0,0,0,0,0,7,0,0,0,0,-9439.43,24.7988,57.6432,0.682073,'Portal - On Gossip Select 0 - Teleport ''Goldshire'''),
(603255,0,1,0,62,0,100,0,53255,1,0,0,0,62,0,0,0,0,0,0,7,0,0,0,0,-5620.27,-510.245,404.181,0.807681,'Portal - On Gossip Select 1 - Teleport ''Kharanos'''),
(603255,0,2,0,62,0,100,0,53255,2,0,0,0,62,1,0,0,0,0,0,7,0,0,0,0,9855.61,931.262,1308.33,5.81661,'Portal - On Gossip Select 2 - Teleport ''Dolanaar'''),
(603255,0,3,0,62,0,100,0,53255,3,0,0,0,62,530,0,0,0,0,0,7,0,0,0,0,-4124.95,-12525.4,43.9797,2.37505,'Portal - On Gossip Select 3 - Teleport ''Azure Watch''');

DELETE FROM `creature` WHERE `id` IN (603252,603253,603254,603255);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`)
VALUES
(5000100,603252,1,0,0,1,1,0,0,-591.472,-4206.15,38.6148,3.68034,300,0,0,10000,0,0,0,0,0,'',0),    -- Portal Valley of Trials
(5000101,603252,1,0,0,1,1,0,0,-2926.27,-282.852,53.9151,0.522909,300,0,0,10000,0,0,0,0,0,'',0),   -- Portal Camp Narache
(5000102,603252,0,0,0,1,1,0,0,1861.25,1612.04,95.6047,4.8979,300,0,0,10000,0,0,0,0,0,'',0),       -- Portal Deathknell
(5000103,603252,530,0,0,1,1,0,0,10400.2,-6313.17,35.6769,4.14505,300,0,0,10000,0,0,0,0,0,'',0),   -- Portal Sunstrider Isle

(5000104,603253,1,0,0,1,1,0,0,265.288,-4769.25,11.9933,1.06182,300,0,0,10000,0,0,0,0,0,'',0),     -- Portal Razor Hill
(5000105,603253,1,0,0,1,1,0,0,-2343.81,-428.649,-6.95221,1.54156,300,0,0,10000,0,0,0,0,0,'',0),   -- Portal Bloodhoof Village
(5000106,603253,0,0,0,1,1,0,0,2281.76,264.29,35.0406,2.66737,300,0,0,10000,0,0,0,0,0,'',0),       -- Portal Brill
(5000107,603253,530,0,0,1,1,0,0,9494.23,-6746.76,17.1456,5.04197,300,0,0,10000,0,0,0,0,0,'',0),   -- Portal Falconwing Square

(5000108,603254,0,0,0,1,1,0,0,-8887.31,-128.403,81.5698,2.93852,300,0,0,10000,0,0,0,0,0,'',0),    -- Portal Northshire Valley
(5000109,603254,0,0,0,1,1,0,0,-6173.08,405.924,398.588,4.30114,300,0,0,10000,0,0,0,0,0,'',0),     -- Portal Coldridge Valley
(5000110,603254,1,0,0,1,1,0,0,10377.4,721.263,1325.4,1.08142,300,0,0,10000,0,0,0,0,0,'',0),       -- Portal Aldrassil
(5000111,603254,530,0,0,1,1,0,0,-4041.81,-13794.9,75.8193,1.30377,300,0,0,10000,0,0,0,0,0,'',0),  -- Portal Ammen Vale

(5000112,603255,0,0,0,1,1,0,0,-9439.43,24.7988,57.6432,0.682073,300,0,0,10000,0,0,0,0,0,'',0),    -- Portal Goldshire
(5000113,603255,0,0,0,1,1,0,0,-5620.27,-510.245,404.181,0.807681,300,0,0,10000,0,0,0,0,0,'',0),   -- Portal Kharanos
(5000114,603255,1,0,0,1,1,0,0,9855.61,931.262,1308.33,5.81661,300,0,0,10000,0,0,0,0,0,'',0),      -- Portal Dolanaar
(5000115,603255,530,0,0,1,1,0,0,-4124.95,-12525.4,43.9797,2.37505,300,0,0,10000,0,0,0,0,0,'',0);  -- Portal Azure Watch

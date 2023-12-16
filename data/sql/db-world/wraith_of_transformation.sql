-- Transformation NPC
DELETE FROM `creature_template` WHERE `entry` = 603251;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`)
VALUES
(603251,0,0,0,0,0,10771,0,0,0,'Wraith of Transformation','',NULL,53251,80,80,0,35,1,1.14286,1.25,1,0,0,1,1410,1551,1,0,2048,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,117,586,'SmartAI',0,3,1,1,1,1,0,0,1,0,0,'');

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 53251;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`)
VALUES
(53251,0,4,'Revert Transformation',0,1,1,0,0,0,0,'',0),
(53251,1,4,'Brewfest Dwarf (Random)',0,1,1,0,0,0,0,'',0),  -- aura 43909
(53251,2,4,'Brewfest Goblin (Random)',0,1,1,0,0,0,0,'',0), -- aura 43911
(53251,3,4,'Evergrove Druid (Random)',0,1,1,0,0,0,0,'',0), -- aura 39158
(53251,4,4,'Footman (Male)',0,1,1,0,0,0,0,'',0),           -- aura 48498
(53251,5,4,'Human (Female)',0,1,1,0,0,0,0,'',0),           -- aura 62550
(53251,6,4,'Orc (Male)',0,1,1,0,0,0,0,'',0),               -- aura 34317
(53251,7,4,'Undead (Female)',0,1,1,0,0,0,0,'',0),          -- aura 29488
(53251,8,4,'Worgen (Male)',0,1,1,0,0,0,0,'',0),            -- aura 31310
(53251,9,4,'Druid Bear Form',0,1,1,0,0,0,0,'',0),          -- aura 20514
(53251,10,0,'Play Undead Dance Music',0,1,1,0,0,0,0,'',0);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 603251 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN 60325100 AND 60325112 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(603251,0,0,0,54,0,100,0,0,0,0,0,0,41,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Just Summoned - Despawn After 60 Seconds'),
(603251,0,1,0,61,0,100,0,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - Linked - Close Gossip'),
(603251,0,2,1,62,0,100,0,53251,0,0,0,0,80,60325100,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Gossip Select 0 - Call Action List'),
(603251,0,3,1,62,0,100,0,53251,1,0,0,0,80,60325101,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Gossip Select 1 - Call Action List'),
(603251,0,4,1,62,0,100,0,53251,2,0,0,0,80,60325102,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Gossip Select 2 - Call Action List'),
(603251,0,5,1,62,0,100,0,53251,3,0,0,0,80,60325103,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Gossip Select 3 - Call Action List'),
(603251,0,6,1,62,0,100,0,53251,4,0,0,0,80,60325104,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Gossip Select 4 - Call Action List'),
(603251,0,7,1,62,0,100,0,53251,5,0,0,0,80,60325105,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Gossip Select 5 - Call Action List'),
(603251,0,8,1,62,0,100,0,53251,6,0,0,0,80,60325106,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Gossip Select 6 - Call Action List'),
(603251,0,9,1,62,0,100,0,53251,7,0,0,0,80,60325107,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Gossip Select 7 - Call Action List'),
(603251,0,10,1,62,0,100,0,53251,8,0,0,0,80,60325108,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Gossip Select 8 - Call Action List'),
(603251,0,11,1,62,0,100,0,53251,9,0,0,0,80,60325109,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Gossip Select 9 - Call Action List'),
(603251,0,12,1,62,0,100,0,53251,10,0,0,0,216,5355,1,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Gossip Select 10 - Play Music'),
(603251,0,13,0,1,0,100,0,5000,15000,5000,15000,0,87,60325110,60325111,60325112,60325111,0,0,1,0,0,0,0,0,0,0,0,'Wraith of Transformation - OOC - Call Random Action List'),

(60325100,9,0,0,0,0,100,0,0,0,0,0,0,28,43909,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Dwarf'''),
(60325100,9,1,0,0,0,100,0,0,0,0,0,0,28,43911,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Goblin'''),
(60325100,9,2,0,0,0,100,0,0,0,0,0,0,28,39158,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Evergrove Druid Transform Druid'''),
(60325100,9,3,0,0,0,100,0,0,0,0,0,0,28,48498,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform - Valiance Keep Footman Spectator'''),
(60325100,9,4,0,0,0,100,0,0,0,0,0,0,28,62550,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Maiden of Ashwood Lake Transform'''),
(60325100,9,5,0,0,0,100,0,0,0,0,0,0,28,34317,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform Malukaz'''),
(60325100,9,6,0,0,0,100,0,0,0,0,0,0,28,29488,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Night Mistress Transform'''),
(60325100,9,7,0,0,0,100,0,0,0,0,0,0,28,31310,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Landen Stilwell Transform'''),
(60325100,9,8,0,0,0,100,0,0,0,0,0,0,28,20514,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Ruul Snowhoof Shapechange (DND)'''),

(60325101,9,0,0,0,0,100,0,0,0,0,0,0,28,43911,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Goblin'''),
(60325101,9,1,0,0,0,100,0,0,0,0,0,0,28,39158,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Evergrove Druid Transform Druid'''),
(60325101,9,2,0,0,0,100,0,0,0,0,0,0,28,48498,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform - Valiance Keep Footman Spectator'''),
(60325101,9,3,0,0,0,100,0,0,0,0,0,0,28,62550,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Maiden of Ashwood Lake Transform'''),
(60325101,9,4,0,0,0,100,0,0,0,0,0,0,28,34317,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform Malukaz'''),
(60325101,9,5,0,0,0,100,0,0,0,0,0,0,28,29488,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Night Mistress Transform'''),
(60325101,9,6,0,0,0,100,0,0,0,0,0,0,28,31310,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Landen Stilwell Transform'''),
(60325101,9,7,0,0,0,100,0,0,0,0,0,0,28,20514,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Ruul Snowhoof Shapechange (DND)'''),
(60325101,9,8,0,0,0,100,0,0,0,0,0,0,75,43909,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Add Aura ''Brewfest Reveler - Dwarf'''),

(60325102,9,0,0,0,0,100,0,0,0,0,0,0,28,43909,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Dwarf'''),
(60325102,9,1,0,0,0,100,0,0,0,0,0,0,28,39158,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Evergrove Druid Transform Druid'''),
(60325102,9,2,0,0,0,100,0,0,0,0,0,0,28,48498,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform - Valiance Keep Footman Spectator'''),
(60325102,9,3,0,0,0,100,0,0,0,0,0,0,28,62550,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Maiden of Ashwood Lake Transform'''),
(60325102,9,4,0,0,0,100,0,0,0,0,0,0,28,34317,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform Malukaz'''),
(60325102,9,5,0,0,0,100,0,0,0,0,0,0,28,29488,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Night Mistress Transform'''),
(60325102,9,6,0,0,0,100,0,0,0,0,0,0,28,31310,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Landen Stilwell Transform'''),
(60325102,9,7,0,0,0,100,0,0,0,0,0,0,28,20514,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Ruul Snowhoof Shapechange (DND)'''),
(60325102,9,8,0,0,0,100,0,0,0,0,0,0,75,43911,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Add Aura ''Brewfest Reveler - Goblin'''),

(60325103,9,0,0,0,0,100,0,0,0,0,0,0,28,43909,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Dwarf'''),
(60325103,9,1,0,0,0,100,0,0,0,0,0,0,28,43911,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Goblin'''),
(60325103,9,2,0,0,0,100,0,0,0,0,0,0,28,48498,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform - Valiance Keep Footman Spectator'''),
(60325103,9,3,0,0,0,100,0,0,0,0,0,0,28,62550,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Maiden of Ashwood Lake Transform'''),
(60325103,9,4,0,0,0,100,0,0,0,0,0,0,28,34317,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform Malukaz'''),
(60325103,9,5,0,0,0,100,0,0,0,0,0,0,28,29488,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Night Mistress Transform'''),
(60325103,9,6,0,0,0,100,0,0,0,0,0,0,28,31310,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Landen Stilwell Transform'''),
(60325103,9,7,0,0,0,100,0,0,0,0,0,0,28,20514,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Ruul Snowhoof Shapechange (DND)'''),
(60325103,9,8,0,0,0,100,0,0,0,0,0,0,75,39158,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Add Aura ''Evergrove Druid Transform Druid'''),

(60325104,9,0,0,0,0,100,0,0,0,0,0,0,28,43909,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Dwarf'''),
(60325104,9,1,0,0,0,100,0,0,0,0,0,0,28,43911,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Goblin'''),
(60325104,9,2,0,0,0,100,0,0,0,0,0,0,28,39158,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Evergrove Druid Transform Druid'''),
(60325104,9,3,0,0,0,100,0,0,0,0,0,0,28,62550,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Maiden of Ashwood Lake Transform'''),
(60325104,9,4,0,0,0,100,0,0,0,0,0,0,28,34317,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform Malukaz'''),
(60325104,9,5,0,0,0,100,0,0,0,0,0,0,28,29488,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Night Mistress Transform'''),
(60325104,9,6,0,0,0,100,0,0,0,0,0,0,28,31310,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Landen Stilwell Transform'''),
(60325104,9,7,0,0,0,100,0,0,0,0,0,0,28,20514,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Ruul Snowhoof Shapechange (DND)'''),
(60325104,9,8,0,0,0,100,0,0,0,0,0,0,75,48498,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Add Aura ''Transform - Valiance Keep Footman Spectator'''),

(60325105,9,0,0,0,0,100,0,0,0,0,0,0,28,43909,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Dwarf'''),
(60325105,9,1,0,0,0,100,0,0,0,0,0,0,28,43911,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Goblin'''),
(60325105,9,2,0,0,0,100,0,0,0,0,0,0,28,39158,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Evergrove Druid Transform Druid'''),
(60325105,9,3,0,0,0,100,0,0,0,0,0,0,28,48498,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform - Valiance Keep Footman Spectator'''),
(60325105,9,4,0,0,0,100,0,0,0,0,0,0,28,34317,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform Malukaz'''),
(60325105,9,5,0,0,0,100,0,0,0,0,0,0,28,29488,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Night Mistress Transform'''),
(60325105,9,6,0,0,0,100,0,0,0,0,0,0,28,31310,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Landen Stilwell Transform'''),
(60325105,9,7,0,0,0,100,0,0,0,0,0,0,28,20514,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Ruul Snowhoof Shapechange (DND)'''),
(60325105,9,8,0,0,0,100,0,0,0,0,0,0,75,62550,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Add Aura ''Maiden of Ashwood Lake Transform'''),

(60325106,9,0,0,0,0,100,0,0,0,0,0,0,28,43909,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Dwarf'''),
(60325106,9,1,0,0,0,100,0,0,0,0,0,0,28,43911,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Goblin'''),
(60325106,9,2,0,0,0,100,0,0,0,0,0,0,28,39158,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Evergrove Druid Transform Druid'''),
(60325106,9,3,0,0,0,100,0,0,0,0,0,0,28,48498,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform - Valiance Keep Footman Spectator'''),
(60325106,9,4,0,0,0,100,0,0,0,0,0,0,28,62550,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Maiden of Ashwood Lake Transform'''),
(60325106,9,5,0,0,0,100,0,0,0,0,0,0,28,29488,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Night Mistress Transform'''),
(60325106,9,6,0,0,0,100,0,0,0,0,0,0,28,31310,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Landen Stilwell Transform'''),
(60325106,9,7,0,0,0,100,0,0,0,0,0,0,28,20514,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Ruul Snowhoof Shapechange (DND)'''),
(60325106,9,8,0,0,0,100,0,0,0,0,0,0,75,34317,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Add Aura ''Transform Malukaz'''),

(60325107,9,0,0,0,0,100,0,0,0,0,0,0,28,43909,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Dwarf'''),
(60325107,9,1,0,0,0,100,0,0,0,0,0,0,28,43911,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Goblin'''),
(60325107,9,2,0,0,0,100,0,0,0,0,0,0,28,39158,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Evergrove Druid Transform Druid'''),
(60325107,9,3,0,0,0,100,0,0,0,0,0,0,28,48498,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform - Valiance Keep Footman Spectator'''),
(60325107,9,4,0,0,0,100,0,0,0,0,0,0,28,62550,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Maiden of Ashwood Lake Transform'''),
(60325107,9,5,0,0,0,100,0,0,0,0,0,0,28,34317,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform Malukaz'''),
(60325107,9,6,0,0,0,100,0,0,0,0,0,0,28,31310,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Landen Stilwell Transform'''),
(60325107,9,7,0,0,0,100,0,0,0,0,0,0,28,20514,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Ruul Snowhoof Shapechange (DND)'''),
(60325107,9,8,0,0,0,100,0,0,0,0,0,0,75,29488,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Add Aura ''Night Mistress Transform'''),

(60325108,9,0,0,0,0,100,0,0,0,0,0,0,28,43909,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Dwarf'''),
(60325108,9,1,0,0,0,100,0,0,0,0,0,0,28,43911,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Goblin'''),
(60325108,9,2,0,0,0,100,0,0,0,0,0,0,28,39158,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Evergrove Druid Transform Druid'''),
(60325108,9,3,0,0,0,100,0,0,0,0,0,0,28,48498,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform - Valiance Keep Footman Spectator'''),
(60325108,9,4,0,0,0,100,0,0,0,0,0,0,28,62550,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Maiden of Ashwood Lake Transform'''),
(60325108,9,5,0,0,0,100,0,0,0,0,0,0,28,34317,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform Malukaz'''),
(60325108,9,6,0,0,0,100,0,0,0,0,0,0,28,29488,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Night Mistress Transform'''),
(60325108,9,7,0,0,0,100,0,0,0,0,0,0,28,20514,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Ruul Snowhoof Shapechange (DND)'''),
(60325108,9,8,0,0,0,100,0,0,0,0,0,0,75,31310,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Add Aura ''Landen Stilwell Transform'''),

(60325109,9,0,0,0,0,100,0,0,0,0,0,0,28,43909,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Dwarf'''),
(60325109,9,1,0,0,0,100,0,0,0,0,0,0,28,43911,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Brewfest Reveler - Goblin'''),
(60325109,9,2,0,0,0,100,0,0,0,0,0,0,28,39158,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Evergrove Druid Transform Druid'''),
(60325109,9,3,0,0,0,100,0,0,0,0,0,0,28,48498,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform - Valiance Keep Footman Spectator'''),
(60325109,9,4,0,0,0,100,0,0,0,0,0,0,28,62550,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Maiden of Ashwood Lake Transform'''),
(60325109,9,5,0,0,0,100,0,0,0,0,0,0,28,34317,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Transform Malukaz'''),
(60325109,9,6,0,0,0,100,0,0,0,0,0,0,28,29488,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Night Mistress Transform'''),
(60325109,9,7,0,0,0,100,0,0,0,0,0,0,28,31310,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Remove Aura ''Landen Stilwell Transform'''),
(60325109,9,8,0,0,0,100,0,0,0,0,0,0,75,20514,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Wraith of Transformation - On Script - Add Aura ''Ruul Snowhoof Shapechange (DND)'''),

(60325110,9,0,0,0,0,100,0,0,0,0,0,0,5,1,0,0,0,0,0,10,5000047,55003,0,0,0,0,0,0,'Wraith of Transformation - On Script - Play Emote ''ONESHOT_TALK(DNR)'' (Eron Glowpride)'),

(60325111,9,0,0,0,0,100,0,0,0,0,0,0,5,1,0,0,0,0,0,10,5000046,190010,0,0,0,0,0,0,'Wraith of Transformation - On Script - Play Emote ''ONESHOT_TALK(DNR)'' (Warpweaver)'),

(60325112,9,0,0,0,0,100,0,0,0,0,0,0,5,6,0,0,0,0,0,10,5000047,55003,0,0,0,0,0,0,'Wraith of Transformation - On Script - Play Emote ''ONESHOT_QUESTION'' (Eron Glowpride)');

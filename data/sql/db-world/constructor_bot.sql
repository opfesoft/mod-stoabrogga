UPDATE `creature_template` SET `gossip_menu_id` = 53256, `npcflag` = 1 WHERE `entry` = 34031;
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 53256;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`)
VALUES
(53256,0,0,'I''d like to build a siege engine.',31061,1,1,0,0,0,0,'',0),
(53256,1,0,'I need a horse.',38635,1,1,0,0,0,0,'',0);

DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` = 34031 AND `id` > 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(34031,0,1,3,62,0,100,0,53256,0,0,0,0,12,33060,8,0,0,0,0,1,0,0,0,0,0,0,0,0,'XS-001 Constructor Bot - On Gossip Select 0 - Summon Creature ''Salvaged Siege Engine'''),
(34031,0,2,3,62,0,100,0,53256,1,0,0,0,12,33062,8,0,0,0,0,1,0,0,0,0,0,0,0,0,'XS-001 Constructor Bot - On Gossip Select 1 - Summon Creature ''Salvaged Chopper'''),
(34031,0,3,4,61,0,100,0,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'XS-001 Constructor Bot - Linked - Close Gossip'),
(34031,0,4,0,61,0,100,0,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'XS-001 Constructor Bot - Linked - Force Despawn');

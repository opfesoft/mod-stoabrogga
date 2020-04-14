-- Disable holiday events
UPDATE `game_event` SET `start_time` = '2000-01-01 08:00:00', `end_time` = '2000-01-01 08:00:00' WHERE `eventEntry` IN
(1,2,7,8,9,11,12,24,26,34,35,36,37,38,39,40,41,42,43,44,45,52,70);


-- Borelgore: Set active, elite and more health / damage
UPDATE `creature_template` SET `rank` = 1, `DamageModifier` = 4, `HealthModifier` = 8 WHERE `entry` = 11896;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 11896 AND `source_type` = 0 AND `id` = 2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(11896,0,2,0,11,0,100,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Borelgore - On Respawn - Set Active On');

-- Duskwing: Set active, elite and more health / damage
UPDATE `creature_template` SET `rank` = 1, `DamageModifier` = 4, `HealthModifier` = 3 WHERE `entry` = 11897;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 11897 AND `source_type` = 0 AND `id` = 2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(11897,0,2,0,11,0,100,0,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duskwing - On Respawn - Set Active On');

-- Fulgorge: More health / damage
UPDATE `creature_template` SET `DamageModifier` = 4, `HealthModifier` = 8 WHERE `entry` = 18678;

-- Borelgore, Duskwing, Fulgorge: Set large
UPDATE `creature_addon` SET `isLarge` = 1 WHERE `guid` IN (151913,151914,151933,53169,92847);

-- Increase drop chance for "Shoveltusk Ligament" to 35% to make the quest "Parts for the Job" less cumbersome
UPDATE `creature_loot_template` SET `Chance` = 35 WHERE `Item` = 33611;

-- Set Party Loot for "Searing Tongue" and "Searing Heart" to make the quest "Identifying the Brood" less cumbersome for groups
UPDATE `item_template` SET `flags` = `flags` | 2048 WHERE `entry` IN (5840,5841);

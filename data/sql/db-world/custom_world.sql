-- Disable holiday events
UPDATE `game_event` SET `start_time` = '2000-01-01 08:00:00', `end_time` = '2000-01-01 08:00:00' WHERE `eventEntry` IN
(1,2,7,8,9,11,12,24,26,34,35,36,37,38,39,40,41,42,43,44,45,52,70);

-- Use custom spell scripts for the mounts which did originally scale with the riding skill
-- (this will cause errors in the server log because the old scripts are not assigned anymore)
UPDATE `spell_script_names` SET `ScriptName` = 'spell_stoabrogga_big_blizzard_bear' WHERE `ScriptName` = 'spell_big_blizzard_bear';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_stoabrogga_magic_broom' WHERE `ScriptName` = 'spell_magic_broom';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_stoabrogga_headless_horseman_mount' WHERE `ScriptName` = 'spell_headless_horseman_mount';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_stoabrogga_winged_steed_of_the_ebon_blade' WHERE `ScriptName` = 'spell_winged_steed_of_the_ebon_blade';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_stoabrogga_big_love_rocket' WHERE `ScriptName` = 'spell_big_love_rocket';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_stoabrogga_invincible' WHERE `ScriptName` = 'spell_invincible';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_stoabrogga_blazing_hippogryph' WHERE `ScriptName` = 'spell_blazing_hippogryph';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_stoabrogga_celestial_steed' WHERE `ScriptName` = 'spell_celestial_steed';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_stoabrogga_x53_touring_rocket' WHERE `ScriptName` = 'spell_x53_touring_rocket';


-- Relocate Ur'kyo
UPDATE `creature` SET `position_x` = 1457.79, `position_y` = -4184.93, `position_z` = 44.3414, `orientation` = 1.11394 WHERE `guid` = 3472;

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

-- Increase drop chance for "Shoveltusk Ligament" to 35% to make the quest "Parts for the Job" less cumbersome
UPDATE `creature_loot_template` SET `Chance` = 35 WHERE `Item` = 33611;

-- Set Party Loot for "Searing Tongue" and "Searing Heart" to make the quest "Identifying the Brood" less cumbersome for groups
UPDATE `item_template` SET `flags` = `flags` | 2048 WHERE `entry` IN (5840,5841);

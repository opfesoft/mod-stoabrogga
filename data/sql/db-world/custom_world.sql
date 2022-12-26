-- Disable holiday events
UPDATE `game_event` SET `start_time` = '2000-01-01 08:00:00', `end_time` = '2000-01-01 08:00:00' WHERE `eventEntry` IN
(1,2,6,7,8,9,11,12,24,26,33,34,35,36,37,38,39,40,41,42,43,44,45,50,51,52,70);
UPDATE `game_event` SET `holiday` = 0, `holidayStage` = 0;

-- Remove all holiday events from the client calendar
DELETE FROM `holiday_dates`;
INSERT INTO `holiday_dates` (`id`, `date_id`, `date_value`, `holiday_duration`)
VALUES
(62,0,512,0),
(141,0,512,0),
(181,0,512,0),
(201,0,512,0),
(283,0,512,0),
(284,0,512,0),
(285,0,512,0),
(301,0,512,0),
(321,0,512,0),
(324,0,512,0),
(327,0,512,0),
(335,0,512,0),
(341,0,512,0),
(353,0,512,0),
(372,0,512,0),
(374,0,512,0),
(375,0,512,0),
(376,0,512,0),
(398,0,512,0),
(400,0,512,0),
(404,0,512,0),
(406,0,512,0),
(409,0,512,0),
(420,0,512,0),
(423,0,512,0),
(424,0,512,0);

-- Custom date and occurence for Darkmoon Faire & Children's Week
UPDATE `game_event` SET `start_time` = '2021-07-30 00:01:00', `occurence` = 60480, `length` = 2880 WHERE `eventEntry` = 77; -- Darkmoon Faire Building (Terokkar Forest)
UPDATE `game_event` SET `start_time` = '2021-08-01 00:01:00', `occurence` = 60480, `length` = 10080 WHERE `eventEntry` = 3; -- Darkmoon Faire (Terokkar Forest)

UPDATE `game_event` SET `start_time` = '2021-08-13 00:01:00', `occurence` = 60480, `length` = 2880 WHERE `eventEntry` = 23; -- Darkmoon Faire Building (Elwynn Forest)
UPDATE `game_event` SET `start_time` = '2021-08-15 00:01:00', `occurence` = 60480, `length` = 10080 WHERE `eventEntry` = 4; -- Darkmoon Faire (Elwynn Forest)

UPDATE `game_event` SET `start_time` = '2021-08-27 00:01:00', `occurence` = 60480, `length` = 2880 WHERE `eventEntry` = 71; -- Darkmoon Faire Building (Mulgore)
UPDATE `game_event` SET `start_time` = '2021-08-29 00:01:00', `occurence` = 60480, `length` = 10080 WHERE `eventEntry` = 5; -- Darkmoon Faire (Mulgore)

UPDATE `game_event` SET `start_time` = '2021-08-08 00:01:00', `occurence` = 60480 WHERE `eventEntry` = 10; -- Children's Week

-- Remove holiday restrictions from Orphan Whistles (those are checked by the client, the spells themselves are checked by the server via conditions)
UPDATE `item_template` SET `HolidayId` = 0 WHERE `entry` IN (18597,18598,31880,31881,46396,46397);

-- Play L70ETC event in Shattrath (World's End Tavern) every hour instead of every 3 hours
UPDATE `game_event` SET `occurence` = 60 WHERE `eventEntry` IN (46,47);

-- Disable Silithus Outdoor PvP
UPDATE `gameobject_template_addon` SET `flags` = `flags` | 16 WHERE `entry` = 181598;
DELETE FROM `disables` WHERE `sourceType` = 5 AND `entry` = 5;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`)
VALUES
(5,5,0,'','','Disable Silithus Outdoor PvP');

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


-- Troll Roof Stalker: Use "Uber Stealth" instead of "Stealth" to prevent the annoying sound in the auction house when they get visible
DELETE FROM `smart_scripts` WHERE `entryorguid` = 23090 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(23090,0,0,1,25,0,100,0,0,0,0,0,0,75,18950,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Troll Roof Stalker - On Reset - Add Aura ''Invisibility and Stealth Detection'''),
(23090,0,1,0,61,0,100,0,0,0,0,0,0,75,10032,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Troll Roof Stalker - Linked - Add Aura ''Uber Stealth''');

-- Relocate Ur'kyo
UPDATE `creature` SET `position_x` = 1457.79, `position_y` = -4184.93, `position_z` = 44.3414, `orientation` = 1.11394 WHERE `guid` = 3472;

-- Borelgore: Set elite and more health / damage
UPDATE `creature_template` SET `rank` = 1, `DamageModifier` = 4, `HealthModifier` = 8 WHERE `entry` = 11896;

-- Duskwing: Set elite and more health / damage
UPDATE `creature_template` SET `rank` = 1, `DamageModifier` = 4, `HealthModifier` = 3 WHERE `entry` = 11897;

-- Fulgorge: More health / damage
UPDATE `creature_template` SET `DamageModifier` = 4, `HealthModifier` = 8 WHERE `entry` = 18678;

-- Restore hostility of the starting zones
UPDATE `creature_template` SET `faction` = 17 WHERE `entry` IN (38,103);
UPDATE `creature_template` SET `faction` = 26, `flags_extra` = `flags_extra` & ~2 WHERE `entry` = 80;
UPDATE `creature_template` SET `faction` = 107 WHERE `entry` IN (706,946);
UPDATE `creature_template` SET `faction` = 37 WHERE `entry` = 808;
UPDATE `creature_template` SET `faction` = 22 WHERE `entry` IN (1505,1688,1986,1994);
UPDATE `creature_template` SET `faction` = 67 WHERE `entry` IN (1506,1507,1667);
UPDATE `creature_template` SET `faction` = 111 WHERE `entry` IN (2952,2953,2954);
UPDATE `creature_template` SET `faction` = 14 WHERE `entry` IN (2966,3101,3102,3229,8554,15367,16517,16537);
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` IN (3183,15271,15273,15294,15298,16521,16522);

-- Tinkerbell: Run away when L70ETC event starts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 18762;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` = 18762;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(18762,0,0,1,68,0,100,0,47,0,0,0,0,239,300000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tinkerbell - On Game Event 47 Started - Stop WP Movement'),
(18762,0,1,0,61,0,100,0,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-1717.8,5146.03,-35.6479,0,'Tinkerbell - Linked - Move To Position');

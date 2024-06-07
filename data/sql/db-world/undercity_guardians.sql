-- Replace all Kor'kron Overseers in Undercity with Undercity Guardians

-- Remove obsolete Kor'kron Overseer spawns
DELETE FROM `creature` WHERE `guid` IN (79264,79265,79266,79267);

-- Add SAI for Undercity Guardian
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 5624;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 5624 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(5624,0,0,0,4,0,100,0,0,0,0,0,0,11,59395,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Undercity Guardian - On Aggro - Cast Spell ''Abomination Hook'''),
(5624,0,1,0,0,0,100,0,5000,9000,14000,15000,0,11,40505,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Undercity Guardian - IC - Cast Spell ''Cleave'''),
(5624,0,2,0,12,0,100,0,0,20,35000,35000,0,11,56426,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Undercity Guardian - Target Health Below 20% - Cast Spell ''Execute''');

-- Add "Disease Cloud" aura to Undercity Guardian
DELETE FROM `creature_template_addon` WHERE `entry` = 5624;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `addonFlags`, `auras`)
VALUES
(5624,0,0,0,0,0,0,'12187');

-- Remove obsolete creature addons and add new ones for the patrolling Undercity Guardians
DELETE FROM `creature_addon` WHERE `guid` IN (
17669, 28481, 28485, 28486, 28487, 28488, 28489, 28490, 33823, 33831, 34102, 34103, 34104, 34105, 34106, 38296,
38297, 38298, 38299, 38301, 38302, 38305, 39019, 39020, 39022, 39023, 39024, 39025, 39026, 41884, 41887, 41888,
41889, 41890, 41891, 41892, 41956, 41960, 41961, 41964, 79264, 79265, 79266, 79267);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `addonFlags`, `auras`)
VALUES
(34103,341030,0,0,0,0,0,'12187'),
(34104,341040,0,0,0,0,0,'12187'),
(38297,382970,0,0,0,0,0,'12187');

-- Replace creature ids of the Kor'kron Overseers with Undercity Guardian and remove equipment ID
UPDATE `creature` SET `id` = 5624, `equipment_id` = 0 WHERE `guid` IN (
17669, 28481, 28485, 28486, 28487, 28488, 28489, 28490, 33823, 33831, 34102, 34103, 34104, 34105, 34106, 38296,
38297, 38298, 38299, 38301, 38302, 38305, 39019, 39020, 39022, 39023, 39024, 39025, 39026, 41884, 41887, 41888,
41889, 41890, 41891, 41892, 41956, 41960, 41961, 41964, 79264, 79265, 79266, 79267);

-- Add appropriate gossip options (directions) for the Undercity Guardians
DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (2849,2848,2847);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`)
VALUES
(2849,0,0,'The auction house',5515,1,1,2827,318,0,0,'',0),
(2849,1,0,'The bank',7066,1,1,2822,319,0,0,'',0),
(2849,2,0,'Barber',45376,1,1,10020,320,0,0,'',0),
(2849,3,0,'The bat handler',6790,1,1,2823,321,0,0,'',0),
(2849,4,0,'The battlemaster',10359,1,1,8225,322,0,0,'',0),
(2849,5,0,'The guild master',2870,1,1,2824,323,0,0,'',0),
(2849,6,0,'The inn',7075,1,1,2825,324,0,0,'',0),
(2849,7,0,'Locksmith',33141,1,1,10261,325,0,0,'',0),
(2849,8,0,'The mailbox',4895,1,1,2826,326,0,0,'',0),
(2849,9,0,'The stable master',8521,1,1,4906,327,0,0,'',0),
(2849,10,0,'The weapon master',7253,1,1,3726,328,0,0,'',0),
(2849,11,0,'The zeppelin master',5518,1,1,2828,329,0,0,'',0),
(2849,12,0,'A class trainer',6792,1,1,2848,0,0,0,'',0),
(2849,13,0,'A profession trainer',6793,1,1,2847,0,0,0,'',0),

(2848,0,0,'Mage',45404,1,1,2821,331,0,0,'',0),
(2848,1,0,'Paladin',48028,1,1,8165,330,0,0,'',0),
(2848,2,0,'Priest',45405,1,1,2829,332,0,0,'',0),
(2848,3,0,'Rogue',45406,1,1,2830,333,0,0,'',0),
(2848,4,0,'Warlock',45407,1,1,2832,334,0,0,'',0),
(2848,5,0,'Warrior',45408,1,1,2833,335,0,0,'',0),

(2847,0,0,'Alchemy',52058,1,1,2834,336,0,0,'',0),
(2847,1,0,'Blacksmithing',51346,1,1,2835,337,0,0,'',0),
(2847,2,0,'Cooking',45763,1,1,2836,338,0,0,'',0),
(2847,3,0,'Enchanting',52063,1,1,2837,339,0,0,'',0),
(2847,4,0,'Engineering',51347,1,1,2838,340,0,0,'',0),
(2847,5,0,'First Aid',52066,1,1,2839,341,0,0,'',0),
(2847,6,0,'Fishing',45767,1,1,2840,342,0,0,'',0),
(2847,7,0,'Herbalism',45768,1,1,2841,343,0,0,'',0),
(2847,8,0,'Inscription',48811,1,1,10019,344,0,0,'',0),
(2847,9,0,'Leatherworking',52071,1,1,2842,345,0,0,'',0),
(2847,10,0,'Mining',51348,1,1,2843,347,0,0,'',0),
(2847,11,0,'Skinning',52076,1,1,2844,346,0,0,'',0),
(2847,12,0,'Tailoring',52077,1,1,2845,348,0,0,'',0);

-- Overseer Kraggosh: Remove spawn
DELETE FROM `creature` WHERE `guid` = 79263;

-- Master Apothecary Faranell: Remove SAI which was used to interact with Overseer Kraggosh
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2055 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 205500 AND `source_type` = 9;
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 2055;

-- Master Apothecary Faranell: Remove gossip text mentioning the Wrathgate event
UPDATE `creature_template` SET `gossip_menu_id` = 0 WHERE `entry` = 2055;

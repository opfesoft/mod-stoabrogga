-- Additional Mailboxes for the starting areas
DELETE FROM `gameobject` WHERE `guid` BETWEEN 5000000 AND 5000008;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`)
VALUES
-- Horde
(5000000,143981,1,0,0,1,1,-598.06,-4200.78,39.6566,4.79167,0,0,0,0,900,100,1,'',0),     -- Valley of Trials
(5000001,143981,1,0,0,1,1,-841.123,-4929.18,20.9899,1.40661,0,0,0,0,900,100,1,'',0),    -- Sen'jin Village
(5000002,143981,0,0,0,1,1,1863.97,1579.95,93.4256,1.61573,0,0,0,0,900,100,1,'',0),      -- Deathknell
(5000003,182359,530,0,0,1,1,10338.3,-6377.55,35.649,2.15799,0,0,0,0,900,100,1,'',0),    -- Sunstrider Isle
(5000004,143981,1,0,0,1,1,-2886.35,-227.139,53.916,4.02186,0,0,0,0,900,100,1,'',0),     -- Camp Narache
-- Alliance
(5000005,142075,0,0,0,1,1,-8919.96,-137.469,80.5703,1.76827,0,0,0,0,900,100,1,'',0),    -- Northshire Valley
(5000006,142102,0,0,0,1,1,-6168.8,374.708,399.054,3.00523,0,0,0,0,900,100,1,'',0),      -- Coldridge Valley
(5000007,142109,1,0,0,1,1,10400.3,742.631,1319.48,3.84052,0,0,0,0,900,100,1,'',0),      -- Aldrassil
(5000008,182948,530,0,0,1,1,-4049.36,-13780.1,75.0718,0.051054,0,0,0,0,900,100,1,'',0); -- Ammen Vale

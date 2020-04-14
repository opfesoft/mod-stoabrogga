-- Additional NPC locations
DELETE FROM `creature` WHERE `id` IN (190010,601026,55003,601072,603251);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`)
VALUES
(5000000,190010,571,0,0,1,1,0,0,5838,453,658.834,3.7,300,0,0,12600,0,0,0,0,0,'',0),               -- Transmog       Dalaran
(5000001,190010,1,0,0,1,1,0,0,1669.2,-4368.76,28.1428,3.52643,300,0,0,12600,0,0,0,0,0,'',0),      -- Transmog       Orgrimmar
(5000002,190010,0,0,0,1,1,0,0,-8845.91,553.62,96.4933,5.9064,300,0,0,12600,0,0,0,0,0,'',0),       -- Transmog       Stormwind
(5000003,601026,571,0,0,1,1,0,0,5838.55,448.221,658.782,2.99434,300,0,0,5342,0,0,0,0,0,'',0),     -- Beastmaster    Dalaran
(5000004,601026,1,0,0,1,1,0,0,1670.6,-4372,27.8165,3.47851,300,0,0,5342,0,0,0,0,0,'',0),          -- Beastmaster    Orgrimmar
(5000005,601026,0,0,0,1,1,0,0,-8846.6,549.028,96.9992,0.433492,300,0,0,5342,0,0,0,0,0,'',0),      -- Beastmaster    Stormwind
(5000006,601026,0,0,0,1,1,0,0,2250.2,234.049,34.2606,2.24545,300,0,0,5342,0,0,0,0,0,'',0),        -- Beastmaster    Brill
(5000007,190010,0,0,0,1,1,0,0,2256.08,250.193,33.6338,5.12932,300,0,0,12600,0,0,0,0,0,'',0),      -- Transmog       Brill
(5000008,55003,571,0,0,1,1,0,0,5837.76,456.535,658.781,3.63963,300,0,0,12600,0,0,0,0,0,'',0),     -- WeaponVisual   Dalaran
(5000009,55003,1,0,0,1,1,0,0,1674.6,-4372.49,28.2316,3.49341,300,0,0,12600,0,0,0,0,0,'',0),       -- WeaponVisual   Orgrimmar
(5000010,55003,0,0,0,1,1,0,0,-8842.87,554.503,96.2329,4.66398,300,0,0,12600,0,0,0,0,0,'',0),      -- WeaponVisual   Stormwind
(5000011,55003,0,0,0,1,1,0,0,2263.28,249.041,33.634,3.42215,300,0,0,12600,0,0,0,0,0,'',0),        -- WeaponVisual   Brill
(5000012,190010,530,0,0,1,1,0,0,-1875.34,5315.44,-12.4273,6.27691,300,0,0,12600,0,0,0,0,0,'',0),  -- Transmog       Shattrath
(5000013,601026,530,0,0,1,1,0,0,-1877.68,5319.3,-12.4273,0.123315,300,0,0,5342,0,0,0,0,0,'',0),   -- Beastmaster    Shattrath
(5000014,55003,530,0,0,1,1,0,0,-1876.54,5312.69,-12.4273,5.50914,300,0,0,12600,0,0,0,0,0,'',0),   -- WeaponVisual   Shattrath
(5000015,601026,1,0,0,1,1,0,0,9959.18,2506.7,1318.22,5.82786,300,0,0,5342,0,0,0,0,0,'',0),        -- Beastmaster    Darnassus
(5000016,190010,1,0,0,1,1,0,0,9958.57,2504.23,1317.94,5.86713,300,0,0,12600,0,0,0,0,0,'',0),      -- Transmog       Darnassus
(5000017,55003,1,0,0,1,1,0,0,9957.06,2502.25,1317.84,5.76503,300,0,0,12600,0,0,0,0,0,'',0),       -- WeaponVisual   Darnassus
(5000018,601072,0,0,0,1,1,0,0,2246.13,234.872,34.2605,0.644262,300,0,0,10000,0,0,0,0,0,'',0),     -- MorphSummon    Brill
(5000019,601072,530,0,0,1,1,0,0,-1879.29,5312.26,-12.428,4.62271,300,0,0,10000,0,0,0,0,0,'',0),   -- MorphSummon    Shattrath
(5000020,601072,571,0,0,1,1,0,0,5836.5,459.236,658.78,3.71738,300,0,0,10000,0,0,0,0,0,'',0),      -- MorphSummon    Dalaran
(5000021,601072,1,0,0,1,1,0,0,1670.56,-4375.32,26.6684,3.39916,300,0,0,10000,0,0,0,0,0,'',0),     -- MorphSummon    Orgrimmar
(5000022,601072,0,0,0,1,1,0,0,-8846.42,551.549,96.75,0.00902176,300,0,0,10000,0,0,0,0,0,'',0),    -- MorphSummon    Stormwind
(5000023,601072,1,0,0,1,1,0,0,9960.51,2509.04,1318.36,6.16293,300,0,0,10000,0,0,0,0,0,'',0),      -- MorphSummon    Darnassus
(5000024,603251,0,0,0,1,1,0,0,2250.97,254.382,34.2605,5.35814,300,0,0,10000,0,0,0,0,0,'',0),      -- Transformation Brill
(5000025,603251,530,0,0,1,1,0,0,-1891.25,5309.91,-12.428,5.71216,300,0,0,10000,0,0,0,0,0,'',0),   -- Transformation Shattrath
(5000026,603251,571,0,0,1,1,0,0,5837.73,444.618,658.782,2.94375,300,0,0,10000,0,0,0,0,0,'',0),    -- Transformation Dalaran
(5000027,603251,1,0,0,1,1,0,0,1673.61,-4368.81,29.2258,3.78008,300,0,0,10000,0,0,0,0,0,'',0),     -- Transformation Orgrimmar
(5000028,603251,0,0,0,1,1,0,0,-8836.07,560.895,95.1554,5.87985,300,0,0,10000,0,0,0,0,0,'',0),     -- Transformation Stormwind
(5000029,603251,1,0,0,1,1,0,0,9949.91,2498.01,1317.74,4.85919,300,0,0,10000,0,0,0,0,0,'',0);      -- Transformation Darnassus
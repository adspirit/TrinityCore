-- 
-- duplicates removed
DELETE FROM `gameobject` WHERE `guid` IN (66336,66508,66521,66350,66491,66320,66337,66509,66484,66314,66327,66499,66505,66333);

-- Phase: 1+4+64+128
-- UPDATE `gameobject` SET `phaseMask` = 197 WHERE `guid` IN (66021,66039,65983,66023,65971,66006,66016);
-- master: visible all the time
UPDATE `gameobject` SET `phaseUseFlags`=1 WHERE `guid` IN (66021,66039,65983,66023,65971,66006,66016);

-- Duplicates
DELETE FROM `creature` WHERE `guid` IN (129218,129219);
DELETE FROM `creature_addon` WHERE `guid` IN (129218,129219);

-- master: visible all the time
DELETE FROM `gameobject` WHERE `guid` IN (1484,1493); 
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(1484,191206,0, '0', 1, 0, 2460.06, -5593.7, 367.394, 0.556369, 0, 0, 0.27461, 0.961556, 180,255,1),
(1493,191206,609, '0', 1, 0, 2460.06, -5593.7, 367.394, 0.556369, 0, 0, 0.27461, 0.961556, 180,255, 1);

UPDATE `creature` SET `phaseUseFlags`=1 WHERE `guid` IN (128753,128754);
UPDATE `creature` SET `PhaseId` = 177 WHERE `guid` IN (130470,130468,130469,130503,130474,130501,130475,130502,130471,130472,130504,130480,130473,130479,130481);
-- master: gameobjects moved to DB2: 66620
-- master: visible all the time
UPDATE `gameobject` SET `phaseUseFlags`=1 WHERE `guid` IN (66486,151237, 151235,/*66620,*/65897,65899,66235,66389,66385,65882,66393,65884,66401,66397,65886);

DELETE FROM `gameobject` WHERE `guid`=66435 AND `id`=190790;
-- master: gameobjects moved to DB2: 66292, 66352, 66353, 66356, 66359, 66360, 66362, 66365, 66374
UPDATE `gameobject` SET `PhaseId`=378 WHERE `guid`=66258;
UPDATE `gameobject` SET `phaseUseFlags`=1 = 449 WHERE `guid` IN (63178,66476,63179,63192,63191,63177,66392,63185,63183,63184,151236,151238);
-- master: add missing gobjects from 335 63181,66396
DELETE FROM `gameobject` WHERE `guid` IN (63181, 66396);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnDifficulties`, `phaseUseFlags`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES
(63181, 191504, 0, '0', 1, 2466.24, -5659.79, 420.589, 2.46964, 0, 0, 0.944089, 0.329691, 180, 100, 0, '', 0),
(66396, 191505, 0, '0', 1, 2453.4, -5659.12, 420.567, -1.67387, 0, 0, -0.742594, 0.669742, 180, 0, 1, '', 0);

-- Duplicates Removed
DELETE FROM `creature` WHERE `guid` IN (130509,130514,130520,130510,130540,130529,130492,130489,130533,130534,130541,130518,130538,130523);
DELETE FROM `creature_addon` WHERE `guid` IN (130509,130514,130520,130510,130540,130529,130492,130489,130533,130534,130541,130518,130538,130523);
DELETE FROM `gameobject` WHERE `guid` IN (66388,63190,66477,66390,66474,66386,63180,66394,63182,66402,66398,66400);
DELETE FROM `gameobject_addon` WHERE `guid` IN (66388,63190,66477,66390,66474,66386,63180,66394,63182,66402,66398,66400);

-- Terrifying Abomination
UPDATE `creature` SET `position_x` = 2404.614258, `position_y` = -5576.001953, `position_z` = 420.648224, `orientation` = 2.847471 WHERE `guid` = 130527;
UPDATE `creature` SET `position_x` = 2417.488770, `position_y` = -5587.981445, `position_z` = 420.643829, `orientation` = 4.783482 WHERE `guid` = 130526;
UPDATE `creature` SET `position_x` = 2524.172363, `position_y` = -5605.970215, `position_z` = 420.650696, `orientation` = 2.712384 WHERE `guid` = 130513;
UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `guid` IN (130532,130535,130522,130511,130508,130531,130537,130524);
UPDATE `creature` SET `spawndist` = 10, `MovementType` = 1 WHERE `guid` IN (130526,130527,130530,130521,130517,130515,130512,130505,130506,130528,130513,130516,130519,130525,130539,130507,130538,130536);

-- Duplicates
DELETE FROM `creature` WHERE `guid` IN (128590,128594);
DELETE FROM `creature_addon` WHERE `guid` IN (128590,128594);

UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1, `position_x` = 2075.854248, `position_y` = -5813.127441, `position_z` = 103.679993 WHERE `guid` = 128612;
UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `guid` IN (128608);

DELETE FROM `creature` WHERE `guid` IN (81151,81152,81153,81154,81177,81185,81194,81225,81226,81235,81264,81268,81330,81338,81342,81366,81379,81381,81386,81397,81403,81407,81418,81862,81868,84001,84189,84190,84191,84192,84193,84194,84195,84196,84197);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (28782,28768));
DELETE FROM `creature` WHERE `id` IN (28782,28768);
INSERT INTO `creature` (`guid`, `id`, `modelid`, `map`, `spawnDifficulties`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `curhealth`, `curmana`, `MovementType`) VALUES
-- Shadowy Tormentor
(81151,28769,0,609,'0',174,1902.95,-5955.07,101.263,2.27154,180,10,2533,2041,1),
(81152,28769,0,609,'0',174,1960.02,-5924.01,103.603,6.03438,180,10,2533,2041,1),
(81153,28769,0,609,'0',174,1819.11,-5951.05,115.852,0.701524,180,5,2614,2117,1),
(81154,28769,0,609,'0',174,1866.44,-5860.22,103.126,0.556227,180,10,2614,2117,1),
(81177,28769,0,609,'0',174,1885.3,-5816.69,102.541,0.261702,180,10,2533,2041,1),
(81185,28769,0,609,'0',174,1790.1,-5818.49,112.12,3.12841,180,5,2533,2041,1),
(81194,28769,0,609,'0',174,1916.17,-5840.27,100.331,6.12072,180,5,2533,2041,1),
(81225,28769,0,609,'0',174,1986.19,-5870.75,100.755,6.12072,180,5,2533,2041,1),
(81226,28769,0,609,'0',174,1956.4,-5826.27,100.899,1.71463,180,5,2614,2117,1),
(81235,28769,0,609,'0',174,2178.73,-5713.52,104.315,1.03918,180,5,2614,2117,1),
(81264,28769,0,609,'0',174,2407.38,-5870.48,104.583,0.586521,180,5,2533,2041,1),
-- Acherus Deathcharger
(81268, 28782, 0, 609, '0', 174, 2001.01, -5751.81, 100.406, 0.171432, 300, 0, 13945, 0, 2), -- a1
(81330, 28782, 0, 609, '0', 174, 2073.95, -5826.98, 102.545, 3.93079, 300, 0, 13945, 0, 2), -- a2
(81338, 28782, 0, 609, '0', 174, 2148.43, -5845.69, 101.442, 0.626997, 300, 5, 13945, 0, 1),
(81342, 28782, 0, 609, '0', 174, 2075.35, -5732.3, 100.603, 3.24235, 300, 0, 13945, 0, 2), -- a3
(81366, 28782, 0, 609, '0', 174, 2182.98, -5809.45, 101.349, 3.35844, 300, 5, 13945, 0, 1),
(81379, 28782, 0, 609, '0', 174, 2118.86, -5762.01, 98.3906, 5.44513, 300, 0, 13945, 0, 2), -- a4
(81381, 28782, 0, 609, '0', 174, 2418.68, -5861.42, 105.389, 0.918315, 300, 5, 13945, 0, 1),
(81386, 28782, 0, 609, '0', 174, 2269.36, -5881.98, 101.434, 3.32927, 300, 5, 13945, 0, 1),
(81397, 28782, 0, 609, '0', 174, 2209.41, -5781.98, 101.664, 1.30337, 300, 0, 13945, 0, 2), -- a5
(81403, 28782, 0, 609, '0', 174, 2367.25, -5862.79, 104.402, 2.97649, 300, 0, 13945, 0, 2), -- a6
(81407, 28782, 0, 609, '0', 174, 1916.27, -5804.42, 100.63, 6.15663, 300, 0, 13945, 0, 2), -- a7
(81418, 28782, 0, 609, '0', 174, 2005.31, -5803.76, 100.497, 5.81834, 300, 5, 13945, 0, 1),
(81862, 28782, 0, 609, '0', 174, 1982.02, -5838.93, 100.586, 5.944, 300, 5, 13945, 0, 1),
(81868, 28782, 0, 609, '0', 174, 1701.76, -5932.44, 121.546, 0.159556, 300, 5, 13945, 0, 1),
(84001, 28782, 0, 609, '0', 174, 1696.68, -5873.42, 116.141, 3.16371, 300, 5, 13945, 0, 1),
(84189, 28782, 0, 609, '0', 174, 1776.86, -5834.88, 116.695, 0.381869, 300, 5, 13945, 0, 1),
(84190, 28782, 0, 609, '0', 174, 1964.41, -5981.98, 81.3935, 6.10481, 300, 0, 13945, 0, 2), -- a8
(84191, 28782, 0, 609, '0', 174, 1897.38, -5977.18, 101.464, 2.40166, 300, 0, 13945, 0, 2), -- a9
(84192, 28782, 0, 609, '0', 174, 2164.21, -6157.62, 1.88909, 1.3963, 300, 10, 13945, 0, 1),
(84193, 28782, 0, 609, '0', 174, 2128.02, -6112.92, 5.72541, 3.61112, 300, 10, 13945, 0, 1),
(84194, 28782, 0, 609, '0', 174, 2182.85, -6086, 3.07005, 1.01537, 300, 10, 13945, 0, 1),
(84195, 28782, 0, 609, '0', 174, 2241.39, -6087.69, 5.96331, 2.16205, 300, 10, 13945, 0, 1),
(84196, 28782, 0, 609, '0', 174, 2244.18, -6149.44, 2.44773, 0.0768139, 300, 10, 13945, 0, 1),
(84197, 28782, 0, 609, '0', 174, 2321.17, -6131.9, 6.67798, 0.320285, 300, 10, 13945, 0, 1);

-- Acherus Deathcharger - waypoints
DELETE FROM `creature_addon` WHERE `guid` IN (84191,84190,81407,81268,81379,81342,81397,81330,81403);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(84191, 841910, 0, 0, 0, 0, ''),
(84190, 841900, 0, 0, 0, 0, ''),
(81407, 814070, 0, 0, 0, 0, ''),
(81268, 812680, 0, 0, 0, 0, ''),
(81379, 813790, 0, 0, 0, 0, ''),
(81342, 813420, 0, 0, 0, 0, ''),
(81397, 813970, 0, 0, 0, 0, ''),
(81330, 813300, 0, 0, 0, 0, ''),
(81403, 814030, 0, 0, 0, 0, '');

DELETE FROM `waypoint_data` WHERE `id` IN (841910,841900,814070,812680,813790,813420,813970,813300,814030);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `move_type`, `action_chance`) VALUES
(841910,1,1882.36,-5955.49,101.544,1.80632,0,100),  -- a9
(841910,2,1874.9,-5932.71,103.817,2.00659,0,100),
(841910,3,1865.36,-5906.65,103.934,1.25575,0,100),
(841910,4,1867.91,-5901.32,103.717,0.770302,0,100),
(841910,5,1879.87,-5895.75,103.284,0.160833,0,100),
(841910,6,1907.99,-5897.99,101.861,6.15342,0,100),
(841910,7,1931.99,-5918.86,102.116,5.51333,0,100),
(841910,8,1936.27,-5929.07,102.609,4.88894,0,100),
(841910,9,1935.36,-5946.3,101.772,4.39022,0,100),
(841910,10,1917.75,-5980.09,100.934,3.66451,0,100),
(841910,11,1909.71,-5983.55,100.937,2.77817,0,100),
(841910,12,1896.84,-5976.78,101.433,2.45428,0,100),
(841900,1,2005.65,-5985.93,47.0695,6.14172,0,100),  -- a8
(841900,2,2025.76,-5986.97,34.9653,5.92966,0,100),
(841900,3,2040.82,-5991.42,27.1636,5.74901,0,100),
(841900,4,2070.46,-6009.69,14.1364,5.60057,0,100),
(841900,5,2089.86,-6031.21,10.0122,5.30605,0,100),
(841900,6,2072.09,-6010.45,13.7143,2.50846,0,100),
(841900,7,2040.48,-5991.45,27.3068,2.87446,0,100),
(841900,8,2022.21,-5986.12,36.6479,3.07238,0,100),
(841900,9,2005.33,-5984.7,47.3562,3.06453,0,100),
(841900,10,1985.14,-5984.29,64.3585,3.15092,0,100),
(841900,11,1951.75,-5980.51,93.0818,3.01348,0,100),
(841900,12,1965.68,-5982.22,80.2084,6.159,0,100),
(814070,1,1933.95,-5806.67,100.245,5.99641,0,100),  -- a7
(814070,2,1945.86,-5813.73,100.779,5.4694,0,100),
(814070,3,1961.44,-5840.48,100.637,5.18745,0,100),
(814070,4,1966.66,-5861.56,100.6,4.34237,0,100),
(814070,5,1964.91,-5867.95,100.508,3.9913,0,100),
(814070,6,1956.87,-5870.35,100.217,3.1093,0,100),
(814070,7,1931.44,-5850.91,100.611,2.93572,0,100),
(814070,8,1896.73,-5840.75,101.032,2.79043,0,100),
(814070,9,1870.92,-5827.95,100.827,2.29641,0,100),
(814070,10,1866.13,-5817.68,100.414,1.58562,0,100),
(814070,11,1867.51,-5810.04,100.784,0.943974,0,100),
(814070,12,1880.79,-5807.33,101.536,0.103598,0,100),
(814070,13,1917.54,-5804.33,100.47,0.0564738,0,100),
(812680,1,2012.65,-5766.82,101.908,5.08146,0,100),  -- a1
(812680,2,2012.14,-5778.92,100.659,4.34947,0,100),
(812680,3,2005.69,-5788.39,100.538,3.81619,0,100),
(812680,4,1992.83,-5796.53,100.904,3.42427,0,100),
(812680,5,1977.37,-5798.82,100.965,3.22007,0,100),
(812680,6,1956.35,-5798.48,100.68,2.68207,0,100),
(812680,7,1950.08,-5792.8,100.576,1.73567,0,100),
(812680,8,1948,-5778.37,101.592,1.39559,0,100),
(812680,9,1955.68,-5760.57,103.729,0.997391,0,100),
(812680,10,1970.85,-5748.14,100.11,0.445256,0,100),
(812680,11,1983.79,-5745.21,100.716,6.25563,0,100),
(812680,12,2001.9,-5751.86,100.288,5.70193,0,100),
(813790,1,2143.1,-5763.74,99.1894,0.042808,0,100),  -- a4
(813790,2,2158.52,-5758,100.807,0.74574,0,100),
(813790,3,2167.47,-5748.11,101.298,1.26724,0,100),
(813790,4,2168.65,-5736.46,101.5,1.85001,0,100),
(813790,5,2163.36,-5724.34,101.512,2.5765,0,100),
(813790,6,2146.22,-5716.27,101.323,2.97313,0,100),
(813790,7,2131.05,-5717.9,100.65,3.32263,0,100),
(813790,8,2118.41,-5722.32,100.284,3.66585,0,100),
(813790,9,2109.52,-5728.53,100.256,4.27375,0,100),
(813790,10,2110.18,-5751.87,99.217,5.34581,0,100),
(813790,11,2120.91,-5759.71,98.2946,5.88381,0,100),
(813420,1,2060.01,-5736.85,99.4104,4.19071,0,100),  -- a3
(813420,2,2040.93,-5742.01,98.898,4.58348,0,100),
(813420,3,2040.36,-5751.12,98.3689,5.23772,0,100),
(813420,4,2048.32,-5756.86,98.2594,5.91356,0,100),
(813420,5,2078.87,-5771.83,99.3538,5.89628,0,100),
(813420,6,2104.07,-5773.74,98.5503,0.466729,0,100),
(813420,7,2113.36,-5765.92,98.3596,1.20721,0,100),
(813420,8,2113.29,-5753.52,98.9282,1.74548,0,100),
(813420,9,2100.27,-5733.9,100.305,2.53245,0,100),
(813420,10,2079.04,-5731.29,101.095,3.28643,0,100),
(813970,1,2228.35,-5760.27,101.822,1.00292,0,100),  -- a5
(813970,2,2233.22,-5750.22,102.033,1.5692,0,100),
(813970,3,2229.94,-5742.19,102.264,2.49204,0,100),
(813970,4,2222.34,-5740.54,102.381,3.51777,0,100),
(813970,5,2207.17,-5751.14,102.475,3.26795,0,100),
(813970,6,2192.29,-5752.01,102.102,3.66594,0,100),
(813970,7,2180.72,-5763.48,101.405,4.31232,0,100),
(813970,8,2177.95,-5775.62,101.446,4.8079,0,100),
(813970,9,2183.4,-5789.55,101.215,5.437,0,100),
(813970,10,2192.32,-5800.57,101.343,5.88075,0,100),
(813970,11,2197.79,-5802.79,101.343,0.104141,0,100),
(813970,12,2202.69,-5798.95,101.353,1.02777,0,100),
(813970,13,2205.39,-5788.79,101.428,1.17857,0,100),
(813970,14,2209.36,-5781.51,101.583,0.970436,0,100),
(813300,1,2062.58,-5842.36,101.834,4.57897,0,100), -- a2
(813300,2,2060.66,-5853.1,102.729,4.9638,0,100),
(813300,3,2069.14,-5867.93,104.056,5.59447,0,100),
(813300,4,2081.6,-5874.41,103.633,6.16466,0,100),
(813300,5,2093.99,-5876.63,103.667,0.0236323,0,100),
(813300,6,2107.09,-5873.46,103.113,0.40455,0,100),
(813300,7,2138.44,-5856.49,101.382,0.834949,0,100),
(813300,8,2142.65,-5850.75,101.348,1.23,0,100),
(813300,9,2143.37,-5822.25,101.037,1.77193,0,100),
(813300,10,2136.56,-5806.08,99.9357,2.03504,0,100),
(813300,11,2125.4,-5788.11,98.7693,1.86304,0,100),
(813300,12,2119.43,-5779.51,98.2978,2.40947,0,100),
(813300,13,2112.23,-5773.94,98.2264,2.854,0,100),
(813300,14,2100.67,-5772.24,98.7518,3.45797,0,100),
(813300,15,2091.23,-5777.37,99.1191,4.10671,0,100),
(813300,16,2084.55,-5802,102.372,4.37453,0,100),
(813300,17,2076.55,-5818.84,103.546,4.20567,0,100),
(814030,1,2337.09,-5858.43,100.959,2.98435,0,100),  -- a6
(814030,2,2307.45,-5851.65,100.935,2.87832,0,100),
(814030,3,2278.95,-5843.84,100.935,2.76051,0,100),
(814030,4,2264.71,-5835.39,100.974,2.5406,0,100),
(814030,5,2262.84,-5826.59,100.958,1.57456,0,100),
(814030,6,2270.84,-5818.56,100.935,0.608518,0,100),
(814030,7,2284.09,-5819.16,100.935,6.0474,0,100),
(814030,8,2298.8,-5824.22,100.987,5.79293,0,100),
(814030,9,2312.55,-5839.9,100.953,5.33348,0,100),
(814030,10,2325.54,-5851.61,100.935,5.76702,0,100),
(814030,11,2351.08,-5858.36,102.555,6.0851,0,100),
(814030,12,2381.22,-5863.9,104.839,6.12044,0,100),
(814030,13,2401.84,-5870.31,104.584,5.93587,0,100),
(814030,14,2408.96,-5872.56,104.584,0.166336,0,100),
(814030,15,2414.42,-5870.57,104.674,0.800151,0,100),
(814030,16,2416.9,-5865.46,104.942,1.49601,0,100),
(814030,17,2414.3,-5857.98,105.677,2.49818,0,100),
(814030,18,2400.99,-5855.6,106.171,3.2396,0,100),
(814030,19,2367.56,-5862.54,104.418,3.0998,0,0);
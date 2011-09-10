/* Original Icewalls from YTDB */
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(3485, 201385, 668, 3, 65535, 5540.39, 2086.48, 731.066, 1.00057, 0, 0, 0.479677, 0.877445, 604800, 100, 1),
(3438, 201385, 668, 3, 65535, 5494.3, 1978.27, 736.689, 1.0885, 0, 0, 0.517777, 0.855516, 604800, 100, 1),
(3386, 201385, 668, 3, 65535, 5434.27, 1881.12, 751.303, 0.923328, 0, 0, 0.445439, 0.895312, 604800, 100, 1),
(3383, 201385, 668, 3, 65535, 5323.61, 1755.85, 770.305, 0.784186, 0, 0, 0.382124, 0.924111, 604800, 100, 1);
/* more Icewalls spawn for mor correction to see the icewalls */
/*
DELETE FROM `gameobject` WHERE `guid` = 14571574;
DELETE FROM `gameobject` WHERE `guid` = 14571575;
DELETE FROM `gameobject` WHERE `guid` = 14571576;
DELETE FROM `gameobject` WHERE `guid` = 14571577;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(14571574, 201385, 668, 2, 1, 5540.39, 2086.48, 731.066, 1.00057, 0, 0, 0.479677, 0.877445, -604800, 255, 1),
(14571575, 201385, 668, 2, 1, 5494.3, 1978.27, 736.689, 1.0885, 0, 0, 0.517777, 0.855516, -604800, 255, 1),
(14571576, 201385, 668, 2, 1, 5434.27, 1881.12, 751.303, 0.923328, 0, 0, 0.445439, 0.895312, -604800, 255, 1),
(14571577, 201385, 668, 2, 1, 5323.61, 1755.85, 770.305, 0.784186, 0, 0, 0.382124, 0.924111, -604800, 255, 1);
*/
/* Lich King trash fix no more under map why fly mod on */
UPDATE `creature_template` SET `InhabitType` = '3', `movementId` = '151' WHERE `entry` = 37069;
UPDATE `creature_template` SET `InhabitType` = '3', `movementId` = '151' WHERE `entry` = 37549;
UPDATE `creature_template` SET `InhabitType` = '3', `movementId` = '151' WHERE `entry` = 36941;
UPDATE `creature_template` SET `InhabitType` = '3', `movementId` = '151' WHERE `entry` = 37551;
UPDATE `creature_template` SET `InhabitType` = '3', `movementId` = '151' WHERE `entry` = 36941;
UPDATE `creature_template` SET `InhabitType` = '3', `movementId` = '151' WHERE `entry` = 37551;
UPDATE `creature_template` SET `InhabitType` = '3', `movementId` = '151' WHERE `entry` = 36940;
UPDATE `creature_template` SET `InhabitType` = '3', `movementId` = '151' WHERE `entry` = 37550;

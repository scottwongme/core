DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190114020358');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190114020358');
-- Add your query below.


-- Add waypoints for Anathemus.
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` = 27567;
DELETE FROM `creature_movement` WHERE `id` = 27567;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES
(27567, 1, -7095.56, -2718.91, 241.823),
(27567, 2, -7067.39, -2756.06, 242.343),
(27567, 3, -7037.44, -2790.59, 241.668),
(27567, 4, -7018.55, -2835.34, 244.453),
(27567, 5, -6984.54, -2869.52, 243.404),
(27567, 6, -6938.39, -2890.16, 241.667),
(27567, 7, -6905.93, -2928.64, 245.614),
(27567, 8, -6854.77, -2984.54, 244.127),
(27567, 9, -6836.56, -3004.44, 242.001),
(27567, 10, -6807.97, -3077.38, 241.258),
(27567, 11, -6787.47, -3129.66, 240.549),
(27567, 12, -6764.01, -3175.88, 240.743),
(27567, 13, -6745.73, -3211.91, 240.743),
(27567, 14, -6708.56, -3249.22, 240.743),
(27567, 15, -6693.82, -3306.64, 240.985),
(27567, 16, -6720.17, -3363.87, 241.645),
(27567, 17, -6774.04, -3394.9, 241.667),
(27567, 18, -6846.93, -3401.71, 241.762),
(27567, 19, -6905.98, -3407.23, 243.235),
(27567, 20, -6961.35, -3397.87, 241.796),
(27567, 21, -6999.34, -3391.44, 241.667),
(27567, 22, -7039.67, -3397.01, 243.935),
(27567, 23, -7064.13, -3400.84, 245.275),
(27567, 24, -7110.78, -3375.07, 242.97),
(27567, 25, -7113.36, -3322.06, 242.365),
(27567, 26, -7098.28, -3284.59, 242.883),
(27567, 27, -7095.63, -3246.03, 242.983),
(27567, 28, -7085.7, -3202.78, 241.97),
(27567, 29, -7072.35, -3144.63, 241.67),
(27567, 30, -7061.88, -3098.99, 242.684),
(27567, 31, -7015.89, -3040.38, 242.25),
(27567, 32, -6970.5, -2981.02, 241.666),
(27567, 33, -6934.33, -2905.91, 241.816),
(27567, 34, -6913.11, -2861.83, 241.894),
(27567, 35, -6874.86, -2825.65, 241.667),
(27567, 36, -6859.87, -2776.27, 241.975),
(27567, 37, -6842.13, -2717.85, 241.729),
(27567, 38, -6846.45, -2667.72, 241.51),
(27567, 39, -6851.46, -2607.44, 240.745),
(27567, 40, -6852.08, -2566.73, 240.743),
(27567, 41, -6880.82, -2550.47, 240.743),
(27567, 42, -6920.74, -2512.13, 240.743),
(27567, 43, -6957.01, -2459.73, 240.743),
(27567, 44, -6968.86, -2436.17, 240.743),
(27567, 45, -6985.18, -2427.13, 242.407),
(27567, 46, -7032.28, -2403.95, 240.308),
(27567, 47, -7070.29, -2406.17, 243.718),
(27567, 48, -7132.2, -2394.94, 241.667),
(27567, 49, -7165.06, -2398.26, 240.663),
(27567, 50, -7188.31, -2426.48, 242.147),
(27567, 51, -7194.06, -2475.31, 245.94),
(27567, 52, -7197.13, -2523.31, 248.631),
(27567, 53, -7185.88, -2555.67, 245.846),
(27567, 54, -7191.35, -2594.02, 246.023),
(27567, 55, -7175.23, -2639.84, 244.411),
(27567, 56, -7164.76, -2655.17, 243.481),
(27567, 57, -7143.76, -2663.97, 241.977),
(27567, 58, -7120.74, -2667.13, 241.845);


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;

/* Jumpevent cast Fallschirm und schwimmen */
DELETE FROM `gossip_menu` WHERE `entry` = 60000;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `cond_1`, `cond_1_val_1`, `cond_1_val_2`, `cond_2`, `cond_2_val_1`, `cond_2_val_2`) VALUES (60000, 10063, 0, 0, 0, 0, 0, 0);
DELETE FROM `gossip_menu_option` WHERE (`menu_id`=60000);
INSERT INTO `gossip_menu_option` VALUES ('60000', '0', '0', 'Fallschirm', '1', '2', '-1', '0', '100013', '0', '0', null, '0', '0', '0', '0', '0', '0', '0', '0', '0');
DELETE FROM `gossip_scripts` WHERE (`id`=100013);
INSERT INTO `gossip_scripts` VALUES ('100013', '0', '15', '66154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
UPDATE creature_template SET spell1= '66154', `gossip_menu_id` = '60000' WHERE entry=110009;
UPDATE creature_template SET spell1= '66154', `gossip_menu_id` = '60000' WHERE entry=110008;

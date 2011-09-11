/* GOSSIP START EVENT */
DELETE FROM `gossip_texts` WHERE `entry` = -3594536;
DELETE FROM `gossip_texts` WHERE `entry` = -3594537;
DELETE FROM `gossip_texts` WHERE `entry` = -3594538;
DELETE FROM `gossip_texts` WHERE `entry` = -3594539;
DELETE FROM `gossip_texts` WHERE `entry` = -3594540;
INSERT INTO `gossip_texts` (`entry`, `content_default`, `content_loc8`, `comment`) VALUES
(-3594536, 'Lady Jaina, we are ready for the mission!', '??????, ?? ??????!',''),
(-3594538, 'Lady Sylvanas, we are ready for the first mission!', '????????, ?? ??????!', ''),
(-3594540, 'We are ready for the second mission!', '????????!', '');

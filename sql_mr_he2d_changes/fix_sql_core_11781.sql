/* UPDATE last of ScriptName CORE 11781 */
/* Delete old ScriptNames */
/* UPDATE `gameobject_template` SET `ScriptName` = '' WHERE `ScriptName` = 'event_spell_saronite_barrier'; */
UPDATE `gameobject_template` SET `ScriptName` = '' WHERE `ScriptName` = 'go_skaldi_harpoonluncher';
UPDATE `gameobject_template` SET `ScriptName` = '' WHERE `ScriptName` = 'go_statis_generator';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `ScriptName` = 'mob_chaotic_rift';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `ScriptName` = 'mob_ferocious_rhino';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `ScriptName` = 'mob_frenzied_worgen';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `ScriptName` = 'mob_massive_jormungar';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `ScriptName` = 'mob_ravenous_furbolg';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `ScriptName` = 'npc_corrupted_soul_fragment';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `ScriptName` = 'npc_crystal_channel_target';
/* update 11781 ScriptNames */
UPDATE `creature_template` SET `ScriptName` = 'npc_lightwell' WHERE `entry` = 31897;
UPDATE `creature_template` SET `ScriptName` = 'crystal_channel' WHERE `entry` = 26712;
UPDATE `creature_template` SET `ScriptName` = 'mob_soul_fragment' WHERE `entry` = 36535;
UPDATE `creature_template` SET `ScriptName` = 'npc_chaotic_rift' WHERE `entry` = 26918;
UPDATE `creature_template` SET `ScriptName` = 'mob_shadowy_construct' WHERE `entry` = 23111;
/* WORLD BOSSE */
UPDATE creature_template SET ScriptName= 'boss_ysondre' WHERE entry=14887; /* boss_ysondre */
UPDATE creature_template SET ScriptName= 'boss_emeriss' WHERE entry=14889; /* boss_emeriss */
UPDATE creature_template SET ScriptName= 'boss_taerar' WHERE entry=14890; /* boss_taerar */
UPDATE creature_template SET ScriptName= 'boss_lethon' WHERE entry=14888; /* boss_lethon */

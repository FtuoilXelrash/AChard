DELETE FROM `quest` WHERE `name` = 'WorldBossCompleted';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('WorldBossCompleted', 72000, -1, 'World Boss Turn-in', '2021-11-01 00:00:00');

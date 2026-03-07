snd_play(107);
global.phasing = 1;
obj_solidsmall.solid = 0;

with (obj_mainchara)
    path_start(path_bedjump, 3, path_action_stop, 0);

jump = 1;
global.facing = 2;
global.interact = 1;

scr_depth(0, 0, 0, 0, 0);
global.plot = 7.5;
image_speed = 0;
dsprite = 1201;
usprite = 1205;
lsprite = 1196;
rsprite = 1202;
dtsprite = 1193;
utsprite = 1199;
ltsprite = 1198;
rtsprite = 1197;
myinteract = 0;
facing = 0;
direction = 0;
obj_mainchara.visible = false;
obj_mainchara.y = y + 28;
path_start(path_torielwalk5_2, 1, path_action_stop, 0);
global.phasing = 1;
obj_spiketile2.solid = 0;

with (obj_mainchara)
    path_start(path_torielwalk5_2, 1, path_action_stop, 0);

global.interact = 6;
conversation = 0;
phone = 0;

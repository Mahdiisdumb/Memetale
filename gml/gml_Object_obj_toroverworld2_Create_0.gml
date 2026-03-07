scr_depth(0, 0, 0, 0, 0);
t = 0;
image_speed = 0;
dsprite = 1191;
usprite = 1200;
lsprite = 1196;
rsprite = 1195;
dtsprite = 1193;
utsprite = 1199;
ltsprite = 1198;
rtsprite = 1197;
myinteract = 0;
facing = 3;
conversation = 0;
direction = 270;
path_start(path_torielwalk1, 0, path_action_stop, 1);

if (global.plot > 1)
    instance_destroy();

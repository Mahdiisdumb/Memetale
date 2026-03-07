dsprite = 1391;
usprite = 1391;
lsprite = 1391;
rsprite = 1391;
dtsprite = 1391;
utsprite = 1391;
ltsprite = 1391;
rtsprite = 1391;
myinteract = 0;
facing = 0;
direction = 0;
talkedto = 0;
image_speed = 0;

if (scr_murderlv() >= 7)
    instance_destroy();

if (global.flag[7] == 0)
    instance_destroy();

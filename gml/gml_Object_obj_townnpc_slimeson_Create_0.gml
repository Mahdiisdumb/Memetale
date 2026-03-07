dsprite = 1305;
usprite = 1305;
lsprite = 1305;
rsprite = 1305;
dtsprite = 1305;
utsprite = 1305;
ltsprite = 1305;
rtsprite = 1305;
myinteract = 0;
facing = 0;
direction = 0;
talkedto = 0;
image_speed = 0;

if (global.flag[67] == 1 || scr_deaddog() == 1)
    instance_destroy();

if (scr_murderlv() >= 7)
    instance_destroy();

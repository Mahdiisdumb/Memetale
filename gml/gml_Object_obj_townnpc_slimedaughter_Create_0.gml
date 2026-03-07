dsprite = 1306;
usprite = 1306;
lsprite = 1306;
rsprite = 1306;
dtsprite = 1306;
utsprite = 1306;
ltsprite = 1306;
rtsprite = 1306;
myinteract = 0;
facing = 0;
direction = 0;
talkedto = 0;
image_speed = 0;

if (global.flag[67] == 1 || scr_deaddog() == 1)
    instance_destroy();

if (global.flag[67] == 1 || scr_deaddog() == 1)
    instance_destroy();

if (scr_murderlv() >= 7)
    instance_destroy();

dsprite = 2053;
usprite = 2056;
lsprite = 2053;
rsprite = 2056;
dtsprite = 2053;
utsprite = 2056;
ltsprite = 2053;
rtsprite = 2056;
myinteract = 0;
facing = 0;
direction = 180;
talkedto = 0;
image_speed = 0;

if (scr_murderlv() >= 10)
    instance_destroy();

if (x == 145 || x == 205 || x == 450)
    direction = 0;

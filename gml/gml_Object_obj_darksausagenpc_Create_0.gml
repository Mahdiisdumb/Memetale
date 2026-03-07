dsprite = 1443;
usprite = 1452;
lsprite = 1457;
rsprite = 1453;
dtsprite = 1443;
utsprite = 1452;
ltsprite = 1457;
rtsprite = 1453;
myinteract = 0;
facing = 0;
direction = 270;
talkedto = 0;
image_speed = 0;

if (scr_enemynpc3() != 1)
    instance_destroy();

if (scr_murderlv() >= 12)
    instance_destroy();

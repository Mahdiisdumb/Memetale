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
con = 0;
touched = 0;
gone = 0;

if (global.flag[413] > 0)
    gone = 1;

if (global.flag[67] == 1)
    gone = 1;

if (global.plot > 200)
    gone = 1;

if (gone == 1)
    instance_destroy();

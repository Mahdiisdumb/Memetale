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
direction = 0;
talkedto = 0;
image_speed = 0;
dis = 0;

if (global.plot > 163)
    dis = 1;

if (global.flag[397] == 1)
    dis = 1;

if (dis == 1)
    instance_destroy();

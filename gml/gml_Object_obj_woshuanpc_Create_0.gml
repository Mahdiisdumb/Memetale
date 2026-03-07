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

if (scr_enemynpc2() != 1)
    instance_destroy();

if (room == room_water_trashzone1 && global.flag[493] >= 9 && global.flag[7] == 0)
    instance_destroy();

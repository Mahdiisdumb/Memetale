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

if (scr_enemynpc1() != 1)
    instance_destroy();

if (global.flag[7] == 1) {
    instance_create(x + 40, y - 8, obj_npc_room);
    instance_create(x + 100, y, obj_snowdrakedad);
}

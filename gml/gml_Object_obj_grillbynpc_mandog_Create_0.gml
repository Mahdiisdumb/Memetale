fun = 0;
dsprite = sprite_index;
usprite = sprite_index;
lsprite = sprite_index;
rsprite = sprite_index;
dtsprite = 1443;
utsprite = 1452;
ltsprite = 1457;
rtsprite = 1453;
myinteract = 0;
facing = 0;
direction = 0;
talkedto = 0;
image_speed = 0;

if (global.flag[53] == 1)
    instance_destroy();

if (global.flag[7] == 1 && room == room_tundra_grillby)
    instance_destroy();

if (global.flag[7] == 0 && room == room_tundra_town)
    instance_destroy();

sansmode = 0;

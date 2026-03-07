dsprite = 1482;
usprite = 1490;
lsprite = 1485;
rsprite = 1487;
dtsprite = 1484;
utsprite = 1491;
ltsprite = 1486;
rtsprite = 1489;
myinteract = 0;
facing = 3;
direction = 270;
talkedto = 0;
image_speed = 0;
con = 0;
fun = 0;

if (global.plot > 100 && room == room_tundra_town && global.flag[7] == 0)
    instance_destroy();

if (global.plot > 103 && room == room_water2)
    instance_destroy();

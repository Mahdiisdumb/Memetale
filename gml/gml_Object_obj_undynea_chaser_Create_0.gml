scr_depth(0, 0, 0, 0, 0);
STOPPER = 0;
image_speed = 0.334;
dsprite = 1517;
usprite = 1522;
lsprite = 1516;
rsprite = 1515;
dtsprite = 1517;
utsprite = 1522;
ltsprite = 1516;
rtsprite = 1515;
myinteract = 0;
facing = 0;
fun = 0;
npcdir = 0;
d = 0;
con = 0;
active = 1;
new = 1;
sans = 0;

if (global.flag[67] == 1)
    sans = 1;

if (room == room_water_undynefinal)
    new = 0;

for (i = 0; i < 60; i += 1) {
    rememberx[i] = x;
    remembery[i] = y;
}

global.flag[17] = 1;

if (global.plot > 121)
    instance_destroy();

if (room == room_water_undynefinal2) {
    if (global.entrance == 1)
        y = obj_mainchara.y + 100;
    
    if (global.entrance == 2)
        y = obj_mainchara.y - 100;
}

if (room == room_water_undynefinal3) {
    if (global.entrance == 1)
        x = obj_mainchara.x - 100;
    
    if (global.entrance == 2)
        x = obj_mainchara.x + 100;
}

if (room == room_fire1) {
    if (global.entrance == 1)
        x = obj_mainchara.x - 60;
    
    if (global.entrance == 2)
        x = obj_mainchara.x + 60;
}

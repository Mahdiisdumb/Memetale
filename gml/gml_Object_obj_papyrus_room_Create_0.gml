dsprite = 1402;
usprite = 1414;
lsprite = 1419;
rsprite = 1417;
dtsprite = 1405;
utsprite = 1416;
ltsprite = 1423;
rtsprite = 1424;
myinteract = 0;
facing = 0;
direction = 270;
talkedto = 0;
image_speed = 0;
fun = 0;
dir = 0;
rid = 0;

if (global.flag[67] == 1) {
    instance_destroy();
    exit;
}

if (room == room_tundra_town) {
    dir = 1;
    
    if (global.flag[88] >= 4 && global.plot <= 105) {
        instance_destroy();
        exit;
    }
    
    if (global.flag[354] == 2 && global.flag[389] == 0) {
        instance_destroy();
        exit;
    }
    
    if (global.flag[7] == 1) {
        instance_destroy();
        exit;
    }
    
    if (global.flag[389] >= 3)
        instance_create(x - 34, y - 14, obj_undyne_friendc);
}

if (room == room_water_undyneyard) {
    d = 0;
    
    if (global.flag[354] < 2)
        d = 1;
    
    if (global.flag[88] < 4)
        d = 1;
    
    if (global.flag[389] > 0)
        d = 1;
    
    if (d == 1) {
        instance_destroy();
        exit;
    }
}

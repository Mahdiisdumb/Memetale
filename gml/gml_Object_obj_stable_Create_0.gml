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
open = 0;
scr_depth();
mysolid = instance_create(214, 52, obj_solidsmall);

if (global.flag[92] > 0)
    open = 1;

if (global.flag[92] > 3) {
    open = 2;
    
    with (mysolid)
        instance_destroy();
}

con = 0;

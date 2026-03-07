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

if (global.plot < 110)
    instance_destroy();

if (scr_murderlv() >= 8 && global.flag[27] == 0)
    y = 900;

if (global.entrance == 24) {
    global.interact = 1;
    con = 20;
    visible = false;
    obj_mainchara.visible = false;
    obj_mainchara.x = x;
    obj_mainchara.y = y - 15;
}

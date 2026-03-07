dsprite = 1443;
usprite = 1452;
lsprite = 1457;
rsprite = 1453;
dtsprite = 1443;
utsprite = 1452;
ltsprite = 1457;
rtsprite = 1453;
scr_depth();
lafftrax = 0;
conversation = 0;
hspeed = 0.75;
global.interact = 1;
image_speed = 0.1;
hh = instance_create(0, 0, obj_musfadeout);
hh.fadespeed = 0.5;
uuu = instance_create(0, 0, obj_walknoise);
y = obj_mainchara.y - 1;
shakehand = 0;
murder = 0;

if (scr_murderlv() >= 2)
    murder = 1;

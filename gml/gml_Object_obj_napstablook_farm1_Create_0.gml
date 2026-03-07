dsprite = 1217;
usprite = 1219;
lsprite = 1214;
rsprite = 1215;
dtsprite = 1217;
utsprite = 1219;
ltsprite = 1214;
rtsprite = 1215;
myinteract = 0;
facing = 0;
direction = 270;
talkedto = 0;
image_speed = 0;
fun = 0;

if (global.flag[7] == 1)
    instance_destroy();

if (scr_murderlv() >= 10)
    instance_destroy();

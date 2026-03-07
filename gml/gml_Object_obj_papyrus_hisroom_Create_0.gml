if (global.flag[67] == 1) {
    instance_destroy();
    exit;
}

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
intro = 0;

if (global.flag[88] >= 4) {
    instance_destroy();
    exit;
}

dsprite = 2055;
usprite = 2054;
lsprite = 2055;
rsprite = 2054;
dtsprite = 2053;
utsprite = 2056;
ltsprite = 2053;
rtsprite = 2056;
myinteract = 0;
facing = 0;
direction = 180;
talkedto = 0;
image_speed = 0;

if (scr_murderlv() >= 10)
    instance_destroy();

if (global.flag[269] == 1)
    sprite_index = spr_temmie_hivetalk;

con = 0;

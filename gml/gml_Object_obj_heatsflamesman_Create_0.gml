dsprite = 1307;
usprite = 1307;
lsprite = 1307;
rsprite = 1307;
dtsprite = 1307;
utsprite = 1307;
ltsprite = 1307;
rtsprite = 1307;
myinteract = 0;
facing = 0;
direction = 0;
talkedto = 0;
image_speed = 0;

if (global.flag[434] > 0)
    sprite_index = spr_heatsf_shock;

if (room == room_fire_elevator_r2 && global.plot >= 166)
    instance_destroy();

if (scr_murderlv() >= 12)
    instance_destroy();

if (global.flag[425] == 1)
    instance_destroy();

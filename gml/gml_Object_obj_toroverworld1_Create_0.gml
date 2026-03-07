scr_depth(0, 0, 0, 0, 0);
image_speed = 0;
dsprite = 1191;
usprite = 1200;
lsprite = 1196;
rsprite = 1195;
dtsprite = 1193;
utsprite = 1199;
ltsprite = 1198;
rtsprite = 1197;
myinteract = 0;
facing = 0;
phone = 0;
fader = 0;

if (room == room_basement3 || room == room_basement4) {
    facing = 2;
    direction = 90;
    sprite_index = spr_toriel_u;
}

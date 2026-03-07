chair = 0;

if (global.plot > 20 || global.plot < 19)
    chair = 1;

if (chair == 0) {
    dsprite = 1206;
    usprite = 1206;
    lsprite = 1206;
    rsprite = 1206;
    dtsprite = 1206;
    utsprite = 1206;
    ltsprite = 1206;
    rtsprite = 1206;
} else {
    dsprite = 1209;
    usprite = 1209;
    lsprite = 1209;
    rsprite = 1209;
    dtsprite = 1209;
    utsprite = 1209;
    ltsprite = 1209;
    rtsprite = 1209;
    sprite_index = spr_chairempty;
}

myinteract = 0;
facing = 1;
direction = 180;
talkedto = 0;

if (room == room_asghouse2) {
    dsprite = 1994;
    usprite = 1994;
    lsprite = 1994;
    rsprite = 1994;
    dtsprite = 1994;
    utsprite = 1994;
    ltsprite = 1994;
    rtsprite = 1994;
    sprite_index = spr_chairiel_grey;
    chair = 9;
}

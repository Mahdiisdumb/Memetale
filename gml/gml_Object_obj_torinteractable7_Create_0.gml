dsprite = 1191;
usprite = 1200;
lsprite = 1196;
rsprite = 1195;
dtsprite = 1193;
utsprite = 1199;
ltsprite = 1198;
rtsprite = 1197;
myinteract = 0;
facing = 1;
direction = 180;
talkedto = 0;
image_speed = 0;

if (global.flag[7] == 1) {
    y += 20;
    dsprite = 2526;
    usprite = 2528;
    lsprite = 2533;
    rsprite = 2530;
    dtsprite = 2527;
    utsprite = 2529;
    ltsprite = 2534;
    rtsprite = 2531;
    ossafe_ini_open("memetale.ini");
    curf = ini_read_real("EndF", "EndF", 0);
    ossafe_ini_close();
    
    if (curf > 0)
        instance_destroy();
}

dsprite = 1475;
usprite = 1476;
lsprite = 1478;
rsprite = 1477;
dtsprite = 1475;
utsprite = 1476;
ltsprite = 1478;
rtsprite = 1477;
myinteract = 0;
facing = 3;
direction = 180;
talkedto = 0;
image_speed = 0;
con = 0;
fun = 0;

if (room == room_water7 && global.plot < 110)
    instance_destroy();

type = 0;
gox = 0;

if (global.flag[5] >= 90) {
    if (ossafe_file_exists("memetale.ini")) {
        ossafe_ini_open("memetale.ini");
        fsx = ini_read_real("General", "fun", 0);
        
        if (fsx >= 90 && global.flag[5] >= 90) {
            gox = 1;
            type = 1;
        }
        
        ossafe_ini_close();
    }
}

if (global.debug == 1)
    gox = 1;

if (gox == 0)
    instance_destroy();

if (global.flag[7] == 1)
    instance_destroy();

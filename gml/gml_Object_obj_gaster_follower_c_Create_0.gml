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
gox = 0;

if (global.flag[5] == 63) {
    if (ossafe_file_exists("memetale.ini")) {
        ossafe_ini_open("memetale.ini");
        fsx = ini_read_real("General", "fun", 0);
        var dosave = 0;
        
        if (fsx == 63 && global.flag[5] == 63) {
            gox = 1;
            type = 1;
            ini_write_real("General", "fun", 0);
            global.flag[5] = 0;
            dosave = 1;
        }
        
        ossafe_ini_close();
        
        if (dosave)
            ossafe_savedata_save();
    }
}

choos = choose(0, 1);

if (choos != 1)
    gox = 0;

if (global.debug == 1)
    gox = 2;

if (gox == 0)
    instance_destroy();

if (global.flag[7] == 1)
    instance_destroy();

if (scr_murderlv() >= 12)
    instance_destroy();

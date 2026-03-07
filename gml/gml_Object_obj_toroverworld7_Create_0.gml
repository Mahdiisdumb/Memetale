scr_depth(0, 0, 0, 0, 0);
t = 0;
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
conversation = 0;
direction = 180;

if (global.plot > 8) {
    instance_destroy();
} else {
    instance_create(0, 0, obj_musfadeout);
    global.typer = 4;
    global.facechoice = 1;
    global.msc = 221;
    instance_create(0, 0, obj_dialoguer);
    global.interact = 1;
    conversation = 1;
}

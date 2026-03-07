dsprite = 1443;
usprite = 1452;
lsprite = 1457;
rsprite = 1453;
dtsprite = 1443;
utsprite = 1452;
ltsprite = 1457;
rtsprite = 1453;
myinteract = 0;
facing = 0;
direction = 90;
talkedto = 0;
image_speed = 0;
con = 0;

if (global.flag[89] != 1) {
    instance_destroy();
} else {
    con = 1;
    visible = true;
    rimshot = caster_load("music/rimshot.ogg");
    whoopee = caster_load("music/whoopee.ogg");
    mystery = caster_load("music/mysteriousroom2.ogg");
}

scr_depth();
burg = 0;
curvol = 1;
counter = scr_marker(92, 65, 1287);
counter.depth = 199990;

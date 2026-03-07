scrollspeed = 0.08;

repeat (10) {
    rr = round(random(room_width / 6));
    rr *= 6;
    star = instance_create(rr, 2, obj_waterstar_bg);
    star.size = 0.9 + random(0.3);
}

repeat (20) {
    rr = round(random(room_width / 6));
    rr *= 6;
    star = instance_create(rr, 2, obj_waterstar_bg);
    star.size = 0.5 + random(0.4);
}

repeat (40) {
    rr = round(random(room_width / 6));
    rr *= 6;
    star = instance_create(rr, 2, obj_waterstar_bg);
    star.size = 0.4 + random(0.3);
}

background_x[4] = 200;

if (instance_exists(obj_mainchara)) {
    with (obj_mainchara) {
        if (rsprite == 1133) {
            rsprite = 1116;
            lsprite = 1117;
            dsprite = 1119;
            usprite = 1118;
        }
    }
}

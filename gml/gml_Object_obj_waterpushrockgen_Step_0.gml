if (global.interact != 5)
    rate_time += 1;

if (falling == 0) {
    if (collision_rectangle(x1, y1, x2, y2, obj_mainchara, 0, 1)) {
        falling = 1;
        snd_play(135);
        obj_mainchara.image_alpha = 0.5;
        
        with (obj_dialoguer)
            instance_destroy();
        
        with (OBJ_WRITER)
            instance_destroy();
        
        with (obj_face)
            instance_destroy();
        
        global.interact = 1;
        obj_mainchara.vspeed = 6;
        global.phasing = 1;
    }
}

if (falling == 1) {
    if (obj_mainchara.y > triggery) {
        if (fell == 0) {
            obj_mainchara.dsprite = 1131;
            obj_mainchara.usprite = 1132;
            obj_mainchara.rsprite = 1133;
            obj_mainchara.lsprite = 1134;
            fell = 1;
        } else {
            obj_mainchara.dsprite = 1131;
            obj_mainchara.usprite = 1132;
            obj_mainchara.rsprite = 1133;
            obj_mainchara.lsprite = 1134;
            fell = 0;
        }
        
        obj_mainchara.image_alpha = 1;
        obj_mainchara.x = round(obj_mainchara.x);
        obj_mainchara.y = round(obj_mainchara.y);
        obj_mainchara.vspeed = 0;
        global.interact = 0;
        global.phasing = 0;
        falling = 0;
    }
}

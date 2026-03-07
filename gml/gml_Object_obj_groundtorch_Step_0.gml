if (myinteract == 1) {
    if (snd_isplaying(113) == 0)
        snd_play(113);
    
    if (sprite_index == spr_groundtorch_off) {
        sprite_index = spr_groundtorch_on;
        glow = 1;
    } else {
        sprite_index = spr_groundtorch_off;
        glow = 0;
    }
    
    myinteract = 0;
}

if (instance_exists(obj_torchpuzzle)) {
    if (glow == 1)
        obj_torchpuzzle.h += 1;
}

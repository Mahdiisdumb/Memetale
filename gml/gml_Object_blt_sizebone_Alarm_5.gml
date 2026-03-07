if (instance_exists(OBJ_WRITER) == 0) {
    with (blcon)
        instance_destroy();
    
    instance_create(0, 0, obj_unfader);
    alarm[6] = 50;
    snd_play(91);
}

if (instance_exists(OBJ_WRITER) == 1)
    alarm[5] = 2;

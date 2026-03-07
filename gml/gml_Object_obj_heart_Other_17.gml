if (speed > 10) {
    snd_stop(53);
    snd_stop(21);
    
    if (slam_pain == 1) {
        if (global.hp > 1)
            global.hp -= 1;
    }
    
    snd_play(53);
    snd_play(21);
    s_s = instance_create(0, 0, obj_sans_shaker);
    s_s.intensity = floor(speed / 3);
}

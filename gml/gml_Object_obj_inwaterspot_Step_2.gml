if (instance_exists(obj_mainchara)) {
    if (check == 1 && obj_mainchara.inwater == 1) {
        if (active == 1)
            snd_play(107);
    }
}

check = 0;

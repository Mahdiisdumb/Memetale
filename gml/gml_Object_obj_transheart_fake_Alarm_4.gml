if (visible == true) {
    visible = false;
} else {
    visible = true;
    claps += 1;
    snd_stop(107);
    snd_play(107);
}

if (claps < 2)
    alarm[4] = 2;

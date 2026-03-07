if (damageturn == 0) {
    snd_stop(53);
    snd_play(53);
    global.hp -= 1;
    damageturn = 1;
}

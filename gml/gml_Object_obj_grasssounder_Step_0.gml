if (sound == 1 && soundtimer < 0) {
    snd_play(22);
    sound = 0;
    soundtimer = 3;
}

soundtimer -= 1;

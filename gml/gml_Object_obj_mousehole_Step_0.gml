if (myinteract == 1) {
    if (audio_is_playing(snd_movemenu) == 0) {
        snd_stop(113);
        snd_play(113);
    }
    
    myinteract = 0;
}

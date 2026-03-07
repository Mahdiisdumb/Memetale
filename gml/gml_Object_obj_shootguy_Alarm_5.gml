if (ammo < idealammo) {
    if (ammo < (idealammo - 1))
        buffer += 6;
    
    ammo += 1;
    snd_play(107);
    alarm[5] = 6;
}

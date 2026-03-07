if (con == 0 && global.interact == 0) {
    snd_play(50);
    
    if (x < 1000)
        con = 5;
    
    if (x > 1000)
        con = 10;
    
    global.interact = 1;
}

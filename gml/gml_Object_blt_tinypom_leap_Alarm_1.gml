if (barked < 2) {
    sprite_index = spr_tinypombark;
    alarm[2] = 4;
    alarm[1] = 8;
    snd_play(41);
    barked += 1;
} else {
    alarm[3] = 10;
    sprite_index = spr_tinypomwalk;
}

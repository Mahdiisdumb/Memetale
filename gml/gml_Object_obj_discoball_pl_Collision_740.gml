with (other.id)
    instance_destroy();

if (type == 0)
    type = 1;
else
    type = 0;

swaptimer = 3;
sprite_index = spr_discoball_invert_pl;

if (soundtimer < 0) {
    snd_play(107);
    soundtimer = 2;
}

if (instance_exists(obj_ratingsmaster))
    global.ratings += 5;

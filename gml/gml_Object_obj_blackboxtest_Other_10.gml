for (i = 0; i < 4; i += 1) {
    gel = instance_create(x, y, obj_blackboxpart);
    gel.image_angle = image_angle + (i * 90);
}

snd = choose(0, 1, 2);

if (snd == 0)
    snd_play(151);

if (snd == 1)
    snd_play(152);

if (snd == 2)
    snd_play(153);

instance_destroy();

instance_create(300, -10, obj_floweyslice);
snd_play(158);
alarm[7] = 30;

if (instance_exists(obj_floweydmgwriter)) {
    with (obj_floweydmgwriter)
        instance_destroy();
}

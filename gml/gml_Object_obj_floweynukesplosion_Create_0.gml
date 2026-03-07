counter = 0;
size = 1;
hspeed = 1;
caster_stop(140);
caster_play(140, 1, 1);

if (instance_exists(obj_vsflowey_shaker) == 0) {
    shk = instance_create(0, 0, obj_vsflowey_shaker);
    shk.shakex = 6;
    shk.shakey = 6;
}

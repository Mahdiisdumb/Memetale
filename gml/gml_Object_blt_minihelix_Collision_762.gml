gravity = 0;
vspeed = -0.2;
snd_play(107);
dink += 1;
y = yprevious;

if (dink == 3)
    instance_destroy();

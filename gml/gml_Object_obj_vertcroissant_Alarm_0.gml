if (instance_exists(obj_purpleheart)) {
    op = 364;
    y = op.yzero + ((op.yamt + 1) * op.yspace);
    vspeed = -speedfactor;
} else {
    instance_destroy();
}

visible = true;

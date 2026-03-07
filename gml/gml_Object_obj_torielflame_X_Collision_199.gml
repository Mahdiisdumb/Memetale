other.conversation = 17;
other.sprite_index = spr_floweyhurt;
snd_play(43);
global.hshake = 2;
global.shakespeed = 2;
global.vshake = 0;
instance_create(0, 0, obj_shaker);
instance_destroy();

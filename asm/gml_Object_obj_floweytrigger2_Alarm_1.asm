.localvar 0 arguments

:[0]
pushi.e 28
pop.v.i global.plot
pushi.e 1188
pop.v.i 877.sprite_index
pushi.e 1
pop.v.i 877.image_index
push.d 0.5
pop.v.d 877.image_speed
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]
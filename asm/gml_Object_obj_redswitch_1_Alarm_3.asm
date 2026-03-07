.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i 1576.image_alpha
pushi.e 0
pop.v.i 1576.vspeed
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.phasing
pushi.e 1
pop.v.i 822.solid
pushi.e 24
pop.v.i global.entrance
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 27
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]
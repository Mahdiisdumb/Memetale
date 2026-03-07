.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i global.entrance
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 76
conv.i.v
call.i room_goto(argc=1)
popz.v
pushi.e 93
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]
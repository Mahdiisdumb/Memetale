.localvar 0 arguments

:[0]
pushi.e 6
pop.v.i 1049.con
pushi.e 14
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
call.i scr_shake(argc=3)
popz.v

:[end]
.localvar 0 arguments

:[0]
pushi.e 24
pop.v.i self.vspeed
pushi.e 141
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 1
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.i
push.d 0.8
conv.d.v
pushi.e 141
conv.i.v
call.i caster_play(argc=3)
popz.v

:[end]
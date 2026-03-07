.localvar 0 arguments

:[0]
push.d 1.1
conv.d.v
push.d 0.8
conv.d.v
push.v self.expl
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i self.off
push.d 0.8
pop.v.d self.vol
pushi.e 1588
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[3]
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
pushi.e 7
conv.i.v
call.i scr_shake(argc=3)
popz.v

:[end]
.localvar 0 arguments

:[0]
push.v self.expl
call.i caster_stop(argc=1)
popz.v
pushi.e 2
conv.i.v
push.d 0.4
conv.d.v
push.v self.expl
call.i caster_play(argc=3)
popz.v
pushi.e 1588
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 1588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shk
pushi.e 5
push.v self.shk
conv.v.i
pop.v.i [stacktop]self.shakex
pushi.e 5
push.v self.shk
conv.v.i
pop.v.i [stacktop]self.shakey

:[end]
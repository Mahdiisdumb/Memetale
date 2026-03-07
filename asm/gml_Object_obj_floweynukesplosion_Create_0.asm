.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.counter
pushi.e 1
pop.v.i self.size
pushi.e 1
pop.v.i self.hspeed
pushi.e 140
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 140
conv.i.v
call.i caster_play(argc=3)
popz.v
pushi.e 1588
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shk
pushi.e 6
push.v self.shk
conv.v.i
pop.v.i [stacktop]self.shakex
pushi.e 6
push.v self.shk
conv.v.i
pop.v.i [stacktop]self.shakey

:[end]
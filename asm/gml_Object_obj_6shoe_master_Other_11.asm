.localvar 0 arguments

:[0]
pushglb.v global.my_inv
pushi.e 0
cmp.i.v LT
bf [end]

:[1]
pushi.e 20
pop.v.i global.my_inv
pushi.e 0
pop.v.i self.hitted
pushi.e 157
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v global.my_hp
pushi.e 2
sub.i.v
pop.v.v global.my_hp
pushglb.v global.my_hp
pushi.e 1
cmp.i.v LTE
bf [end]

:[2]
pushi.e 1
pop.v.i global.my_hp

:[end]
.localvar 0 arguments

:[0]
pushglb.v global.invc
pushi.e 1
cmp.i.v LT
bf [end]

:[1]
push.v global.hp
pushi.e 19
sub.i.v
pop.v.v global.hp
pushi.e 53
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 8
pop.v.i global.hshake
push.d 1.5
pop.v.d global.shakespeed
pushi.e 2
pop.v.i global.vshake
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 30
pop.v.i global.invc
pushi.e 10
pop.v.i 199.conversation
pushi.e 3
pop.v.i 611.attackyou
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[2]
pushi.e 784
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[5]
pushi.e 188
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[6]
pushi.e 188
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]

:[end]
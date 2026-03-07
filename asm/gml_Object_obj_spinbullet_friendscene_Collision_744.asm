.localvar 0 arguments

:[0]
pushglb.v global.invc
pushi.e 1
cmp.i.v LTE
bf [2]

:[1]
push.v self.f_timer
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 53
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i global.hshake
pushi.e 2
pop.v.i global.shakespeed
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
pushi.e 15
pop.v.i global.invc
push.v global.hp
pushi.e 7
sub.i.v
pop.v.v global.hp
pushglb.v global.hp
pushi.e 1
cmp.i.v LTE
bf [end]

:[5]
pushi.e 1
pop.v.i global.hp

:[end]
.localvar 0 arguments

:[0]
pushglb.v global.hp
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.dmgamt
push.v global.hp
push.v self.dmgamt
sub.v.v
pop.v.v global.hp
pushglb.v global.hp
pushi.e 1
cmp.i.v LTE
bf [2]

:[1]
pushi.e 1
pop.v.i global.hp
pushi.e 8
pop.v.i self.q

:[2]
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
pushi.e 20
pop.v.i global.invc

:[end]
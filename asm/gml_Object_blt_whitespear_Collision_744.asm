.localvar 0 arguments

:[0]
pushglb.v global.invc
pushi.e 1
cmp.i.v LT
bf [end]

:[1]
push.v self.dmg
pushglb.v global.df
pushglb.v global.adef
add.v.v
pushi.e 5
conv.i.d
div.d.v
sub.v.v
call.i round(argc=1)
pop.v.v self.dmgamt
push.v self.dmgamt
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
pushi.e 1
pop.v.i self.dmgamt

:[3]
push.v global.hp
push.v self.dmgamt
sub.v.v
pop.v.v global.hp
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
pushglb.v global.inv
pop.v.v global.invc

:[end]
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
pushi.e 4
pop.v.i self.dmgamt
pushglb.v global.plot
pushi.e 110
cmp.i.v GT
bf [4]

:[2]
pushglb.v global.hp
pushi.e 10
cmp.i.v LTE
bf [4]

:[3]
pushi.e 3
pop.v.i self.dmgamt

:[4]
push.v self.dmgamt
pushglb.v global.maxhp
pushi.e 7
conv.i.d
div.d.v
cmp.v.v LT
bf [6]

:[5]
pushglb.v global.maxhp
pushi.e 7
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.dmgamt

:[6]
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
pushi.e 2
mul.i.v
pop.v.v global.invc
pushglb.v global.battlegroup
pushi.e 22
cmp.i.v EQ
bf [end]

:[7]
pushglb.v global.hp
pushi.e 1
cmp.i.v LT
bf [end]

:[8]
pushi.e 750
pop.v.i 212.sprite_index

:[end]
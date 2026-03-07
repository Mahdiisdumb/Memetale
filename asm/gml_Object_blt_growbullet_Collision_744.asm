.localvar 0 arguments

:[0]
push.v self.blue
pushi.e 3
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.blue
call.i scr_damagestandard(argc=5)
popz.v
b [8]

:[2]
pushi.e 257
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e 200
pop.v.i 257.mercymod
pushi.e 2
pop.v.i 257.clean

:[4]
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [7]

:[5]
push.v global.hp
pushi.e 1
add.i.v
pop.v.v global.hp
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v GT
bf [7]

:[6]
pushglb.v global.maxhp
pop.v.v global.hp

:[7]
pushi.e 110
conv.i.v
call.i snd_play(argc=1)
popz.v

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]
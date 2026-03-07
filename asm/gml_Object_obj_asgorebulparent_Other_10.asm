.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
pushi.e 479
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 479.curatk
pop.v.v self.dmg

:[2]
pushi.e 0
pop.v.i self.set
pushglb.v global.hp
pushi.e 1
cmp.i.v GT
bf [4]

:[3]
pushi.e 1
pop.v.i self.set

:[4]
push.v self.set
pushi.e 1
cmp.i.v EQ
bf [7]

:[5]
call.i scr_damagestandard_x(argc=0)
popz.v
pushglb.v global.hp
pushi.e 0
cmp.i.v LTE
bf [7]

:[6]
pushi.e 1
pop.v.i global.hp

:[7]
push.v self.set
pushi.e 0
cmp.i.v EQ
bf [end]

:[8]
call.i scr_damagestandard_x(argc=0)
popz.v
pushglb.v global.hp
pushi.e 0
cmp.i.v LTE
bf [end]

:[9]
pushi.e 0
pop.v.i global.hp

:[end]
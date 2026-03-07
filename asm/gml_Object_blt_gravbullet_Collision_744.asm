.localvar 0 arguments

:[0]
push.v self.green
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i scr_damagestandard_x(argc=0)
popz.v

:[2]
push.v self.green
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [5]

:[4]
push.v global.hp
pushi.e 1
add.i.v
pop.v.v global.hp

:[5]
pushi.e 209
pushenv [8]

:[6]
push.v self.eat
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.ate
pushi.e 90
pop.v.i self.mercymod

:[8]
popenv [6]
pushi.e 599
pushenv [11]

:[9]
push.v self.eat
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i self.ate
pushi.e 90
pop.v.i self.mercymod

:[11]
popenv [9]

:[end]
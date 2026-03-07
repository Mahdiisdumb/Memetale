.localvar 0 arguments

:[0]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
bf [2]

:[1]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e 20
add.i.v
pop.i.v [array]global.goldreward

:[2]
push.v self.mypart1
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[3]
push.v self.mypart1
conv.v.i
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]

:[6]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_monsterdefeat(argc=5)
popz.v

:[end]
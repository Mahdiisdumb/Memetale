.localvar 0 arguments

:[0]
push.v self.mercymod
pushi.e 10
cmp.i.v GT
bf [2]

:[1]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e 120
add.i.v
pop.i.v [array]global.goldreward

:[2]
call.i scr_monsterdefeat(argc=0)
popz.v
push.v self.mypart1
conv.v.i
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[end]
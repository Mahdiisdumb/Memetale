.localvar 0 arguments

:[0]
push.v self.mercymod
pushi.e 99
cmp.i.v GT
bf [2]

:[1]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e 5
add.i.v
pop.i.v [array]global.goldreward

:[2]
push.v self.killed
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pushi.e -5
pushi.e 53
pop.v.i [array]global.flag

:[4]
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
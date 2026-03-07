.localvar 0 arguments

:[0]
push.v self.mercymod
pushi.e 101
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e 1
add.i.v
pop.i.v [array]global.goldreward

:[2]
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
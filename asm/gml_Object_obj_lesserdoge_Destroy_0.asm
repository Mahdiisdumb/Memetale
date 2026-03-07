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
pushi.e 7
add.i.v
pop.i.v [array]global.goldreward

:[2]
push.v self.mercymod
pushi.e 150
cmp.i.v GTE
bf [4]

:[3]
pushi.e 2
pushi.e -5
pushi.e 55
pop.v.i [array]global.flag

:[4]
push.v self.mercymod
pushi.e 500
cmp.i.v GT
bf [6]

:[5]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e 13
add.i.v
pop.i.v [array]global.goldreward

:[6]
push.v self.mercymod
pushi.e 2600
cmp.i.v GT
bf [8]

:[7]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e 40
add.i.v
pop.i.v [array]global.goldreward

:[8]
push.v self.killed
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pushi.e -5
pushi.e 55
pop.v.i [array]global.flag

:[10]
push.v self.killed
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pushi.e -5
pushi.e 27
pop.v.i [array]global.flag

:[12]
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
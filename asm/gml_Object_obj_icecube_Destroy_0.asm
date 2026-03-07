.localvar 0 arguments

:[0]
push.v self.mercymod
pushi.e 10
cmp.i.v GT
bf [2]

:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
cmp.v.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e 7
add.i.v
pop.i.v [array]global.goldreward

:[5]
push.v self.mercymod
pushi.e 40
cmp.i.v GT
bf [7]

:[6]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
cmp.v.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e 15
add.i.v
pop.i.v [array]global.goldreward

:[10]
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
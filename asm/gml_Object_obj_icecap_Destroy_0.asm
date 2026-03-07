.localvar 0 arguments

:[0]
push.v self.mercymod
pushi.e 10
cmp.i.v GT
bf [3]

:[1]
push.v self.killed
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
cmp.v.v EQ
b [4]

:[3]
push.e 0

:[4]
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
push.v self.cube
pushi.e 0
cmp.i.v EQ
bf [end]

:[7]
call.i scr_monsterdefeat(argc=0)
popz.v

:[end]
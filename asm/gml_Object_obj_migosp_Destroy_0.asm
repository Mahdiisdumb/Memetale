.localvar 0 arguments

:[0]
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
bf [end]

:[4]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e 2
add.i.v
pop.i.v [array]global.goldreward
pushi.e 1
pushi.e -5
pushi.e 135
pop.v.i [array]global.flag

:[end]
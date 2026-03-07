.localvar 0 arguments

:[0]
push.v self.mercymod
pushi.e 30
cmp.i.v EQ
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
bf [9]

:[4]
push.v self.mercymod
pushi.e 10
cmp.i.v GT
bf [6]

:[5]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
cmp.v.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e 2
add.i.v
pop.i.v [array]global.goldreward

:[9]
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
push.v self.mypart1
conv.v.i
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]
push.v self.mypart2
conv.v.i
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]

:[end]
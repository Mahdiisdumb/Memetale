.localvar 0 arguments

:[0]
push.v self.killed
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pushi.e -5
pushi.e 27
pop.v.i [array]global.flag

:[2]
push.v self.mercymod
pushi.e 10
cmp.i.v GT
bf [4]

:[3]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
cmp.v.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e 50
add.i.v
pop.i.v [array]global.goldreward

:[7]
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
pushenv [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
popenv [8]

:[end]
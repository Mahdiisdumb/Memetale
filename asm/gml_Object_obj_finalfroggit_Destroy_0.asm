.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.mercymod
pushi.e 10
cmp.i.v GT
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
pushi.e 50
add.i.v
pop.i.v [array]global.goldreward
pushi.e 1
pushi.e -5
pushi.e 151
pop.v.i [array]global.flag

:[6]
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [12]

:[7]
push.v self.mercymod
pushi.e 10
cmp.i.v GT
bf [9]

:[8]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
cmp.v.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e 4
add.i.v
pop.i.v [array]global.goldreward

:[12]
push.v self.x
pushi.e 10
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 10
add.i.v
pop.v.v self.y
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
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]

:[end]
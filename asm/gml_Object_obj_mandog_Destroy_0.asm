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
pushi.e 30
add.i.v
pop.i.v [array]global.goldreward

:[5]
push.v self.mercymod
pushi.e 80
cmp.i.v GT
bf [7]

:[6]
push.v self.mercymod
pushi.e 400
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 2
pushi.e -5
pushi.e 53
pop.v.i [array]global.flag

:[10]
push.v self.killed
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pushi.e -5
pushi.e 53
pop.v.i [array]global.flag

:[12]
push.v self.killed
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pushi.e -5
pushi.e 27
pop.v.i [array]global.flag

:[14]
pushi.e 50
pop.v.i global.plot
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
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
push.v self.mypart2
conv.v.i
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]

:[end]
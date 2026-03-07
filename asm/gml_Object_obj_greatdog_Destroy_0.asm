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
pushi.e 40
add.i.v
pop.i.v [array]global.goldreward

:[5]
push.v self.mercymod
pushi.e 250
cmp.i.v EQ
bf [7]

:[6]
pushi.e 2
pushi.e -5
pushi.e 54
pop.v.i [array]global.flag

:[7]
push.v self.killed
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pushi.e -5
pushi.e 54
pop.v.i [array]global.flag

:[9]
push.v self.killed
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pushi.e -5
pushi.e 27
pop.v.i [array]global.flag

:[11]
pushi.e 60
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
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]

:[end]
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
pushi.e 20
add.i.v
pop.i.v [array]global.goldreward

:[5]
push.v self.giftgiven
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.goldreward

:[7]
push.v self.giftgiven
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 75
pushi.e -5
pushi.e 3
pop.v.i [array]global.goldreward

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
push.v self.mypart3
call.i instance_exists(argc=1)
conv.v.b
bf [17]

:[14]
push.v self.mypart3
conv.v.i
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]

:[17]
push.v self.mypart4
call.i instance_exists(argc=1)
conv.v.b
bf [21]

:[18]
push.v self.mypart4
conv.v.i
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]

:[21]
push.v self.googly
pushi.e 1
cmp.i.v EQ
bf [25]

:[22]
push.v self.mypart5
conv.v.i
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]

:[25]
push.v self.mypart8
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[26]
push.v self.mypart8
conv.v.i
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]

:[end]
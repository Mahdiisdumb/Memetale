.localvar 0 arguments

:[0]
push.v self.mercymod
pushi.e 80
cmp.i.v GT
bf [2]

:[1]
push.v self.mercymod
pushi.e 400
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 2
pushi.e -5
pushi.e 52
pop.v.i [array]global.flag

:[5]
push.v self.killed
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pushi.e -5
pushi.e 52
pop.v.i [array]global.flag

:[7]
push.v self.killed
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pushi.e -5
pushi.e 27
pop.v.i [array]global.flag

:[9]
pushi.e 41
pop.v.i global.plot
pushi.e 134
pop.v.i self.wd
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
conv.v.i
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]
push.v self.mypart4
conv.v.i
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]
pushi.e 30
pushi.e -5
pushi.e 3
pop.v.i [array]global.goldreward

:[end]
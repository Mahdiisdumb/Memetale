.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 88
cmp.i.v EQ
bf [3]

:[1]
pushglb.v global.plot
pushi.e 107
cmp.i.v LT
bf [3]

:[2]
pushi.e 107
pop.v.i global.plot
pushi.e 1341
conv.i.v
pushi.e 340
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
popz.v

:[3]
pushbltn.v self.room
pushi.e 131
cmp.i.v EQ
bf [6]

:[4]
pushglb.v global.plot
pushi.e 119
cmp.i.v LT
bf [6]

:[5]
pushi.e 119
pop.v.i global.plot
pushi.e 1341
conv.i.v
pushi.e 420
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i 1160.xxx

:[6]
pushbltn.v self.room
pushi.e 116
cmp.i.v EQ
bf [13]

:[7]
pushi.e -5
pushi.e 94
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [10]

:[8]
pushi.e -5
pushi.e 95
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 1
pop.v.i global.interact
pushi.e 46
pop.v.i global.battlegroup
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[13]
pushbltn.v self.room
pushi.e 154
cmp.i.v EQ
bf [15]

:[14]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 1
pop.v.i global.interact
pushi.e 50
pop.v.i 1197.con

:[18]
call.i instance_destroy(argc=0)
popz.v

:[end]
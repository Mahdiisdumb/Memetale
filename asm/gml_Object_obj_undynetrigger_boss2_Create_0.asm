.localvar 0 arguments

:[0]
pushi.e 40
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.con
pushglb.v global.plot
pushi.e 121
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1353
conv.i.v
pushi.e 660
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.save

:[5]
pushglb.v global.plot
pushi.e 121
cmp.i.v GT
bf [7]

:[6]
pushi.e 1353
conv.i.v
pushi.e 660
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.save

:[7]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
pushglb.v global.plot
pushi.e 121
cmp.i.v GT
bf [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
pushi.e 0
pop.v.i self.musout

:[end]
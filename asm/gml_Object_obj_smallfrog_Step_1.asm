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
call.i scr_depth(argc=5)
popz.v
pushglb.v global.kills
pushi.e 16
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushbltn.v self.room
pushi.e 29
cmp.i.v EQ
bf [4]

:[3]
pushglb.v global.kills
pushi.e 0
cmp.i.v GT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
pushbltn.v self.room
pushi.e 12
cmp.i.v EQ
bf [9]

:[8]
pushglb.v global.kills
pushi.e 0
cmp.i.v GT
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[end]
.localvar 0 arguments

:[0]
pushi.e 863
conv.i.v
pushi.e 70
conv.i.v
pushi.e 240
conv.i.v
call.i instance_create(argc=3)
popz.v
pushglb.v global.plot
pushi.e 19
cmp.i.v LT
bf [4]

:[1]
pushi.e 863
pushenv [3]

:[2]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 24
conv.i.v
call.i path_start(argc=4)
popz.v

:[3]
popenv [2]

:[4]
pushglb.v global.plot
pushi.e 18
cmp.i.v GT
bf [8]

:[5]
pushi.e 863
pushenv [7]

:[6]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 25
conv.i.v
call.i path_start(argc=4)
popz.v

:[7]
popenv [6]

:[8]
pushi.e 0
pushi.e -5
pushi.e 45
pop.v.i [array]global.flag

:[end]
.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i 784.halt
pushi.e 3
pop.v.i 787.halt
pushglb.v global.bmenuno
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e 9
pop.v.i global.msc

:[2]
pushglb.v global.bmenuno
push.d 3.5
cmp.d.v EQ
bf [4]

:[3]
pushi.e 10
pop.v.i global.msc

:[4]
pushi.e 787
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
popz.v

:[end]
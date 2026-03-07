.localvar 0 arguments

:[0]
pushglb.v global.plot
push.d 9.3
cmp.d.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushglb.v global.interact
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
push.d 9.4
pop.v.d global.plot
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]
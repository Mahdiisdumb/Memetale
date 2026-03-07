.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 11
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushglb.v global.interact
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.touch
pushi.e 1
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [end]

:[7]
pushi.e 12
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]
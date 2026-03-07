.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 121
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.gone
pushi.e -5
pushi.e 413
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushi.e 1
pop.v.i self.gone

:[4]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.gone

:[6]
push.v self.gone
pushi.e 1
cmp.i.v EQ
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]
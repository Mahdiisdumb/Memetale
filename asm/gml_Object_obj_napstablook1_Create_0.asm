.localvar 0 arguments

:[0]
pushglb.v global.plot
push.d 10.5
cmp.d.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.talkedto
call.i murdererlv1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushglb.v global.plot
push.d 10.4
cmp.d.v LT
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
push.d 10.4
pop.v.d global.plot

:[end]
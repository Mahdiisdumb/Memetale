.localvar 0 arguments

:[0]
pushi.e 50
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.conversation
pushglb.v global.plot
pushi.e 6
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushglb.v global.plot
push.d 5.5
cmp.d.v EQ
bf [4]

:[3]
pushi.e 3
pop.v.i self.conversation

:[4]
pushglb.v global.plot
pushi.e 6
cmp.i.v EQ
bf [end]

:[5]
pushi.e 4
pop.v.i self.conversation

:[end]
.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.read
pushbltn.v self.room
pushi.e 154
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.plot
pushi.e 135
cmp.i.v LT
bf [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]
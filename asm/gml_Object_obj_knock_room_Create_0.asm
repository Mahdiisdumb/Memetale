.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.read
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushbltn.v self.room
pushi.e 40
cmp.i.v LT
bf [3]

:[1]
pushglb.v global.plot
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
pushi.e 0
pop.v.i self.knock

:[end]
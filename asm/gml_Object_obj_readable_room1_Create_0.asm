.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.read
pushi.e 0
pop.v.i self.specialread
pushi.e 1
pop.v.i self.cantalk
push.i 438274832
pop.v.i self.mydialoguer
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushbltn.v self.room
pushi.e 40
cmp.i.v LT
bf [end]

:[1]
pushglb.v global.plot
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]
.localvar 0 arguments

:[0]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
pushi.e 180
pop.v.i self.image_angle

:[2]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]
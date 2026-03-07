.localvar 0 arguments

:[0]
push.v self.scale
push.d 0.03
sub.d.v
pop.v.v self.scale
push.v self.scale
pop.v.v self.image_xscale
push.v self.scale
pop.v.v self.image_yscale
push.v self.scale
push.d 0.1
cmp.d.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]
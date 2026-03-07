.localvar 0 arguments

:[0]
push.v self.y
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.image_yscale
push.d 0.2
add.d.v
pop.v.v self.image_yscale
push.v self.vspeed
push.d 0.2
sub.d.v
pop.v.v self.vspeed

:[end]
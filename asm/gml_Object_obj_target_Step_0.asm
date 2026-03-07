.localvar 0 arguments

:[0]
push.v self.fade
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
push.d 0.08
sub.d.v
pop.v.v self.image_alpha
push.v self.image_xscale
push.d 0.06
sub.d.v
pop.v.v self.image_xscale
push.v self.x
push.d 15.8
add.d.v
pop.v.v self.x

:[2]
push.v self.image_xscale
push.d 0.08
cmp.d.v LT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]
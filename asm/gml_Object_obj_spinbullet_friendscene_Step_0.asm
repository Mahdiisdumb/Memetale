.localvar 0 arguments

:[0]
push.v self.fade
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.f_timer
pushi.e 1
add.i.v
pop.v.v self.f_timer
push.v self.f_timer
pushi.e 8
cmp.i.v GT
bf [3]

:[2]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[3]
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]
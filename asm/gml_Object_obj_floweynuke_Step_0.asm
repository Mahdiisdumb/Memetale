.localvar 0 arguments

:[0]
push.v self.fader
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.4
cmp.d.v LT
bf [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]
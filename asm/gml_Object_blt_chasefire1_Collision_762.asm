.localvar 0 arguments

:[0]
push.v self.vspeed
neg.v
pop.v.v self.vspeed
push.v self.bounced
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.d 0.04
pop.v.d self.friction

:[end]
.localvar 0 arguments

:[0]
pushi.e 30
conv.i.v
call.i random(argc=1)
pop.v.v self.check
push.v self.check
pushi.e 29
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.image_speed

:[end]
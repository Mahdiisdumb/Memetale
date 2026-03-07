.localvar 0 arguments

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.image_alpha
push.d 0.9
cmp.d.v LT
bf [4]

:[3]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha
b [end]

:[4]
pushi.e 1
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.intangible

:[end]
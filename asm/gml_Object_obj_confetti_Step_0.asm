.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.x
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.x
push.v self.timer
pushi.e 1
sub.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 20
cmp.i.v LT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha

:[2]
push.v self.image_alpha
push.d 0.05
cmp.d.v LTE
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]
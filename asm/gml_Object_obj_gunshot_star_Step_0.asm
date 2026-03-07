.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 15
add.i.v
pop.v.v self.siner
push.v self.sineramt
push.v self.sinerspeed
add.v.v
pop.v.v self.sineramt
push.v self.sinerspeed
push.v self.sinergrav
add.v.v
pop.v.v self.sinerspeed
push.v self.image_angle
push.v self.ang
add.v.v
pop.v.v self.image_angle
push.v self.siner
call.i degtorad(argc=1)
pop.v.v self.asiner
push.v self.xstart
push.v self.asiner
call.i sin(argc=1)
push.v self.sineramt
mul.v.v
add.v.v
pop.v.v self.x
push.v self.ystart
push.v self.asiner
call.i cos(argc=1)
push.v self.sineramt
mul.v.v
add.v.v
pop.v.v self.y
pushi.e 1
push.v self.sinerspeed
pushi.e 20
conv.i.d
div.d.v
add.v.i
pop.v.v self.size
push.v self.size
push.d 0.2
cmp.d.v LT
bf [2]

:[1]
pushi.e 0
pop.v.i self.size

:[2]
push.v self.sinerspeed
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
push.v self.image_alpha
push.d 0.07
sub.d.v
pop.v.v self.image_alpha

:[4]
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.sineramt
push.d 0.5
cmp.d.v LTE
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]
.localvar 0 arguments

:[0]
push.v self.image_angle
pushi.e 10
add.i.v
pop.v.v self.image_angle
push.v self.size
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.size
push.d 0.1
add.d.v
pop.v.v self.size

:[2]
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale

:[end]
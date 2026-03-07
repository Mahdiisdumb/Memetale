.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
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
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 12
mul.i.v
pop.v.v self.image_angle
push.v self.size
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.v
pop.v.v self.image_xscale
push.v self.size
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.v
pop.v.v self.image_yscale

:[end]
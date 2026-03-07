.localvar 0 arguments

:[0]
push.v self.y
pushi.e 250
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.x
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.sinerfactor
mul.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
push.v self.sinerfactor
mul.v.v
add.v.v
pop.v.v self.y
push.v self.image_angle
push.v self.rotspeed
add.v.v
pop.v.v self.image_angle

:[end]
.localvar 0 arguments

:[0]
pushi.e 364
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[1]
pushi.e 364
pop.v.i self.op
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.v self.y
pushi.e 400
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v self.image_angle
pushi.e 8
add.i.v
pop.v.v self.image_angle
push.v self.vspeed
push.d 0.3
add.d.v
pop.v.v self.vspeed
b [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]
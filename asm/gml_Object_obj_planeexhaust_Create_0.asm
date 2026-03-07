.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.size
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.alpha
push.d 0.2
pop.v.d self.image_speed
pushi.e -2
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.hspeed
pushi.e 90
pop.v.i self.gravity_direction
push.d 0.2
pop.v.d self.gravity
pushi.e 1
pop.v.i self.alpha
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle

:[end]
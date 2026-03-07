.localvar 0 arguments

:[0]
pushi.e 180
pop.v.i self.image_angle
push.v self.x
pushi.e 5
sub.i.v
pop.v.v self.x
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
pushi.e 1
pop.v.i self.rbord
pushi.e 2
conv.i.v
call.i random(argc=1)
pop.v.v self.r
pushi.e 90
pop.v.i self.gravity_direction
pushi.e 0
pop.v.i self.hspeed
pushi.e -2
pop.v.i self.vspeed

:[end]
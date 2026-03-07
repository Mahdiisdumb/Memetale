.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_angle
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [end]

:[1]
pushi.e 0
pop.v.i self.rbord
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x
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
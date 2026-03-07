.localvar 0 arguments

:[0]
pushi.e 270
pop.v.i self.image_angle
pushi.e 0
pop.v.i self.dropdown
pushi.e 1
pop.v.i self.damageable
pushi.e 1
pop.v.i self.image_alpha
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y
pushi.e 2
conv.i.v
call.i random(argc=1)
pop.v.v self.r
push.v self.r
pushi.e 1
cmp.i.v GTE
bf [2]

:[1]
pushi.e 0
pop.v.i self.gravity_direction
pushi.e 2
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
b [end]

:[2]
pushi.e 180
pop.v.i self.gravity_direction
pushi.e -2
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed

:[end]
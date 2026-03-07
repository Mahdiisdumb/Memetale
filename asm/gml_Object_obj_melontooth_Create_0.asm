.localvar 0 arguments

:[0]
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
push.v self.direction
pop.v.v self.image_angle
push.v self.image_angle
push.v self.x
push.v 744.x
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.image_angle
push.v self.image_angle
pop.v.v self.direction
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.overall
pushi.e 8
pop.v.i self.dmg

:[end]
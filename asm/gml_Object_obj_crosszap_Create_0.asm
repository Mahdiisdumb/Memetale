.localvar 0 arguments

:[0]
push.v 744.y
pushi.e 10
add.i.v
push.v 744.x
pushi.e 10
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
pushi.e 5
pop.v.i self.speed
push.d 0.1
pop.v.d self.friction
pushi.e 75
pop.v.i self.exist
push.v self.direction
pushi.e 90
sub.i.v
pop.v.v self.image_angle
pushi.e 8
pop.v.i self.dmg

:[end]
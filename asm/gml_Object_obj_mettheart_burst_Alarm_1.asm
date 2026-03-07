.localvar 0 arguments

:[0]
push.v self.homey
push.v self.homex
pushi.e 5
sub.i.v
call.i distance_to_point(argc=2)
pop.v.v self.hdist
push.v self.homey
push.v self.homex
pushi.e 5
sub.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.hdir
push.v self.hdist
pushi.e 5
conv.i.d
div.d.v
pop.v.v self.speed
push.v self.hdir
pop.v.v self.direction

:[end]
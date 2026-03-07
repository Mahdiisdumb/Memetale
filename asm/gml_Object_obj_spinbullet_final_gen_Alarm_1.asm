.localvar 0 arguments

:[0]
push.v self.centerx
pop.v.v 1654.centerx
push.v self.centery
pop.v.v 1654.centery
pushi.e 1654
pushenv [2]

:[1]
pushi.e 2358
pop.v.i self.sprite_index
push.d -1.2
conv.d.v
push.v self.centery
push.v self.centerx
call.i move_towards_point(argc=3)
popz.v
push.v self.centery
push.v self.centerx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.gravity_direction
push.d 0.015
pop.v.d self.gravity

:[2]
popenv [1]

:[end]
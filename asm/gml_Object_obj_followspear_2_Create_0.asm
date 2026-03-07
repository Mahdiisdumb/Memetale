.localvar 0 arguments

:[0]
pushi.e 38
pop.v.i self.rotspeed
pushi.e 0
pop.v.i self.image_alpha
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.offsetdir
push.v self.offsetdir
pushi.e 20
add.i.v
pop.v.v self.image_angle
push.v self.offsetdir
pop.v.v self.direction
pushi.e 4
pop.v.i self.speed
push.d 0.2
pop.v.d self.friction
pushi.e 11
pop.v.i self.dmg
pushi.e 0
pop.v.i self.deactivate
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.fade

:[end]
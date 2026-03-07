.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
push.v self.x
push.v 744.xstart
cmp.v.v LT
bf [2]

:[1]
pushi.e 3
pop.v.i self.hspeed
push.d 0.1
pop.v.d self.gravity
pushi.e 180
pop.v.i self.gravity_direction
pushi.e -3
pop.v.i self.vspeed
b [end]

:[2]
pushi.e 1
pop.v.i self.image_index
pushi.e -3
pop.v.i self.hspeed
push.d 0.1
pop.v.d self.gravity
pushi.e 0
pop.v.i self.gravity_direction
pushi.e -3
pop.v.i self.vspeed

:[end]
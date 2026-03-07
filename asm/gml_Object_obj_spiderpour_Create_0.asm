.localvar 0 arguments

:[0]
pushi.e 20
pop.v.i self.image_angle
push.d 0.2
pop.v.d self.image_xscale
push.d 0.2
pop.v.d self.image_yscale
push.d 0.2
pop.v.d self.gravity
pushi.e 3
pop.v.i self.vspeed
pushi.e -1
pop.v.i self.hspeed
pushi.e 320
pop.v.i self.gravity_direction
push.v 363.purple
pushi.e 80
cmp.i.v GT
bf [end]

:[1]
pushi.e 0
pop.v.i self.visible

:[end]
.localvar 0 arguments

:[0]
push.d 0.2
pop.v.d self.friction
push.d 0.5
pop.v.d self.gravity
pushi.e 270
pop.v.i self.gravity_direction
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.inithspeed

:[end]
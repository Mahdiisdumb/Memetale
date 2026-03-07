.localvar 0 arguments

:[0]
push.d -0.2
pop.v.d self.friction
push.d 0.5
pop.v.d self.size
push.d 0.5
pop.v.d self.image_xscale
push.d 0.5
pop.v.d self.image_yscale
pushi.e 0
pop.v.i self.inithspeed
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]
.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 180
conv.i.v
call.i random(argc=1)
pop.v.v self.direction
pushi.e 4
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.on
pushi.e 270
pop.v.i self.gravity_direction
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]
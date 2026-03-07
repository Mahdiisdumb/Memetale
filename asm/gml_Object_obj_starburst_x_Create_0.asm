.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.size
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
pushi.e 60
pop.v.i self.aspeed
pushi.e 1
pop.v.i self.image_alpha

:[end]
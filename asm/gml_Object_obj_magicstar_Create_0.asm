.localvar 0 arguments

:[0]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
pushi.e 1
pop.v.i self.image_alpha
push.d 0.1
pop.v.d self.size
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.d 0.1
pop.v.d self.image_speed

:[end]
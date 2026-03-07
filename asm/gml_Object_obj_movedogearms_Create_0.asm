.localvar 0 arguments

:[0]
push.d 0.5
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.a
pushi.e 0
pop.v.i self.b
push.v self.y
pushi.e 8
sub.i.v
pop.v.v self.y

:[end]
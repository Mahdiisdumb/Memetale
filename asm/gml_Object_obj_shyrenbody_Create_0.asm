.localvar 0 arguments

:[0]
push.d 0.2
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.siny
push.v self.y
pop.v.v self.yo
push.l 328173821312
pop.v.l self.creator
pushi.e 260
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 260
pop.v.i self.creator

:[end]
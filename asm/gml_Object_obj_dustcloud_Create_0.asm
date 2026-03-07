.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
call.i random(argc=1)
push.d 0.7
add.d.v
pop.v.v self.tim
push.v self.tim
pop.v.v self.image_xscale
push.v self.tim
pop.v.v self.image_yscale
push.d 0.25
pop.v.d self.image_speed
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]
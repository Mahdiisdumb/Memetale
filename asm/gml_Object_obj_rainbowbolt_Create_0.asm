.localvar 0 arguments

:[0]
push.v self.x
pop.v.v self.thisx
push.v self.y
pop.v.v self.thisy
pushi.e 3
pop.v.i self.shake
pushi.e 0
pop.v.i self.ss
pushi.e 0
pop.v.i self.add
pushi.e 255
conv.i.v
call.i random(argc=1)
pop.v.v self.ac
pushi.e 244
conv.i.v
pushi.e 244
conv.i.v
push.v self.ac
call.i make_color_hsv(argc=3)
pop.v.v self.image_blend
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.image_index
pushi.e 0
pop.v.i self.giga
pushi.e 0
pop.v.i self.non

:[end]
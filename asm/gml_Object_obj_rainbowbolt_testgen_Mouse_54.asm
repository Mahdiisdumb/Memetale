.localvar 0 arguments

:[0]
pushi.e 586
conv.i.v
pushi.e 380
conv.i.v
pushbltn.v self.mouse_x
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.giga
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[end]
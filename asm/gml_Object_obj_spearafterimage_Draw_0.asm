.localvar 0 arguments

:[0]
push.v self.color
call.i draw_set_color(argc=1)
popz.v
push.v self.alpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.outy2
push.v self.outx2
push.v self.outy
push.v self.outx
push.v self.originy
push.v self.originx
call.i draw_triangle(argc=7)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.alpha
push.d 0.16
sub.d.v
pop.v.v self.alpha
push.v self.alpha
push.d 0.13
cmp.d.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]
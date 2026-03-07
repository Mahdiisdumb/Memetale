.localvar 0 arguments

:[0]
call.i draw_self_border(argc=0)
popz.v
push.v self.direction
push.v self.rotdir
add.v.v
pop.v.v self.direction
pushi.e 12
conv.i.v
call.i scr_bordercross(argc=1)
popz.v
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[end]
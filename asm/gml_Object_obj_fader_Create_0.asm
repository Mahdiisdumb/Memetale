.localvar 0 arguments

:[0]
pushbltn.v self.room_width
pushi.e 3
mul.i.v
pop.v.v self.image_xscale
pushbltn.v self.room_height
pushi.e 2
mul.i.v
pop.v.v self.image_yscale
pushi.e 1
pop.v.i self.image_alpha
push.d -0.08
pop.v.d self.tspeed
pushi.e 1
pop.v.i self.over
pushi.e -20
conv.i.v
pushi.e -20
conv.i.v
call.i action_move_to(argc=2)
popz.v

:[end]
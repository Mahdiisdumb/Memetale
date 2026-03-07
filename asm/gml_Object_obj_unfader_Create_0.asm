.localvar 0 arguments

:[0]
pushbltn.v self.room_width
pushi.e 2
mul.i.v
pop.v.v self.image_xscale
pushbltn.v self.room_height
pop.v.v self.image_yscale
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i action_move_to(argc=2)
popz.v
pushi.e 0
pop.v.i self.image_alpha
push.d 0.08
pop.v.d self.tspeed
pushi.e 0
pop.v.i self.over

:[end]
.localvar 0 arguments

:[0]
pushbltn.v self.room_width
pop.v.v self.image_xscale
pushi.e 70
pop.v.i self.image_yscale
push.v 100.y
push.v 100.x
call.i action_move_to(argc=2)
popz.v
pushi.e 0
pop.v.i self.image_alpha
push.d 0.1
pop.v.d self.tspeed
pushi.e 0
pop.v.i self.over

:[end]
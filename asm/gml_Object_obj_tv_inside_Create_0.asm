.localvar 0 arguments

:[0]
push.d 0.1
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.siner
call.i scr_floweybodysave(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]
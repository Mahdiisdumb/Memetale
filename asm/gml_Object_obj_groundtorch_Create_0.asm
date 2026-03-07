.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
push.d 0.5
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.glow
call.i scr_depth(argc=0)
popz.v

:[end]
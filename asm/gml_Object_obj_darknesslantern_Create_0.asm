.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.glow
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.glowup
pushi.e 0
pop.v.i self.glowtimer

:[end]
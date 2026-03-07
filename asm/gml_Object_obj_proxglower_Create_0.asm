.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 20
pop.v.i self.maxdist
call.i scr_depth(argc=0)
popz.v

:[end]
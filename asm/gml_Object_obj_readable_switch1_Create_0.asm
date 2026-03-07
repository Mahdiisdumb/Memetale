.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 117
conv.i.v
call.i script_execute(argc=1)
popz.v
pushi.e 0
pop.v.i self.image_speed

:[end]
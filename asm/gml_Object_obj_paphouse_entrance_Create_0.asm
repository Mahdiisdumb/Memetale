.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.read
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.dooract
pushi.e 0
pop.v.i self.touched
pushi.e -5
pushi.e 88
push.v [array]global.flag
pushi.e 1
cmp.i.v GT
bf [end]

:[1]
pushi.e 1
pop.v.i self.dooract

:[end]
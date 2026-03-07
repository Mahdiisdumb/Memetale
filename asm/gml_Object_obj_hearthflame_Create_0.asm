.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
push.d 0.25
pop.v.d self.image_speed

:[end]
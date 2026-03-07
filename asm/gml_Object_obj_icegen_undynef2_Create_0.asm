.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.d 0.15
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.hspeed
call.i scr_murderlv(argc=0)
pushi.e 7
cmp.i.v GTE
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]
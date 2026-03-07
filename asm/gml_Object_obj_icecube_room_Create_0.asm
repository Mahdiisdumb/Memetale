.localvar 0 arguments

:[0]
push.d 1.5
pop.v.d self.hspeed
push.d 0.1
pop.v.d self.image_speed
push.i 999989
pop.v.i self.depth
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
call.i scr_murderlv(argc=0)
pushi.e 7
cmp.i.v GTE
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]
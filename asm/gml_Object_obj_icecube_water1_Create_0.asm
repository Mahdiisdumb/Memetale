.localvar 0 arguments

:[0]
push.d 0.1
pop.v.d self.image_speed
pushbltn.v self.room
pushi.e 82
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.d 1.5
conv.d.v
pushi.e 33
conv.i.v
call.i path_start(argc=4)
popz.v

:[2]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
call.i scr_murderlv(argc=0)
pushi.e 7
cmp.i.v GTE
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]
.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 60
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i scr_murderlv(argc=0)
pushi.e 7
cmp.i.v GTE
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]
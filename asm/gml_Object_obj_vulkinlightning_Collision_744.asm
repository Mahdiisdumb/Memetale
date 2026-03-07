.localvar 0 arguments

:[0]
pushglb.v global.sp
pushi.e 8
cmp.i.v LT
bf [2]

:[1]
push.v global.sp
pushi.e 2
add.i.v
pop.v.v global.sp

:[2]
call.i scr_damagestandard_x(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]
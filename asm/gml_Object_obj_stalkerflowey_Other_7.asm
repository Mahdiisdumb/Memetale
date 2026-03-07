.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 9
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
call.i instance_destroy(argc=0)
popz.v

:[end]
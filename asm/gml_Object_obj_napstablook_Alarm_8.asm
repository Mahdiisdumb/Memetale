.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 23
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushglb.v global.currentroom
call.i room_goto(argc=1)
popz.v

:[end]
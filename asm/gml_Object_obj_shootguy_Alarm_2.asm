.localvar 0 arguments

:[0]
pushi.e 1244
pushenv [2]

:[1]
pushi.e 1243
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]

:[end]
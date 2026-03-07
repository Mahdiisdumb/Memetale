.localvar 0 arguments

:[0]
push.v other.id
conv.v.i
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
pushi.e 1246
pushenv [4]

:[3]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
popenv [3]
call.i instance_destroy(argc=0)
popz.v

:[end]
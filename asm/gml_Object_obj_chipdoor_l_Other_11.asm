.localvar 0 arguments

:[0]
pushi.e 6
conv.i.v
push.v self.y
pushi.e 70
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_position(argc=3)
pop.v.v self.g
push.v self.g
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.g
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[end]
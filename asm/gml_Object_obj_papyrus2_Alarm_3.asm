.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
add.i.v
pop.v.v self.conversation
pushi.e 1339
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]

:[end]
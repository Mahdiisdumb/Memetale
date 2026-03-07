.localvar 0 arguments

:[0]
push.v self.creator
conv.v.i
pushenv [2]

:[1]
pushi.e 150
conv.i.v
call.i script_execute(argc=1)
popz.v

:[2]
popenv [1]
pushi.e 785
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[end]
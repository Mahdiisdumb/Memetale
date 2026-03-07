.localvar 0 arguments

:[0]
pushi.e 1339
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 4
pop.v.i self.conversation
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]
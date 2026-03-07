.localvar 0 arguments

:[0]
pushi.e 1576
pushenv [2]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i path_start(argc=4)
popz.v

:[2]
popenv [1]
pushi.e 3
pop.v.i self.jump

:[end]
.localvar 0 arguments

:[0]
pushi.e 863
pushenv [2]

:[1]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 7
conv.i.v
call.i path_start(argc=4)
popz.v

:[2]
popenv [1]
pushi.e 40
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]
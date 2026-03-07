.localvar 0 arguments

:[0]
push.v self.interacter
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
push.v self.solider
conv.v.i
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 811
conv.i.v
pushi.e 112
conv.i.v
pushi.e 172
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.doorer

:[end]
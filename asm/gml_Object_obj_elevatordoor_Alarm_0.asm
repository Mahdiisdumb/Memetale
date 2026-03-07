.localvar 0 arguments

:[0]
pushi.e 20
pop.v.i self.side
pushi.e 2
pop.v.i self.con
push.v self.s1
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
push.v self.s2
conv.v.i
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]
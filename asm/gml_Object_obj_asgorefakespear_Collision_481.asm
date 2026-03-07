.localvar 0 arguments

:[0]
push.v other.id
conv.v.i
pushenv [2]

:[1]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
popenv [1]
pushi.e 483
pushenv [4]

:[3]
pushi.e 40
pop.v.i self.con

:[4]
popenv [3]

:[end]
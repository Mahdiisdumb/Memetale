.localvar 0 arguments

:[0]
pushi.e 138
conv.i.v
call.i caster_stop(argc=1)
popz.v
push.v self.boss
conv.v.i
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.acon
pushi.e 31
pop.v.i self.reach2
pushi.e 3
pop.v.i self.acon2

:[2]
popenv [1]

:[end]
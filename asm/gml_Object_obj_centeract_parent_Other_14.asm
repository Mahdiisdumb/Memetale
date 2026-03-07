.localvar 0 arguments

:[0]
pushi.e 1590
pushenv [2]

:[1]
pushi.e 1000
pop.v.i self.soulmax

:[2]
popenv [1]
push.v 1591.dcon
pushi.e 30
cmp.i.v EQ
bf [end]

:[3]
pushi.e 31
pop.v.i 1591.dcon
call.i instance_destroy(argc=0)
popz.v

:[end]
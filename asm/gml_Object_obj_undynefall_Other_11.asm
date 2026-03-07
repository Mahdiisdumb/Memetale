.localvar 0 arguments

:[0]
push.v self.waterthing
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1300
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.havewater

:[3]
popenv [2]
pushi.e 10
pop.v.i self.con
pushi.e 1
pop.v.i self.waterthing
pushi.e 1
pop.v.i global.interact
pushi.e 784
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]

:[end]
.localvar 0 arguments

:[0]
pushi.e 30
pop.v.i self.w
pushi.e 30
pop.v.i self.h
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.siner
pushi.e 186
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]

:[end]
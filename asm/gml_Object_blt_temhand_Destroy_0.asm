.localvar 0 arguments

:[0]
push.v self.object_index
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 295
pushenv [3]

:[2]
pushi.e 30
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[3]
popenv [2]

:[end]
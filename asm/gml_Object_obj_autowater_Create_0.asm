.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 366
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e 3
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]
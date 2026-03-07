.localvar 0 arguments

:[0]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
b [end]

:[2]
pushi.e 1
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[end]
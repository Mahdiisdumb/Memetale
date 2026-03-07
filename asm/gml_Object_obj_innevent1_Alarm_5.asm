.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
pushi.e 1296
conv.i.v
call.i instance_find(argc=2)
pop.v.v self.nn
pushi.e 42
push.v self.nn
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
conv.i.v
pushi.e 1296
conv.i.v
call.i instance_find(argc=2)
pop.v.v self.jj
pushi.e 82
push.v self.jj
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact

:[end]
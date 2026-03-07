.localvar 0 arguments

:[0]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 780.count
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
pushi.e 0
pop.v.i self.visible
pushi.e 1
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm

:[end]
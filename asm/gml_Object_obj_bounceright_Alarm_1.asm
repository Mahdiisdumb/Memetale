.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1534
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[2]
pushi.e 10
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]
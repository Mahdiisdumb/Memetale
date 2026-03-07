.localvar 0 arguments

:[0]
push.v self.noke
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
pop.v.i global.interact
pushi.e 791
conv.i.v
push.v 1576.y
pushi.e 15
add.i.v
push.v 1576.x
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.noke

:[end]
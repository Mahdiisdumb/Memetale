.localvar 0 arguments

:[0]
pushi.e 990
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[1]
push.v self.x
push.v 990.x
pushi.e 28
add.i.v
cmp.v.v LT
bf [6]

:[2]
call.i instance_destroy(argc=0)
popz.v
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[3]
push.v self.iii
conv.v.i
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]

:[6]
push.v 1576.x
push.v self.gert
cmp.v.v LT
bf [8]

:[7]
pushi.e 8
pop.v.i self.hspeed

:[8]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[9]
push.v 1576.x
pop.v.v self.gert

:[end]
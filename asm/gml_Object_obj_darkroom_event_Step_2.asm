.localvar 0 arguments

:[0]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1576.x
pushi.e 440
cmp.i.v LT
bt [3]

:[2]
push.v 1576.x
pushi.e 460
cmp.i.v GT
b [4]

:[3]
push.e 1

:[4]
bf [end]

:[5]
push.v 1576.y
pushi.e 526
cmp.i.v GT
bf [end]

:[6]
pushi.e 526
pop.v.i 1576.y

:[end]
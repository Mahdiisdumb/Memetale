.localvar 0 arguments

:[0]
push.v self.vic
pushi.e 977
conv.i.v
call.i instance_number(argc=1)
cmp.v.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.fvic

:[2]
push.v self.fvic
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.vic

:[4]
pushbltn.v self.room
pushi.e 63
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [7]

:[6]
push.e 0

:[7]
bf [end]

:[8]
push.v 1576.x
pushi.e 540
cmp.i.v GT
bf [10]

:[9]
push.v 1576.x
pushi.e 560
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [end]

:[12]
pushi.e 1507
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[13]
pushi.e 1507
conv.i.v
push.v 1576.y
push.v 1576.x
call.i instance_create(argc=3)
popz.v

:[end]
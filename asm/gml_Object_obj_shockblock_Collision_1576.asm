.localvar 0 arguments

:[0]
pushi.e 1000
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1576.x
pushi.e 150
cmp.i.v LT
bf [3]

:[2]
push.v 1576.y
pushi.e 135
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 135
pop.v.i 1576.y

:[6]
push.v 1576.x
pushi.e 84
cmp.i.v LT
bf [8]

:[7]
pushi.e 84
pop.v.i 1576.x

:[8]
push.v 1576.x
pushi.e 108
cmp.i.v LT
bf [10]

:[9]
push.v 1576.y
pushi.e 102
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 102
pop.v.i 1576.y

:[13]
push.v self.shocking
pushi.e 0
cmp.i.v EQ
bf [end]

:[14]
pushi.e 1
pop.v.i self.shocking

:[end]
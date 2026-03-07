.localvar 0 arguments

:[0]
push.v self.image_xscale
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 1589
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.id
pop.v.v 1589.rightarm

:[5]
push.v self.image_xscale
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
pushi.e 1589
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
push.v self.id
pop.v.v 1589.leftarm

:[end]
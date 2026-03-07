.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.direction
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 780
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
pushi.e 865
conv.i.v
push.v self.y
push.v self.x
pushi.e 12
sub.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]
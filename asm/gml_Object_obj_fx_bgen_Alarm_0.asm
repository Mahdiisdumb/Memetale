.localvar 0 arguments

:[0]
push.v self.attack
pushi.e 2
cmp.i.v EQ
bt [3]

:[1]
push.v self.attack
pushi.e 21
cmp.i.v EQ
bt [3]

:[2]
push.v self.attack
pushi.e 22
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [end]

:[5]
pushi.e 1639
conv.i.v
push.v 1597.y
push.v 1597.x
call.i instance_create(argc=3)
popz.v
pushi.e 1639
conv.i.v
push.v 1597.y
push.v 1597.x
push.v 1597.op
add.v.v
call.i instance_create(argc=3)
popz.v

:[end]
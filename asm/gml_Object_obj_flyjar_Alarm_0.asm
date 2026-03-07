.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.off
pushi.e 54
dup.i 0
push.i 0
cmp.i.i LTE
bt [2]

:[1]
pushi.e 305
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 30
add.i.v
call.i instance_create(argc=3)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[2]
popz.i

:[end]
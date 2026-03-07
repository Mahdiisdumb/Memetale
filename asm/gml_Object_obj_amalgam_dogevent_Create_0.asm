.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.no
pushi.e 0
pop.v.i self.dp
pushi.e 0
pop.v.i self.nod
pushi.e -5
pushi.e 490
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
pushi.e 30
dup.i 0
push.i 0
cmp.i.i LTE
bt [4]

:[3]
pushi.e 1561
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.no
conv.v.i
pop.v.v [array]self.dp
push.v self.no
pushi.e 1
add.i.v
pop.v.v self.no
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [3]

:[4]
popz.i
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.size
pushi.e 0
pop.v.i self.drawball
push.v self.x
pop.v.v self.dx
push.v self.y
pop.v.v self.dy
pushi.e 0
pop.v.i self.banim

:[end]
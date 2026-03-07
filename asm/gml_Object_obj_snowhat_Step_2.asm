.localvar 0 arguments

:[0]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1576.x
pushi.e 1
sub.i.v
pop.v.v self.x
push.v 1576.y
pushi.e 15
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.d
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.d

:[3]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [end]

:[4]
pushi.e 1508
conv.i.v
push.v self.y
pushi.e 15
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [6]

:[5]
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e 7
conv.i.v
call.i random(argc=1)
mul.v.v
pop.v.v self.grx
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e 4
conv.i.v
call.i random(argc=1)
mul.v.v
pop.v.v self.gry
pushi.e 1508
conv.i.v
push.v self.y
pushi.e 12
add.i.v
push.v self.gry
add.v.v
push.v self.x
pushi.e 10
add.i.v
push.v self.grx
add.v.v
call.i instance_create(argc=3)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [5]

:[6]
popz.i
call.i instance_destroy(argc=0)
popz.v

:[end]
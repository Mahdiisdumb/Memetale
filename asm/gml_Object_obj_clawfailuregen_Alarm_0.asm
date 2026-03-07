.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e 50
pushi.e 240
conv.i.v
call.i random(argc=1)
add.v.i
mul.v.v
push.v 744.x
add.v.v
pop.v.v self.xx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
add.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
pushi.e 40
sub.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.yy
pushi.e 533
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
popz.v

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [6]

:[3]
pushi.e 1
pushi.e 7
conv.i.v
call.i random(argc=1)
add.v.i
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [5]

:[4]
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e 50
pushi.e 50
conv.i.v
call.i random(argc=1)
add.v.i
mul.v.v
push.v 744.x
add.v.v
pop.v.v self.xx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.yy
pushi.e 534
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [4]

:[5]
popz.i

:[6]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [end]

:[7]
pushi.e 1
pushi.e 7
conv.i.v
call.i random(argc=1)
add.v.i
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [9]

:[8]
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e 200
pushi.e 50
conv.i.v
call.i random(argc=1)
add.v.i
mul.v.v
push.v 744.x
add.v.v
pop.v.v self.xx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.yy
pushi.e 534
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
pop.v.v self.gr
pushi.e 1
push.v self.gr
conv.v.i
pop.v.i [stacktop]self.gravity_direction
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [8]

:[9]
popz.i

:[end]
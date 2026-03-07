.localvar 0 arguments

:[0]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.dir
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
call.i random(argc=1)
add.v.v
pop.v.v self.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
call.i random(argc=1)
add.v.v
pop.v.v self.y
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [2]

:[1]
push.v 744.x
pushi.e 8
add.i.v
push.v self.dir
pushi.e 24
pushi.e 12
conv.i.v
call.i random(argc=1)
add.v.i
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v 744.y
pushi.e 8
add.i.v
push.v self.dir
pushi.e 24
pushi.e 12
conv.i.v
call.i random(argc=1)
add.v.i
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y

:[2]
pushi.e 543
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 3
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]
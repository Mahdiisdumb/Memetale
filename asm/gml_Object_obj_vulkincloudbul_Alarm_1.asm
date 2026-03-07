.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.speed
push.v 744.y
pushi.e 10
add.i.v
push.v 744.x
pushi.e 10
add.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 30
add.i.v
call.i point_direction(argc=4)
pop.v.v self.towarddir
pushi.e 30
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.initdir
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [5]

:[2]
pushi.e 331
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blt
push.v self.blt
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v self.towarddir
pushi.e 110
sub.i.v
push.v self.initdir
add.v.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.blt
conv.v.i
pop.v.v [stacktop]self.direction

:[4]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[5]
push.v self.firetime
pushi.e 1
add.i.v
pop.v.v self.firetime
push.v self.firetime
pushi.e 5
cmp.i.v LT
bf [7]

:[6]
push.v self.rate
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
b [end]

:[7]
push.v self.towarddir
pushi.e 110
sub.i.v
pushi.e 50
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.direction
pushi.e 2
pop.v.i self.speed

:[end]
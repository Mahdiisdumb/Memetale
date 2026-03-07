.localvar 0 arguments

:[0]
pushi.e 9
conv.i.v
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [5]

:[2]
pushi.e 226
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gl
push.v self.gl
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v self.direction
pushi.e 28
sub.i.v
push.v self.i
pushi.e 14
mul.i.v
add.v.v
push.v self.gl
conv.v.i
pop.v.v [stacktop]self.direction

:[4]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[5]
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [10]

:[7]
pushi.e 226
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gl
push.v self.gl
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[8]
push.v self.direction
pushi.e 28
sub.i.v
push.v self.i
pushi.e 14
mul.i.v
add.v.v
push.v self.gl
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.gl
conv.v.i
dup.i 0
push.v [stacktop]self.speed
push.d 1.5
sub.d.v
pop.i.v [stacktop]self.speed

:[9]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[10]
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [15]

:[12]
pushi.e 226
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gl
push.v self.gl
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[13]
push.v self.direction
pushi.e 28
sub.i.v
push.v self.i
pushi.e 14
mul.i.v
add.v.v
push.v self.gl
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.gl
conv.v.i
dup.i 0
push.v [stacktop]self.speed
pushi.e 3
sub.i.v
pop.i.v [stacktop]self.speed

:[14]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [11]

:[15]
pushi.e 226
pushenv [17]

:[16]
pushi.e 0
pop.v.i self.friction

:[17]
popenv [16]

:[end]
.localvar 0 arguments

:[0]
pushi.e 30
pop.v.i self.radius
pushi.e 0
pop.v.i self.ang
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [3]

:[2]
push.v self.i
pushi.e 18
mul.i.v
pop.v.v self.ang
push.v self.ang
push.v self.radius
call.i lengthdir_x(argc=2)
pop.v.v self.xx
push.v self.ang
push.v self.radius
call.i lengthdir_y(argc=2)
pop.v.v self.yy
pushi.e 1670
conv.i.v
push.v self.yy
push.v self.y
add.v.v
push.v self.xx
push.v self.x
add.v.v
call.i instance_create(argc=3)
pop.v.v self.fp
push.v self.ang
push.v self.fp
conv.v.i
pop.v.v [stacktop]self.direction
push.d 0.01
push.v self.fp
conv.v.i
pop.v.d [stacktop]self.speed
pushi.e 1
push.v self.fp
conv.v.i
pop.v.i [stacktop]self.go
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 2
pop.v.i self.spec

:[end]
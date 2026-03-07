.localvar 0 arguments

:[0]
pushi.e 40
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 538
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.sm
pushi.e 744
push.v self.sm
conv.v.i
pop.v.i [stacktop]self.king
pushi.e -1
push.v self.sm
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -1
push.v self.sm
conv.v.i
pushi.e 6
pop.v.i [array]self.alarm
push.v 744.y
pushi.e 6
add.i.v
push.v 744.x
pushi.e 6
add.i.v
push.v self.sm
conv.v.i
push.v [stacktop]self.y
push.v self.sm
conv.v.i
push.v [stacktop]self.x
call.i point_direction(argc=4)
push.v self.sm
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 4
push.v self.sm
conv.v.i
pop.v.i [stacktop]self.speed

:[end]
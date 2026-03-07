.localvar 0 arguments

:[0]
push.v self.num
pushi.e 6
cmp.i.v LT
bf [2]

:[1]
push.v self.image_angle
pushi.e 165
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xx
push.v self.image_angle
pushi.e 165
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yy
pushi.e 1649
conv.i.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
call.i instance_create(argc=3)
pop.v.v self.fl
push.v self.image_angle
push.v self.fl
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.num
pushi.e 1
add.i.v
pop.v.v self.num
b [end]

:[2]
pushi.e 50
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.num

:[end]
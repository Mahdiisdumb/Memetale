.localvar 0 arguments

:[0]
push.v self.num
pushi.e 7
cmp.i.v LT
bf [22]

:[1]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.on
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v self.image_angle
pushi.e 8
add.i.v
pop.v.v self.image_angle

:[6]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.on
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v self.image_angle
pushi.e 8
sub.i.v
pop.v.v self.image_angle

:[11]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.v self.on
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.v self.image_angle
pushi.e 8
sub.i.v
pop.v.v self.image_angle

:[16]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.v self.on
pushi.e 1
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.v self.image_angle
pushi.e 8
add.i.v
pop.v.v self.image_angle

:[21]
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
pushi.e 7
push.v self.fl
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.num
pushi.e 1
add.i.v
pop.v.v self.num
b [end]

:[22]
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1
pop.v.i self.on
b [25]

:[24]
pushi.e 0
pop.v.i self.on

:[25]
pushi.e 30
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.num

:[end]
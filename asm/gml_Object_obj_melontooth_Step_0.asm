.localvar 0 arguments

:[0]
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
push.v self.direction
pop.v.v self.image_angle
push.v self.ystart
push.v 744.y
pushi.e 8
add.i.v
cmp.v.v LT
bf [2]

:[1]
push.v self.image_angle
push.v self.x
push.v 744.x
sub.v.v
pushi.e 8
add.i.v
push.d 1.5
div.d.v
add.v.v
pop.v.v self.image_angle
push.v self.overall
pushi.e 1
add.i.v
pop.v.v self.overall

:[2]
push.v self.ystart
push.v 744.y
pushi.e 8
add.i.v
cmp.v.v GT
bf [4]

:[3]
push.v self.image_angle
push.v self.x
push.v 744.x
sub.v.v
pushi.e 8
add.i.v
push.d 1.5
div.d.v
sub.v.v
pop.v.v self.image_angle
push.v self.overall
pushi.e 1
sub.i.v
pop.v.v self.overall

:[4]
push.v self.image_angle
pop.v.v self.direction
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.xstart
push.v self.direction
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.ystart
push.v self.direction
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v self.overall
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
add.v.v
pop.v.v self.y

:[end]
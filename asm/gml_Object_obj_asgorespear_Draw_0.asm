.localvar 0 arguments

:[0]
push.v 1575.left
conv.v.b
bf [2]

:[1]
push.v self.debuggo
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [8]

:[4]
push.v self.angle
pushi.e 8
sub.i.v
pop.v.v self.angle
pushi.e 1
conv.i.v
call.i control_check(argc=1)
conv.v.b
bf [6]

:[5]
push.v self.angle
pushi.e 16
sub.i.v
pop.v.v self.angle

:[6]
pushi.e 0
conv.i.v
call.i control_check(argc=1)
conv.v.b
bf [8]

:[7]
pushi.e 487
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.simg
push.v self.x
push.v self.simg
conv.v.i
pop.v.v [stacktop]self.originx
push.v self.y
push.v self.simg
conv.v.i
pop.v.v [stacktop]self.originy
push.v self.x
push.v self.angle
pushi.e 8
add.i.v
pushi.e 320
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
push.v self.simg
conv.v.i
pop.v.v [stacktop]self.outx
push.v self.y
push.v self.angle
pushi.e 8
add.i.v
pushi.e 320
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v self.simg
conv.v.i
pop.v.v [stacktop]self.outy
push.v self.x
push.v self.angle
pushi.e 40
sub.i.v
pushi.e 320
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
push.v self.simg
conv.v.i
pop.v.v [stacktop]self.outx2
push.v self.y
push.v self.angle
pushi.e 40
sub.i.v
pushi.e 320
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v self.simg
conv.v.i
pop.v.v [stacktop]self.outy2
push.v self.color
push.v self.simg
conv.v.i
pop.v.v [stacktop]self.color
pushi.e 488
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.simg2
push.v self.angle
pushi.e 16
sub.i.v
push.v self.simg2
conv.v.i
pop.v.v [stacktop]self.angle
push.v self.simg2
conv.v.i
dup.i 0
push.v [stacktop]self.alpha
push.d 0.017
sub.d.v
pop.i.v [stacktop]self.alpha
push.v self.color
push.v self.simg2
conv.v.i
pop.v.v [stacktop]self.color
pushi.e 488
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.simg3
push.v self.angle
pushi.e 40
sub.i.v
push.v self.simg3
conv.v.i
pop.v.v [stacktop]self.angle
push.v self.color
push.v self.simg3
conv.v.i
pop.v.v [stacktop]self.color
pushi.e 488
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.simg4
push.v self.angle
pushi.e 8
add.i.v
push.v self.simg4
conv.v.i
pop.v.v [stacktop]self.angle
push.v self.simg4
conv.v.i
dup.i 0
push.v [stacktop]self.alpha
push.d 0.034
sub.d.v
pop.i.v [stacktop]self.alpha
push.v self.color
push.v self.simg4
conv.v.i
pop.v.v [stacktop]self.color
push.v self.angle
pushi.e 40
sub.i.v
pop.v.v self.angle

:[8]
push.v 1575.right
conv.v.b
bf [10]

:[9]
push.v self.debuggo
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [16]

:[12]
push.v self.angle
pushi.e 8
add.i.v
pop.v.v self.angle
pushi.e 1
conv.i.v
call.i control_check(argc=1)
conv.v.b
bf [14]

:[13]
push.v self.angle
pushi.e 16
add.i.v
pop.v.v self.angle

:[14]
pushi.e 0
conv.i.v
call.i control_check(argc=1)
conv.v.b
bf [16]

:[15]
pushi.e 487
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.simg
push.v self.x
push.v self.simg
conv.v.i
pop.v.v [stacktop]self.originx
push.v self.y
push.v self.simg
conv.v.i
pop.v.v [stacktop]self.originy
push.v self.x
push.v self.angle
pushi.e 8
sub.i.v
pushi.e 320
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
push.v self.simg
conv.v.i
pop.v.v [stacktop]self.outx
push.v self.y
push.v self.angle
pushi.e 8
sub.i.v
pushi.e 320
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v self.simg
conv.v.i
pop.v.v [stacktop]self.outy
push.v self.x
push.v self.angle
pushi.e 40
add.i.v
pushi.e 320
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
push.v self.simg
conv.v.i
pop.v.v [stacktop]self.outx2
push.v self.y
push.v self.angle
pushi.e 40
add.i.v
pushi.e 320
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
push.v self.simg
conv.v.i
pop.v.v [stacktop]self.outy2
push.v self.color
push.v self.simg
conv.v.i
pop.v.v [stacktop]self.color
pushi.e 488
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.simg2
push.v self.angle
pushi.e 16
add.i.v
push.v self.simg2
conv.v.i
pop.v.v [stacktop]self.angle
push.v self.simg2
conv.v.i
dup.i 0
push.v [stacktop]self.alpha
push.d 0.017
sub.d.v
pop.i.v [stacktop]self.alpha
push.v self.color
push.v self.simg2
conv.v.i
pop.v.v [stacktop]self.color
pushi.e 488
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.simg3
push.v self.angle
pushi.e 40
add.i.v
push.v self.simg3
conv.v.i
pop.v.v [stacktop]self.angle
push.v self.color
push.v self.simg3
conv.v.i
pop.v.v [stacktop]self.color
pushi.e 488
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.simg4
push.v self.angle
pushi.e 8
sub.i.v
push.v self.simg4
conv.v.i
pop.v.v [stacktop]self.angle
push.v self.simg4
conv.v.i
dup.i 0
push.v [stacktop]self.alpha
push.d 0.034
sub.d.v
pop.i.v [stacktop]self.alpha
push.v self.color
push.v self.simg4
conv.v.i
pop.v.v [stacktop]self.color
push.v self.angle
pushi.e 40
add.i.v
pop.v.v self.angle

:[16]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.3
mul.d.v
add.v.v
pop.v.v self.y
push.v self.angle
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.02
mul.d.v
add.v.v
pop.v.v self.angle
push.v self.angle
pushi.e 55
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xhand1
push.v self.angle
pushi.e 55
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yhand1
push.v self.x
push.v self.xhand1
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.rdistx
push.v self.y
push.v self.yhand1
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.rdisty
push.v self.armtest
pushi.e 1
cmp.i.v EQ
bf [27]

:[17]
pushi.e 489
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [27]

:[18]
pushi.e 489
pushi.e 5
push.v [array]self.party
pushi.e 64
add.i.v
push.v 489.y
add.v.v
pop.v.v self.point1y
pushi.e 489
pushi.e 5
push.v [array]self.partx
pushi.e 14
add.i.v
push.v 489.x
add.v.v
pop.v.v self.point1x
push.v self.y
push.v self.yhand1
sub.v.v
push.v self.x
push.v self.xhand1
sub.v.v
push.v self.point1y
push.v self.point1x
call.i point_distance(argc=4)
pop.v.v self.armlength
push.v self.y
push.v self.yhand1
sub.v.v
push.v self.x
push.v self.xhand1
sub.v.v
push.v self.point1y
push.v self.point1x
call.i point_direction(argc=4)
pop.v.v self.armangle
push.v self.armlength
pushi.e 40
conv.i.d
div.d.v
pop.v.v self.armsize
push.v self.armsize
push.d 0.35
cmp.d.v LT
bf [20]

:[19]
pushi.e 0
pop.v.i self.armsize

:[20]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.armangle
pushi.e 2
conv.i.v
push.v self.armsize
pushi.e 2
mul.i.v
push.v self.point1y
push.v self.point1x
pushi.e 0
conv.i.v
pushi.e 633
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 489
pushi.e 4
push.v [array]self.party
pushi.e 64
add.i.v
push.v 489.y
add.v.v
pop.v.v self.point1y
pushi.e 489
pushi.e 4
push.v [array]self.partx
pushi.e 34
add.i.v
push.v 489.x
add.v.v
pop.v.v self.point1x
push.v self.rdisty
push.v self.rdistx
push.v self.point1y
push.v self.point1x
call.i point_distance(argc=4)
pop.v.v self.armlength
push.v self.armlength
pushi.e 100
cmp.i.v GT
bf [22]

:[21]
push.v self.armlength
pushi.e 100
sub.i.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.armoff
push.v self.x
push.v self.angle
pushi.e 55
push.v self.armoff
sub.v.i
call.i lengthdir_x(argc=2)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.rdistx
push.v self.y
push.v self.angle
pushi.e 55
push.v self.armoff
sub.v.i
call.i lengthdir_y(argc=2)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.rdisty
push.v self.rdisty
push.v self.rdistx
push.v self.point1y
push.v self.point1x
call.i point_distance(argc=4)
pop.v.v self.armlength

:[22]
push.v self.rdisty
push.v self.rdistx
push.v self.point1y
push.v self.point1x
call.i point_direction(argc=4)
pop.v.v self.armangle
push.v self.armangle
pushi.e 100
cmp.i.v GT
bf [24]

:[23]
push.v self.point1y
pushi.e 12
sub.i.v
pop.v.v self.point1y

:[24]
push.v self.armlength
pushi.e 40
conv.i.d
div.d.v
pop.v.v self.armsize
push.v self.armsize
push.d 0.6
cmp.d.v LT
bf [26]

:[25]
pushi.e 0
pop.v.i self.armsize

:[26]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.armangle
pushi.e 2
conv.i.v
push.v self.armsize
pushi.e 2
mul.i.v
push.v self.point1y
push.v self.point1x
pushi.e 0
conv.i.v
pushi.e 633
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[27]
pushi.e 49
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [29]

:[28]
push.v self.debuggo
pushi.e 1
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 255
pop.v.i self.color

:[32]
pushi.e 50
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [34]

:[33]
push.v self.debuggo
pushi.e 1
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
push.i 4235519
pop.v.i self.color

:[37]
pushi.e 51
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [39]

:[38]
push.v self.debuggo
pushi.e 1
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 255
conv.i.v
pushi.e 130
conv.i.v
pushi.e 90
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.color

:[42]
pushi.e 1
conv.i.v
push.v self.color
push.v self.angle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.angle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.rdisty
push.v self.rdistx
push.v self.image_index
pushi.e 642
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.angle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.yhand1
sub.v.v
push.v self.x
push.v self.xhand1
sub.v.v
push.v self.image_index
pushi.e 643
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]
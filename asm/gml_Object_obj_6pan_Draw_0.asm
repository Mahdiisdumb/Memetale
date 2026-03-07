.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.rot
pushi.e 180
add.i.v
pushi.e 220
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xox
push.v self.rot
pushi.e 180
add.i.v
pushi.e 220
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yoy
pushi.e 0
conv.i.v
push.v self.y
pushi.e 80
add.i.v
pushi.e -20
push.v self.x
add.v.i
push.v self.xox
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.y
push.v self.yoy
add.v.v
push.v self.x
push.v self.xox
add.v.v
push.v self.y
push.v self.x
call.i draw_triangle(argc=7)
popz.v
push.v self.ss
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.x
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.y

:[2]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.rot
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.rot
pushi.e 40
add.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter
pushi.e 57
cmp.i.v GT
bf [8]

:[7]
push.v self.counter
pushi.e 60
cmp.i.v LT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v self.rot
pushi.e 2
add.i.v
pop.v.v self.rot

:[11]
push.v self.counter
pushi.e 60
cmp.i.v GT
bf [13]

:[12]
push.v self.counter
pushi.e 62
cmp.i.v LT
b [14]

:[13]
push.e 0

:[14]
bf [20]

:[15]
push.v self.rot
pushi.e 8
sub.i.v
pop.v.v self.rot
push.v self.spec
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v self.num
pushi.e 1
add.i.v
pop.v.v self.num

:[17]
push.v self.num
pushi.e 12
cmp.i.v NEQ
bf [19]

:[18]
push.v self.rot
pushi.e 180
add.i.v
pushi.e 150
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xox
push.v self.rot
pushi.e 180
add.i.v
pushi.e 70
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.yoy
pushi.e 1624
conv.i.v
push.v self.y
push.v self.yoy
add.v.v
push.v self.x
push.v self.xox
add.v.v
call.i instance_create(argc=3)
pop.v.v self.fr
push.v self.fr
conv.v.i
dup.i 0
push.v [stacktop]self.gravity
push.d 0.1
push.d 0.08
conv.d.v
call.i random(argc=1)
add.v.d
add.v.v
pop.i.v [stacktop]self.gravity
pushi.e 1624
conv.i.v
push.v self.y
push.v self.yoy
add.v.v
push.v self.x
push.v self.xox
add.v.v
call.i instance_create(argc=3)
pop.v.v self.fr
pushi.e 1624
conv.i.v
push.v self.y
push.v self.yoy
add.v.v
push.v self.x
push.v self.xox
add.v.v
call.i instance_create(argc=3)
pop.v.v self.fr
push.v self.fr
conv.v.i
dup.i 0
push.v [stacktop]self.gravity
push.d 0.07
push.d 0.06
conv.d.v
call.i random(argc=1)
add.v.d
add.v.v
pop.i.v [stacktop]self.gravity
pushi.e 1624
conv.i.v
push.v self.y
push.v self.yoy
add.v.v
push.v self.x
push.v self.xox
add.v.v
call.i instance_create(argc=3)
pop.v.v self.fr
push.v self.fr
conv.v.i
dup.i 0
push.v [stacktop]self.gravity
push.d 0.05
push.d 0.04
conv.d.v
call.i random(argc=1)
add.v.d
add.v.v
pop.i.v [stacktop]self.gravity
push.v self.id
push.v self.fr
conv.v.i
pop.v.v [stacktop]self.panparent
b [20]

:[19]
pushi.e 1626
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 140
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.act

:[20]
push.v self.counter
pushi.e 63
cmp.i.v GTE
bf [22]

:[21]
push.v self.counter
pushi.e 67
cmp.i.v LT
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.v self.rot
pushi.e 3
sub.i.v
pop.v.v self.rot

:[25]
push.v self.counter
pushi.e 63
cmp.i.v GTE
bf [27]

:[26]
push.v self.counter
pushi.e 72
cmp.i.v LT
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e 0
pop.v.i self.ss

:[30]
push.v self.counter
pushi.e 70
cmp.i.v GT
bf [32]

:[31]
push.v self.counter
pushi.e 72
cmp.i.v LT
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
push.v self.rot
pushi.e 6
add.i.v
pop.v.v self.rot

:[35]
push.v self.counter
pushi.e 72
cmp.i.v GTE
bf [end]

:[36]
pushi.e 0
pop.v.i self.image_index
push.v self.rot
pushi.e 5
add.i.v
pop.v.v self.rot
push.v self.rot
pushi.e 3
cmp.i.v GT
bf [end]

:[37]
pushi.e 1
pop.v.i self.ss
pushi.e 0
pop.v.i self.rot
pushi.e 50
pop.v.i self.counter
push.v self.num
pushi.e 12
cmp.i.v EQ
bf [end]

:[38]
pushi.e -20
pop.v.i self.counter

:[end]
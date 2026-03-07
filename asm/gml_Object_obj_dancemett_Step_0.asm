.localvar 0 arguments

:[0]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
sub.i.v
cmp.v.v GT
bf [2]

:[1]
push.v self.flash
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 547
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.flash

:[5]
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [8]

:[6]
push.v self.timer
push.v self.vspeed
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 60
conv.i.d
div.d.v
pop.v.v self.image_speed
push.v self.timer
pushi.e 60
cmp.i.v GT
bf [8]

:[7]
pushi.e 2
pop.v.i self.flash

:[8]
push.v self.flash
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.image_index
pushi.e 546
pop.v.i self.sprite_index
pushi.e 3
pop.v.i self.flash
push.d 0.5
pop.v.d self.image_speed

:[10]
push.v self.flash
pushi.e 3
cmp.i.v EQ
bf [13]

:[11]
push.v self.image_index
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
pushi.e 4
pop.v.i self.flash

:[13]
push.v self.flash
pushi.e 4
cmp.i.v EQ
bf [17]

:[14]
pushi.e 0
pop.v.i self.i
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [16]

:[15]
pushi.e 435
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.lt
pushi.e 1
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 545
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.i
pushi.e 180
mul.i.v
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e -1
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 0.1
push.d 0.05
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.gravity
push.v self.lt
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
push.v self.hspeed
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.v
push.d 0.25
sub.d.v
add.v.v
pop.i.v [stacktop]self.hspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [15]

:[16]
popz.i
pushi.e 5
pop.v.i self.flash

:[17]
push.v self.flash
pushi.e 5
cmp.i.v EQ
bf [20]

:[18]
push.v self.image_index
pushi.e 6
cmp.i.v EQ
bf [20]

:[19]
pushi.e 6
pop.v.i self.flash

:[20]
push.v self.flash
pushi.e 6
cmp.i.v EQ
bf [24]

:[21]
pushi.e 1
dup.i 0
push.i 0
cmp.i.i LTE
bt [23]

:[22]
pushi.e 435
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.lt
pushi.e 2
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 545
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.i
pushi.e 180
mul.i.v
pushi.e 90
add.i.v
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.direction
push.d -1.5
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.d
push.d 0.25
sub.d.v
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.vspeed
push.d 0.1
push.d 0.05
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.gravity
push.v self.lt
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
push.v self.hspeed
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.v
push.d 0.25
sub.d.v
add.v.v
pop.i.v [stacktop]self.hspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [22]

:[23]
popz.i
pushi.e 9
pop.v.i self.flash

:[24]
push.v self.flash
pushi.e 9
cmp.i.v EQ
bf [26]

:[25]
pushi.e 10
pop.v.i self.flash
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[26]
push.v self.y
pushbltn.v self.room_height
cmp.v.v GT
bf [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 22
add.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 2
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [32]

:[29]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 22
add.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 2
add.i.v
call.i collision_rectangle(argc=7)
pop.v.v self.g
push.v self.g
conv.v.i
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]
pushi.e 426
conv.i.v
push.v self.y
pushi.e 6
sub.i.v
push.v self.x
pushi.e 15
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.bp
push.v self.sprite_index
push.v self.bp
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.bp
conv.v.i
pop.v.v [stacktop]self.image_index
push.v self.depth
pushi.e 1
add.i.v
push.v self.bp
conv.v.i
pop.v.v [stacktop]self.depth
call.i instance_destroy(argc=0)
popz.v

:[32]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.xstart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
pop.v.v self.x

:[end]
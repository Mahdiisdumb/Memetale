.localvar 0 arguments

:[0]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
push.v self.early
sub.v.v
pushi.e 15
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
pushi.e 1
pop.v.i self.flash
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[5]
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.early
pushi.e 20
cmp.i.v LTE
b [8]

:[7]
push.e 0

:[8]
bf [11]

:[9]
push.v self.vspeed
push.d 1.5
cmp.d.v GT
bf [11]

:[10]
push.v self.vspeed
push.d 0.15
sub.d.v
pop.v.v self.vspeed

:[11]
push.v self.early
pushi.e 20
cmp.i.v GT
bf [13]

:[12]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pushi.e 15
sub.i.v
cmp.v.v GT
b [14]

:[13]
push.e 0

:[14]
bf [17]

:[15]
push.v self.vspeed
push.d 1.5
cmp.d.v GT
bf [17]

:[16]
push.v self.vspeed
push.d 0.15
sub.d.v
pop.v.v self.vspeed

:[17]
push.v self.flash
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
pushi.e 3
pop.v.i self.flash
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[19]
push.v self.flash
pushi.e 3
cmp.i.v EQ
bf [22]

:[20]
pushi.e -1
pushi.e 4
push.v [array]self.alarm
pushi.e 26
cmp.i.v LT
bf [22]

:[21]
push.d 0.5
pop.v.d self.image_speed

:[22]
push.v self.flash
pushi.e 4
cmp.i.v EQ
bf [24]

:[23]
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
pushi.e 5
push.v self.lt
conv.v.i
pop.v.i [stacktop]self.speed
push.v 744.y
pushi.e 10
add.i.v
push.v 744.x
pushi.e 10
add.i.v
push.v self.lt
conv.v.i
push.v [stacktop]self.y
push.v self.lt
conv.v.i
push.v [stacktop]self.x
call.i point_direction(argc=4)
push.v self.lt
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 5
pop.v.i self.flash

:[24]
push.v self.flash
pushi.e 5
cmp.i.v EQ
bf [30]

:[25]
pushi.e 1
pop.v.i self.flash
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [30]

:[26]
pushi.e 9
pop.v.i self.flash
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [28]

:[27]
pushi.e 180
pop.v.i self.gravity_direction
push.d 0.5
pop.v.d self.gravity
push.d 0.2
pop.v.d self.friction

:[28]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [30]

:[29]
pushi.e 0
pop.v.i self.gravity_direction
push.d 0.5
pop.v.d self.gravity
push.d 0.2
pop.v.d self.friction

:[30]
push.v self.y
pushbltn.v self.room_height
cmp.v.v GT
bf [32]

:[31]
call.i instance_destroy(argc=0)
popz.v

:[32]
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
bf [38]

:[33]
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
pushenv [35]

:[34]
call.i instance_destroy(argc=0)
popz.v

:[35]
popenv [34]
pushi.e 129
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 403
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [37]

:[36]
push.v global.ratings
pushi.e 20
add.i.v
pop.v.v global.ratings

:[37]
pushi.e 426
conv.i.v
push.v self.y
pushi.e 23
sub.i.v
push.v self.x
pushi.e 20
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

:[38]
push.v self.image_index
pushi.e 16
cmp.i.v GT
bf [40]

:[39]
push.v self.image_speed
pushi.e 0
cmp.i.v GT
b [41]

:[40]
push.e 0

:[41]
bf [end]

:[42]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[end]
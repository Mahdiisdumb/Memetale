.localvar 0 arguments

:[0]
push.v self.rot
call.i degtorad(argc=1)
pop.v.v self.deg
push.v self.x
push.v self.r
push.v self.deg
call.i cos(argc=1)
mul.v.v
add.v.v
pop.v.v self.x1
push.v self.y
push.v self.r
push.v self.deg
call.i sin(argc=1)
mul.v.v
sub.v.v
pop.v.v self.y1
push.v self.x
pop.v.v self.x2
push.v self.y
pop.v.v self.y2
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.active
pushi.e 0
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[5]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.rot
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1119
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
push.v 1119.hspeed
pop.v.v self.move

:[7]
push.v self.x
push.v self.move
pushi.e 3
conv.i.d
div.d.v
add.v.v
pop.v.v self.x
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [14]

:[8]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
push.v self.y2
push.v self.x2
push.v self.y1
push.v self.x1
call.i collision_rectangle(argc=7)
conv.v.b
bf [10]

:[9]
push.v self.col
pushi.e 1
add.i.v
pop.v.v self.col
b [11]

:[10]
pushi.e 0
pop.v.i self.col

:[11]
push.v self.col
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[13]
push.v self.direction
pop.v.v self.rot

:[14]
push.v self.active
pushi.e 4
cmp.i.v EQ
bf [30]

:[15]
push.v self.speed
pop.v.v self.rspeed
push.v self.direction
pop.v.v self.rdir
push.v self.rot
push.v self.ramt
add.v.v
pop.v.v self.rot
push.v self.ramt
pushi.e 0
cmp.i.v GT
bf [17]

:[16]
push.v self.ramt
pushi.e 2
sub.i.v
pop.v.v self.ramt
b [29]

:[17]
pushi.e 0
pop.v.i self.ramt
push.d 0.1
conv.d.v
push.v 1576.y
pushi.e 15
add.i.v
push.v 1576.x
pushi.e 7
add.i.v
push.v self.gax
add.v.v
call.i move_towards_point(argc=3)
popz.v
push.v self.direction
pop.v.v self.idealrot
push.v self.rot
pushi.e 360
mod.i.v
pop.v.v self.rot
push.v self.rot
push.v self.idealrot
sub.v.v
pushi.e 12
cmp.i.v GT
bf [19]

:[18]
push.v self.rot
pushi.e 4
sub.i.v
pop.v.v self.rot

:[19]
push.v self.rot
push.v self.idealrot
sub.v.v
pushi.e 6
cmp.i.v GT
bf [21]

:[20]
push.v self.rot
pushi.e 2
sub.i.v
pop.v.v self.rot

:[21]
push.v self.rot
push.v self.idealrot
sub.v.v
pushi.e 3
cmp.i.v GT
bf [23]

:[22]
push.v self.rot
pushi.e 1
sub.i.v
pop.v.v self.rot

:[23]
push.v self.rot
push.v self.idealrot
sub.v.v
pushi.e -3
cmp.i.v LT
bf [25]

:[24]
push.v self.rot
pushi.e 1
add.i.v
pop.v.v self.rot

:[25]
push.v self.rot
push.v self.idealrot
sub.v.v
pushi.e -6
cmp.i.v LT
bf [27]

:[26]
push.v self.rot
pushi.e 2
add.i.v
pop.v.v self.rot

:[27]
push.v self.rot
push.v self.idealrot
sub.v.v
pushi.e -12
cmp.i.v LT
bf [29]

:[28]
push.v self.rot
pushi.e 4
add.i.v
pop.v.v self.rot

:[29]
push.v self.rspeed
pop.v.v self.speed
push.v self.rdir
pop.v.v self.direction

:[30]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [33]

:[31]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.01
cmp.d.v LT
bf [33]

:[32]
pushi.e 2
pop.v.i self.active

:[33]
push.v self.active
pushi.e 2
cmp.i.v EQ
bf [35]

:[34]
call.i instance_destroy(argc=0)
popz.v

:[35]
push.v self.y
pushbltn.v self.room_height
cmp.v.v GT
bt [37]

:[36]
push.v self.x
pushbltn.v self.room_width
cmp.v.v GT
b [38]

:[37]
push.e 1

:[38]
bf [end]

:[39]
pushi.e 0
pop.v.i self.active

:[end]
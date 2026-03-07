.localvar 0 arguments

:[0]
push.d 0.5
pop.v.d self.image_speed
push.i 16777215
pop.v.i self.image_blend
pushi.e 3
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.speed
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.dir
push.v self.big
pushi.e 0
cmp.i.v EQ
bf [15]

:[1]
push.v self.h_mode
pushi.e 0
cmp.i.v EQ
bf [8]

:[2]
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [5]

:[4]
pushi.e 581
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.star
push.v self.h_mode
push.v self.star
conv.v.i
pop.v.v [stacktop]self.h_mode
push.d -0.2
push.v self.star
conv.v.i
pop.v.d [stacktop]self.friction
push.d 1.4
push.v self.star
conv.v.i
pop.v.d [stacktop]self.speed
push.v self.dir
push.d 51.42857142857143
push.v self.i
mul.v.d
add.v.v
push.v self.star
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[5]
pushi.e 582
pushenv [7]

:[6]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[7]
popenv [6]

:[8]
push.v self.h_mode
pushi.e 1
cmp.i.v EQ
bf [15]

:[9]
pushi.e 0
pop.v.i self.i

:[10]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [12]

:[11]
pushi.e 581
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.star
push.v self.h_mode
push.v self.star
conv.v.i
pop.v.v [stacktop]self.h_mode
push.d -0.25
push.v self.star
conv.v.i
pop.v.d [stacktop]self.friction
push.d 1.5
push.v self.star
conv.v.i
pop.v.d [stacktop]self.speed
push.v self.dir
push.d 51.42857142857143
push.v self.i
mul.v.d
add.v.v
push.v self.star
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [10]

:[12]
pushi.e 582
pushenv [14]

:[13]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[14]
popenv [13]

:[15]
push.v self.big
pushi.e 1
cmp.i.v EQ
bf [27]

:[16]
pushi.e 582
pushenv [18]

:[17]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[18]
popenv [17]
pushi.e 0
pop.v.i self.i

:[19]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [21]

:[20]
pushi.e 581
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.star
push.d -0.3
push.v self.star
conv.v.i
pop.v.d [stacktop]self.friction
push.d 1.6
push.v self.star
conv.v.i
pop.v.d [stacktop]self.speed
push.v self.dir
push.d 22.5
push.v self.i
mul.v.d
add.v.v
push.v self.star
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.h_mode
push.v self.star
conv.v.i
pop.v.v [stacktop]self.h_mode
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [19]

:[21]
push.v self.dir
pushi.e 9
add.i.v
pop.v.v self.dir
pushi.e 0
pop.v.i self.i

:[22]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [24]

:[23]
pushi.e 581
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.star
push.d -0.24
push.v self.star
conv.v.i
pop.v.d [stacktop]self.friction
push.d 0.8
push.v self.star
conv.v.i
pop.v.d [stacktop]self.speed
push.v self.dir
push.d 22.5
push.v self.i
mul.v.d
add.v.v
push.v self.star
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.h_mode
push.v self.star
conv.v.i
pop.v.v [stacktop]self.h_mode
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [22]

:[24]
pushi.e 0
pop.v.i self.i

:[25]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [27]

:[26]
pushi.e 581
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.star
push.d -0.18
push.v self.star
conv.v.i
pop.v.d [stacktop]self.friction
push.d 0.2
push.v self.star
conv.v.i
pop.v.d [stacktop]self.speed
push.v self.dir
pushi.e 18
push.v self.i
mul.v.i
add.v.v
push.v self.star
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.h_mode
push.v self.star
conv.v.i
pop.v.v [stacktop]self.h_mode
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [25]

:[27]
pushi.e 580
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ex
push.v self.sprite_index
push.v self.ex
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.ex
conv.v.i
pop.v.v [stacktop]self.image_index
push.v self.image_blend
push.v self.ex
conv.v.i
pop.v.v [stacktop]self.image_blend
push.v self.image_speed
push.v self.ex
conv.v.i
pop.v.v [stacktop]self.image_speed
push.v self.aa
push.v self.ex
conv.v.i
pop.v.v [stacktop]self.aa
push.v self.big
push.v self.ex
conv.v.i
pop.v.v [stacktop]self.big
push.v self.depth
push.v self.ex
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.image_alpha
push.v self.ex
conv.v.i
pop.v.v [stacktop]self.image_alpha
push.v self.image_angle
push.v self.ex
conv.v.i
pop.v.v [stacktop]self.image_angle
call.i instance_destroy(argc=0)
popz.v

:[end]
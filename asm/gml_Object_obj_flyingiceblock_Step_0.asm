.localvar 0 arguments

:[0]
push.v self.y
push.v self.ystart
pushi.e 48
add.i.v
cmp.v.v GT
bf [2]

:[1]
push.v self.stagetimer
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.stagetimer
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1669
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 10
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 8
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.kid
pushi.e 4
push.v self.kid
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 0
push.v self.kid
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.v self.depth
pushi.e 10
sub.i.v
push.v self.kid
conv.v.i
pop.v.v [stacktop]self.depth

:[5]
push.v self.y
push.v self.ystart
pushi.e 55
add.i.v
cmp.v.v GT
bf [7]

:[6]
push.v self.stage
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i self.stage
pushi.e 1395
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.friction
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.hspeed
push.d -0.1
pop.v.d self.friction

:[10]
push.v self.stagetimer
pushi.e 1
cmp.i.v EQ
bf [20]

:[11]
push.v self.kid
call.i instance_exists(argc=1)
conv.v.b
bf [20]

:[12]
push.v self.kid
conv.v.i
push.v [stacktop]self.image_xscale
pushi.e 2
cmp.i.v GT
bf [14]

:[13]
push.v self.kid
conv.v.i
dup.i 0
push.v [stacktop]self.image_xscale
push.d 0.4
sub.d.v
pop.i.v [stacktop]self.image_xscale

:[14]
push.v self.kid
conv.v.i
dup.i 0
push.v [stacktop]self.image_yscale
push.d 0.2
add.d.v
pop.i.v [stacktop]self.image_yscale
push.v self.kid
conv.v.i
push.v [stacktop]self.image_yscale
push.d 0.8
cmp.d.v GT
bf [16]

:[15]
push.v self.kid
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.2
sub.d.v
pop.i.v [stacktop]self.image_alpha

:[16]
push.v self.kid
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.2
cmp.d.v LT
bf [20]

:[17]
push.v self.kid
conv.v.i
pushenv [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
popenv [18]

:[20]
push.v self.x
pushbltn.v self.room_width
pushi.e 80
add.i.v
cmp.v.v GT
bf [end]

:[21]
push.v self.kid
call.i instance_exists(argc=1)
conv.v.b
bf [25]

:[22]
push.v self.kid
conv.v.i
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[end]
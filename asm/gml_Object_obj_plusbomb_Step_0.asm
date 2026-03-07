.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.col
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.col

:[2]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.sprite_width
add.v.v
pushi.e 1
add.i.v
push.v self.bbox_top
push.v self.bbox_left
push.v self.sprite_width
add.v.v
pushi.e 1
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [5]

:[4]
pushi.e 1
pop.v.i self.col

:[5]
push.v self.side
pushi.e 2
cmp.i.v EQ
bf [8]

:[6]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.sprite_width
sub.v.v
pushi.e 1
sub.i.v
push.v self.bbox_top
push.v self.bbox_left
push.v self.sprite_width
sub.v.v
pushi.e 1
sub.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [8]

:[7]
pushi.e 1
pop.v.i self.col

:[8]
push.v self.col
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 11
conv.i.v
call.i event_user(argc=1)
popz.v

:[10]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
pushi.e 28
add.i.v
push.v self.x
pushi.e 22
add.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.x
pushi.e 2
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [17]

:[11]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
pushi.e 28
add.i.v
push.v self.x
pushi.e 22
add.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.x
pushi.e 2
add.i.v
call.i collision_rectangle(argc=7)
pop.v.v self.g
pushi.e 403
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[12]
push.v global.ratings
pushi.e 20
add.i.v
pop.v.v global.ratings

:[13]
push.v self.g
conv.v.i
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]
push.v self.shot
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
pop.v.i self.playdo
pushi.e 1
conv.i.v
pushi.e 40
conv.i.v
pushi.e 128
conv.i.v
call.i audio_play_sound(argc=3)
pop.v.v self.myloop
pushi.e 1
pop.v.i self.shot

:[17]
push.v self.s
pushi.e 1
add.i.v
pop.v.v self.s
push.v self.shot
pushi.e 0
cmp.i.v GT
bf [22]

:[18]
push.v self.shot2
pushi.e 1
add.i.v
pop.v.v self.shot2
pushi.e 1
pop.v.i self.image_speed
push.v self.shot2
pushi.e 6
cmp.i.v GTE
bf [22]

:[19]
pushi.e 0
pop.v.i self.playdo
push.v self.myloop
call.i audio_stop_sound(argc=1)
popz.v
pushi.e 126
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [21]

:[20]
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shake(argc=3)
popz.v

:[21]
pushi.e 442
conv.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.x
pushi.e 2
add.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[22]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [27]

:[23]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
pushi.e 28
add.i.v
push.v self.x
pushi.e 22
add.i.v
push.v self.sprite_width
add.v.v
pushi.e 1
add.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.x
pushi.e 2
add.i.v
push.v self.sprite_width
add.v.v
pushi.e 1
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [27]

:[24]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
pushi.e 28
add.i.v
push.v self.x
pushi.e 22
add.i.v
push.v self.sprite_width
add.v.v
pushi.e 1
add.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.x
pushi.e 2
add.i.v
push.v self.sprite_width
add.v.v
pushi.e 1
add.i.v
call.i collision_rectangle(argc=7)
pop.v.v self.g
push.v self.g
conv.v.i
pushenv [26]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
popenv [25]

:[27]
push.v self.side
pushi.e 2
cmp.i.v EQ
bf [32]

:[28]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
pushi.e 28
add.i.v
push.v self.x
pushi.e 22
add.i.v
push.v self.sprite_width
sub.v.v
pushi.e 1
sub.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.x
pushi.e 2
add.i.v
push.v self.sprite_width
sub.v.v
pushi.e 1
sub.i.v
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
pushi.e 28
add.i.v
push.v self.x
pushi.e 22
add.i.v
push.v self.sprite_width
sub.v.v
pushi.e 1
sub.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.x
pushi.e 2
add.i.v
push.v self.sprite_width
sub.v.v
pushi.e 1
sub.i.v
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

:[32]
push.v self.xstart
push.v self.s
push.v self.sp
div.v.v
call.i sin(argc=1)
push.v self.sf
mul.v.v
add.v.v
pop.v.v self.x

:[end]
.localvar 0 arguments

:[0]
push.v self.inwater
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
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

:[2]
push.v self.inwater
pushi.e 1
cmp.i.v EQ
bf [9]

:[3]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
push.v self.sprite_height
pushi.e 5
sub.i.v
push.v self.sprite_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v 1576.image_index
pushi.e 1
cmp.i.v EQ
bt [5]

:[4]
push.v 1576.image_index
pushi.e 3
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.mp

:[8]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1136
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[9]
pushbltn.v self.room
pushi.e 108
cmp.i.v EQ
bf [end]

:[10]
push.v self.image_alpha
pushi.e 0
conv.i.v
push.v self.image_angle
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

:[end]
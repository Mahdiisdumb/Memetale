.localvar 0 arguments

:[0]
push.v self.xx
push.v self.xxspeed
add.v.v
pop.v.v self.xx
push.v self.yy
push.v self.yyspeed
add.v.v
pop.v.v self.yy
push.v self.xx
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 200
add.i.v
cmp.v.v GT
bf [2]

:[1]
push.v self.xx
push.v self.sprite_width
sub.v.v
pop.v.v self.xx

:[2]
push.v self.xx
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 200
sub.i.v
cmp.v.v LT
bf [4]

:[3]
push.v self.xx
push.v self.sprite_width
add.v.v
pop.v.v self.xx

:[4]
push.v self.yy
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 200
add.i.v
cmp.v.v GT
bf [6]

:[5]
push.v self.yy
push.v self.sprite_height
sub.v.v
pop.v.v self.yy

:[6]
push.v self.yy
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 200
sub.i.v
cmp.v.v LT
bf [8]

:[7]
push.v self.yy
push.v self.sprite_height
add.v.v
pop.v.v self.yy

:[8]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.sprite_height
sub.v.v
push.v self.xx
push.v self.sprite_width
sub.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.sprite_height
sub.v.v
push.v self.xx
push.v self.sprite_width
add.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.sprite_height
add.v.v
push.v self.xx
push.v self.sprite_width
sub.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.sprite_height
add.v.v
push.v self.xx
push.v self.sprite_width
add.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
push.v self.sprite_width
add.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
push.v self.sprite_width
sub.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.sprite_height
add.v.v
push.v self.xx
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.sprite_height
sub.v.v
push.v self.xx
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
pushi.e 1
cmp.i.v EQ
bf [end]

:[9]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[10]
push.d 0.3
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v 1576.y
push.v 1576.x
push.v 1576.image_index
push.v 1576.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]
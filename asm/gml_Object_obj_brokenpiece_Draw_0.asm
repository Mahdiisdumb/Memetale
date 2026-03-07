.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.siner
sub.v.v
push.v self.x
push.v self.siner
sub.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.siner
sub.v.v
push.v self.x
push.v self.siner
add.v.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.siner
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.siner
sub.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.siner
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.siner
add.v.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]
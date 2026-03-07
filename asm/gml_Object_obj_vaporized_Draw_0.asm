.localvar 0 arguments

:[0]
push.v self.y
push.v self.line
pushi.e 4
mul.i.v
add.v.v
push.v self.x
push.v self.sprite_height
push.v self.line
pushi.e 4
mul.i.v
sub.v.v
push.v self.sprite_width
push.v self.line
pushi.e 4
mul.i.v
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part(argc=8)
popz.v

:[end]
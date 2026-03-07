.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.h
sub.v.v
push.v self.x
push.v self.h
push.v self.sprite_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v

:[end]
.localvar 0 arguments

:[0]
push.v self.image_alpha
push.v self.color
pushi.e 0
conv.i.v
push.i 99999
conv.i.v
push.i 99999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]
.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.angle
push.v self.size
push.v self.size
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]
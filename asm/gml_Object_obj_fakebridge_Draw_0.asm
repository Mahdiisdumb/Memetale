.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.sprite_height
push.v self.drawamt
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_part(argc=8)
popz.v

:[end]
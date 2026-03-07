.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 1
add.i.v
push.v self.x
pushi.e 6
add.i.v
push.v self.image_index
pushi.e 1706
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]
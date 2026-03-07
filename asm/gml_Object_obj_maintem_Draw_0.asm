.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 62
add.i.v
push.v self.x
pushi.e 50
add.i.v
push.v self.length
add.v.v
push.v self.y
pushi.e 36
add.i.v
push.v self.x
pushi.e 48
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.y
push.v self.x
push.v self.sprite_width
add.v.v
push.v self.length
add.v.v
push.v self.image_index
pushi.e 137
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]
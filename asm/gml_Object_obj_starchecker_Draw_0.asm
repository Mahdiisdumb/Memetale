.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.bbox_top
pushi.e 1200
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.bbox_bottom
pushi.e 1200
conv.i.v
pushi.e 1200
conv.i.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1200
conv.i.v
push.v self.bbox_left
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1200
conv.i.v
pushi.e 1200
conv.i.v
pushi.e 0
conv.i.v
push.v self.bbox_right
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[end]
.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.con
push.d 2.1
cmp.d.v EQ
bf [end]

:[1]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 700
conv.i.v
push.v self.y
pushi.e 0
conv.i.v
call.i draw_line(argc=4)
popz.v

:[end]
.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.rot
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 24
add.i.v
push.v self.x
pushi.e 24
add.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.day
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 60
add.i.v
call.i draw_text(argc=3)
popz.v
push.v self.rot
push.d 0.34
add.d.v
pop.v.v self.rot

:[end]
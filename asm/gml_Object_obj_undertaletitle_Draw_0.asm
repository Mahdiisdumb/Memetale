.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.rot
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "title_by"@31627
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 90
conv.i.v
pushi.e 90
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[end]
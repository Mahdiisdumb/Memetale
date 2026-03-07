.localvar 0 arguments
.localvar 1 yy 1731

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.sprite_width
pushi.e 4
mul.i.v
add.v.v
pushi.e 2
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 4
mul.i.v
add.v.v
pushi.e 2
add.i.v
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 2
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 3.5
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.d
push.d 3.5
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.y
push.v self.sprite_height
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.y
pushi.e 40
add.i.v
pop.v.v local.yy
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [2]

:[1]
push.v local.yy
pushi.e 32
sub.i.v
pop.v.v local.yy

:[2]
push.s "obj_crimegraph_55"@32879
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
push.v self.x
pushi.e 10
sub.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[end]
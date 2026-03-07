.localvar 0 arguments

:[0]
push.v self.drawbb
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.bb
call.i draw_sprite(argc=4)
popz.v
b [3]

:[2]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
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

:[3]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [end]

:[4]
pushi.e 181
pushenv [6]

:[5]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha

:[6]
popenv [5]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
push.v self.str
push.v self.y
pushi.e 480
add.i.v
pushi.e 60
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
push.v self.in_fakecrash
conv.v.b
bf [8]

:[7]
pushi.e 0
pop.v.i self.vspeed
b [end]

:[8]
pushi.e -28
pop.v.i self.vspeed
push.v self.str
push.s "#"@6300
push.s "flowey_haha"@31782
conv.s.v
call.i scr_gettext(argc=1)
add.v.s
add.v.v
pop.v.v self.str

:[end]
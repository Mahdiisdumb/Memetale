.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.fader
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.alpha
pushi.e 1
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v self.alpha
push.d 0.05
add.d.v
pop.v.v self.alpha

:[6]
push.v self.alpha
call.i draw_set_alpha(argc=1)
popz.v
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
push.v self.size
push.v self.bigscale
mul.v.v
push.v self.size
push.v self.bigscale
mul.v.v
push.v self.text
push.v self.y
push.v self.x
push.v self.text_xofs
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.size
push.v self.size
push.v self.text2
push.v self.y
push.v self.height
add.v.v
pushi.e 4
push.v self.size
mul.v.i
add.v.v
push.v self.x
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.fader
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.alpha
push.d 0.05
sub.d.v
pop.v.v self.alpha

:[8]
push.v self.alpha
pushi.e 0
cmp.i.v LT
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]
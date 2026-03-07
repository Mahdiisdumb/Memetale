.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
pushi.e 1
pop.v.i self.visible
push.v self.off
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
push.v self.alpha
push.d 2.2
cmp.d.v LT
bf [5]

:[3]
push.v self.alpha
push.d 0.05
add.d.v
pop.v.v self.alpha
push.v self.gggg
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.alpha
push.d 0.1
add.d.v
pop.v.v self.alpha

:[5]
push.v self.myfont
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.alpha
call.i draw_set_alpha(argc=1)
popz.v
push.v self.newstring
push.v self.y
push.v self.x
call.i draw_text(argc=3)
popz.v

:[6]
push.v self.off
pushi.e 1
cmp.i.v EQ
bf [11]

:[7]
push.v self.alpha
push.d 0.05
sub.d.v
pop.v.v self.alpha
push.v self.gggg
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.alpha
push.d 0.05
sub.d.v
pop.v.v self.alpha

:[9]
push.v self.alpha
push.d 0.1
cmp.d.v LT
bf [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]
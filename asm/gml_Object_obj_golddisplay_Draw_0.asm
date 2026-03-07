.localvar 0 arguments

:[0]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pop.v.v self.xx
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 10
add.i.v
pop.v.v self.yy
pushi.e 188
pop.v.i self.f
pushi.e 8
pop.v.i self.yf
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 127
push.v self.yy
add.v.i
push.v self.yf
add.v.v
pushi.e 116
push.v self.xx
add.v.i
push.v self.f
add.v.v
pushi.e 74
push.v self.yy
add.v.i
push.v self.yf
add.v.v
pushi.e 16
push.v self.xx
add.v.i
push.v self.f
add.v.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 124
push.v self.yy
add.v.i
push.v self.yf
add.v.v
pushi.e 113
push.v self.xx
add.v.i
push.v self.f
add.v.v
pushi.e 77
push.v self.yy
add.v.i
push.v self.yf
add.v.v
pushi.e 19
push.v self.xx
add.v.i
push.v self.f
add.v.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_golddisplay_42"@32226
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 90
push.v self.yy
add.v.i
pushi.e 30
push.v self.xx
add.v.i
push.v self.f
add.v.v
call.i draw_text(argc=3)
popz.v
call.i scr_itemroom(argc=0)
popz.v
push.v self.itemhold
call.i string(argc=1)
push.s "obj_golddisplay_44"@32228
conv.s.v
call.i scr_gettext(argc=2)
pushi.e 110
push.v self.yy
add.v.i
pushi.e 30
push.v self.xx
add.v.i
push.v self.f
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]
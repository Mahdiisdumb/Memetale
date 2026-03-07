.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 255
conv.i.v
push.i 32768
conv.i.v
push.i 65535
conv.i.v
pushi.e 255
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 100
add.i.v
push.v self.y
push.v self.x
call.i draw_rectangle_color(argc=9)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 102
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
call.i scr_setfont(argc=1)
popz.v
push.s "obj_specialgraph_56"@32885
conv.s.v
call.i scr_gettext(argc=1)
push.v self.y
pushi.e 38
sub.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 60
add.i.v
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
sub.v.v
push.v self.y
push.v self.x
pushi.e 100
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[end]
.localvar 0 arguments

:[0]
push.d 0.5
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.x
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.siner
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 127
mul.i.v
pushi.e 127
add.i.v
pop.v.v self.full
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 127
mul.i.v
pushi.e 127
add.i.v
pop.v.v self.ofull
push.v self.full
push.v self.full
push.v self.full
call.i make_color_rgb(argc=3)
pop.v.v self.col1
push.v self.ofull
push.v self.ofull
push.v self.ofull
call.i make_color_rgb(argc=3)
pop.v.v self.col2
push.v self.col2
push.v self.col1
pushi.e 159
conv.i.v
push.v self.x
push.v self.secondx
add.v.v
pushi.e 0
conv.i.v
push.v self.x
push.v self.firstx
add.v.v
call.i draw_line_color(argc=6)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]
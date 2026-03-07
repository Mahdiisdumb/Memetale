.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.frozen
pushi.e 0
pop.v.i self.siner
pushi.e 150
conv.i.v
pushi.e 150
conv.i.v
pushi.e 150
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.gr
pushi.e 110
conv.i.v
pushi.e 110
conv.i.v
pushi.e 110
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.grgr
pushi.e 70
conv.i.v
pushi.e 70
conv.i.v
pushi.e 70
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.grgrgr
call.i scr_floweybodysave(argc=0)
popz.v

:[end]
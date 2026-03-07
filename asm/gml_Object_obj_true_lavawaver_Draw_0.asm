.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.coff
push.v self.boff
call.i scr_true_lavawaver(argc=2)
popz.v
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.3
mul.d.v
push.d 0.5
add.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 250
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 330
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 10
sub.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 10
sub.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]
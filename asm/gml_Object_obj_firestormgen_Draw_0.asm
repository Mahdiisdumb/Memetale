.localvar 0 arguments

:[0]
push.v self.dr
push.d 0.5
cmp.d.v LT
bf [2]

:[1]
push.v self.dr
push.d 0.1
add.d.v
pop.v.v self.dr

:[2]
pushglb.v global.turntimer
pushi.e 6
cmp.i.v LT
bf [4]

:[3]
push.v self.dr
push.d 0.2
sub.d.v
pop.v.v self.dr

:[4]
push.v self.dr
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushglb.v global.turntimer
pushi.e 0
cmp.i.v LTE
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]
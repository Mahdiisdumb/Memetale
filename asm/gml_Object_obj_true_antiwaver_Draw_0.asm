.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [end]

:[2]
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.5
mul.d.v
push.d 0.5
add.d.v
pushi.e 1
push.v self.i
pushi.e 8
conv.i.d
div.d.v
sub.v.i
mul.v.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 20
add.i.v
push.v self.i
pushi.e 5
mul.i.v
sub.v.v
push.v self.x
pushi.e 20
push.v self.image_xscale
mul.v.i
add.v.v
push.v self.y
pushi.e 16
add.i.v
push.v self.i
pushi.e 5
mul.i.v
sub.v.v
push.v self.x
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]
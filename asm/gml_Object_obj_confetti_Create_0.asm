.localvar 0 arguments

:[0]
pushi.e 2
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed
pushi.e 6
conv.i.v
call.i random(argc=1)
pushi.e 3
sub.i.v
pop.v.v self.hspeed
pushi.e 0
pop.v.i self.siner
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
call.i random(argc=1)
call.i make_color_hsv(argc=3)
pop.v.v self.mycolor
push.v self.mycolor
pop.v.v self.image_blend
push.d 0.2
pop.v.d self.image_speed
pushi.e 100
pop.v.i self.timer

:[end]
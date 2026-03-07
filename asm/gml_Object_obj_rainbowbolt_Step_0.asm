.localvar 0 arguments

:[0]
push.v self.thisx
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 6
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.thisy
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 6
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y
push.v self.giga
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.ss
push.d 0.5
sub.d.v
pop.v.v self.ss
push.v self.thisx
pushi.e 12
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 12
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.thisy
pushi.e 12
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 12
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[2]
push.v self.ss
pushi.e 1
add.i.v
pop.v.v self.ss
push.v self.ss
pushi.e 2
cmp.i.v GT
bf [7]

:[3]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.5
cmp.d.v LT
bf [5]

:[4]
push.v self.image_xscale
push.d 0.2
sub.d.v
pop.v.v self.image_xscale

:[5]
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.add
pushi.e 10
add.i.v
pop.v.v self.add
pushi.e 255
conv.i.v
pushi.e 210
conv.i.v
push.v self.ac
push.v self.add
add.v.v
call.i make_color_hsv(argc=3)
pop.v.v self.image_blend

:[end]
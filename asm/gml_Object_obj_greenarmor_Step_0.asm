.localvar 0 arguments

:[0]
push.v self.b
push.v self.g
push.v self.r
call.i make_color_rgb(argc=3)
pop.v.v self.image_blend
push.v self.y
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.y
push.v self.x
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 6
mul.i.v
add.v.v
pop.v.v self.x
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushglb.v global.turntimer
pushi.e 3
cmp.i.v LT
bf [8]

:[1]
pushi.e 311
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.g
pop.v.v 311.armor

:[3]
pushi.e 312
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
push.v self.g
pop.v.v 312.armor

:[5]
push.v self.r
pushi.e 99
cmp.i.v GT
bf [7]

:[6]
pushi.e 5
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.border

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.inv
pushi.e 1
sub.i.v
pop.v.v self.inv

:[end]
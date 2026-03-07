.localvar 0 arguments

:[0]
pushi.e 311
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 311.armor
pop.v.v self.g
pushi.e 255
push.v 311.armor
sub.v.i
pop.v.v self.r
b [4]

:[2]
pushi.e 312
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v 312.armor
pop.v.v self.g
pushi.e 255
push.v 312.armor
sub.v.i
pop.v.v self.r

:[4]
pushi.e 0
pop.v.i self.b
push.v self.b
push.v self.g
push.v self.r
call.i make_color_rgb(argc=3)
pop.v.v self.image_blend
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.inv

:[end]
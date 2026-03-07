.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner2
pushi.e 1
add.i.v
pop.v.v self.siner2
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha

:[2]
push.v self.x
push.v self.siner2
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.y
call.i draw_self_border_e(argc=0)
popz.v
pushglb.v global.turntimer
pushi.e 2
cmp.i.v LT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]
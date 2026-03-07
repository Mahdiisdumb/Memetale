.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.image_angle
push.v self.aa
add.v.v
pop.v.v self.image_angle
push.d 0.7
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.d
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 259
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
push.d 0.7
add.d.v
push.v self.image_blend
push.v self.image_angle
pushi.e 45
add.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
pushi.e 259
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_xscale
pushi.e 3
cmp.i.v LT
bf [2]

:[1]
push.v self.image_xscale
push.d 0.05
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.05
add.d.v
pop.v.v self.image_yscale

:[2]
push.v self.y
pushi.e 500
cmp.i.v GT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v LT
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]
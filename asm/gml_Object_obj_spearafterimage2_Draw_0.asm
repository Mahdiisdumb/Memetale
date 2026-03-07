.localvar 0 arguments

:[0]
push.v self.alpha
push.d 0.05
sub.d.v
pop.v.v self.alpha
push.v self.alpha
push.d 0.13
cmp.d.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.angle
pop.v.v self.image_angle
push.v self.color
pop.v.v self.image_blend
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.v self.alpha
pop.v.v self.image_alpha
push.v self.alpha
push.v self.color
push.v self.angle
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]
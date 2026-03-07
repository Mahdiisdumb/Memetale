.localvar 0 arguments

:[0]
push.v self.image_alpha
push.d 0.02
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.05
cmp.d.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.rot
pushi.e 2
add.i.v
pop.v.v self.rot
push.v self.size
push.d 0.07
add.d.v
pop.v.v self.size
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.rot
push.v self.size
push.v self.size
push.v self.y
push.v self.x
pushi.e 9
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.x
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.x

:[end]
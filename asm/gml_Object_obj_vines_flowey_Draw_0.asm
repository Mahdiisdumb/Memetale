.localvar 0 arguments

:[0]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[2]
pushi.e 1
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
add.v.i
pop.v.v self.growth
pushi.e 1
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.05
mul.d.v
add.v.i
pop.v.v self.growth2
pushi.e 1
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
sub.v.i
pop.v.v self.growth3
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
push.v self.image_xscale
mul.v.v
pop.v.v self.ssx
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
push.v self.image_xscale
mul.v.v
pop.v.v self.ssx2
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.5
mul.d.v
push.v self.image_xscale
mul.v.v
pop.v.v self.ssx3
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.growth3
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.ssx3
sub.v.v
pushi.e 20
add.i.v
push.v self.image_index
pushi.e 2298
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.growth2
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.ssx2
sub.v.v
pushi.e 20
sub.i.v
push.v self.image_index
pushi.e 2297
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.growth
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.ssx
sub.v.v
push.v self.image_index
pushi.e 2296
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]
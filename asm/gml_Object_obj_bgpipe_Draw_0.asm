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
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.msin
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 1
mul.i.v
pop.v.v self.ysin
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.012
mul.d.v
pop.v.v self.growth
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.5
mul.d.v
pop.v.v self.msin2
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.8
mul.d.v
pop.v.v self.ysin2
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.01
mul.d.v
pop.v.v self.growth2
push.v self.siner
pushi.e 11
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
pop.v.v self.msin3
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.5
mul.d.v
pop.v.v self.ysin3
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.005
mul.d.v
pop.v.v self.growth3
push.d 0.4
conv.d.v
pushi.e 0
conv.i.v
push.v self.image_blend
call.i merge_color(argc=3)
pop.v.v self.blend3
pushi.e 1
conv.i.v
push.v self.blend3
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.growth3
push.v self.image_xscale
add.v.v
push.v self.y
push.v self.ysin3
add.v.v
pushi.e 20
sub.i.v
push.v self.x
push.v self.msin3
pushi.e 60
sub.i.v
push.v self.image_xscale
mul.v.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.blend3
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.growth2
push.v self.image_xscale
add.v.v
push.v self.y
push.v self.ysin2
add.v.v
pushi.e 10
sub.i.v
push.v self.x
push.v self.msin2
pushi.e 40
sub.i.v
push.v self.image_xscale
mul.v.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.growth
push.v self.image_xscale
add.v.v
push.v self.y
push.v self.ysin
add.v.v
push.v self.x
push.v self.msin
push.v self.image_xscale
mul.v.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]
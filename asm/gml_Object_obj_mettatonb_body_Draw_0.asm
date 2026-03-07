.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.sinvalue
push.v self.hspeed
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.sinvalue
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.sinvalue
push.v self.image_angle
push.v self.sinvalue
add.v.v
pop.v.v self.image_angle

:[2]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.shaker
pushi.e 2
mul.i.v
call.i random(argc=1)
push.v self.shaker
sub.v.v
add.v.v
push.v self.x
push.v self.sinvalue
add.v.v
push.v self.shaker
pushi.e 2
mul.i.v
call.i random(argc=1)
push.v self.shaker
sub.v.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
sub.v.v
push.v self.x
push.v self.sinvalue
add.v.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
push.v self.arms
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.sineron
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[end]
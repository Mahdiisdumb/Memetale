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
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.01
mul.d.v
add.v.i
pop.v.v self.growth
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
push.v self.image_xscale
mul.v.v
pop.v.v self.ssx
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.ssy
push.v self.frozen
pushi.e 0
cmp.i.v NEQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.image_speed

:[4]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 3
pop.v.i self.image_speed

:[6]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.growth
push.v self.image_xscale
push.v self.y
push.v self.ssy
add.v.v
push.v self.x
push.v self.ssx
sub.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]
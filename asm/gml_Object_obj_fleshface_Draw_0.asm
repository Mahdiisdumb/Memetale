.localvar 0 arguments

:[0]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.siner
push.d 1.2
add.d.v
pop.v.v self.siner

:[2]
push.v self.desperate
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.siner
push.d 0.2
sub.d.v
pop.v.v self.siner
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
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
pushi.e 1
conv.i.v
push.v self.y
pushi.e 12
add.i.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
add.v.v
push.v self.x
pushi.e 32
add.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
pushi.e 2260
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
push.v self.desperate
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
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
pushi.e 1
conv.i.v
push.v self.y
pushi.e 14
add.i.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 7
mul.i.v
add.v.v
push.v self.x
pushi.e 32
add.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
pushi.e 2260
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]
.localvar 0 arguments

:[0]
push.v self.defeat
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[2]
push.v self.defeat
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.dxtimer
pushi.e 1
add.i.v
pop.v.v self.dxtimer
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.dx1
sub.v.v
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.dx2
add.v.v
pushi.e 2
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
push.v self.dxtimer
pushi.e 25
cmp.i.v GT
bf [end]

:[5]
push.v self.dxtimer
pushi.e 26
cmp.i.v EQ
bf [7]

:[6]
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v

:[7]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha
push.v self.dx1
push.d 0.5
add.d.v
pop.v.v self.dx1
push.v self.dx2
push.d 0.5
add.d.v
pop.v.v self.dx2
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]
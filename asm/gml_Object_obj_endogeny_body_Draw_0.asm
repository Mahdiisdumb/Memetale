.localvar 0 arguments

:[0]
push.v self.shaker
call.i random(argc=1)
push.v self.shaker
call.i random(argc=1)
sub.v.v
pop.v.v self.xx
push.v self.shaker
call.i random(argc=1)
push.v self.shaker
call.i random(argc=1)
sub.v.v
pop.v.v self.yy
push.v self.spared
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
pushi.e 0
conv.i.v
pushi.e 739
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
push.v self.mouth
call.i floor(argc=1)
pushi.e 741
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.spared
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
pushi.e 0
conv.i.v
pushi.e 741
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
push.v self.mouth
push.v self.mouthspeed
add.v.v
pop.v.v self.mouth
push.v self.spared
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.mouthspeed
pushi.e 0
pop.v.i self.shaker

:[6]
push.v self.fader
pushi.e 1
cmp.i.v EQ
bf [end]

:[7]
push.v self.image_alpha
pushi.e 0
cmp.i.v GT
bf [end]

:[8]
push.v self.image_alpha
push.d 0.02
sub.d.v
pop.v.v self.image_alpha

:[end]
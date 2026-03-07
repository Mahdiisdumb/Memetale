.localvar 0 arguments

:[0]
push.d 0.5
pushglb.v global.stretch
pushi.e 4
conv.i.d
div.d.v
sub.v.d
pop.v.v self.image_speed
pushglb.v global.stretch
pushi.e 2
mul.i.v
push.d 0.5
sub.d.v
pop.v.v self.image_xscale
pushglb.v global.stretch
pushi.e 2
mul.i.v
push.d 0.5
sub.d.v
pop.v.v self.image_yscale
push.v self.x
push.v self.image_xscale
pushi.e 1
sub.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
mul.v.v
sub.v.v
pop.v.v self.x
push.v self.y
push.v self.image_yscale
pushi.e 1
sub.i.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
mul.v.v
sub.v.v
pop.v.v self.y
pushi.e 44
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.image_speed
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.d 0.1
pop.v.d self.image_speed

:[2]
pushi.e 1
conv.i.d
push.v self.image_speed
div.v.d
push.v self.image_number
mul.v.v
pushi.e 3
add.i.v
pop.v.v global.damagetimer

:[end]
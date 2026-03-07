.localvar 0 arguments

:[0]
pushi.e 1
push.v self.whitepro
sub.v.i
push.v self.image_alpha
mul.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 989
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.whitepro
push.v self.image_alpha
mul.v.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 990
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v LT
bf [2]

:[1]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x

:[2]
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [4]

:[3]
push.d 0.3
pop.v.d self.gravity

:[4]
push.v self.timer
pushi.e 52
cmp.i.v EQ
bf [6]

:[5]
pushi.e 92
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed

:[6]
push.v self.timer
pushi.e 53
cmp.i.v GTE
bf [9]

:[7]
pushi.e 58
conv.i.v
push.v self.y
push.v self.x
pushi.e 19
sub.i.v
pushi.e 38
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
popz.v
push.v self.whitepro
push.d 0.05
add.d.v
pop.v.v self.whitepro
push.v self.image_yscale
push.d 0.03
sub.d.v
pop.v.v self.image_yscale
push.v self.y
push.d 0.5
add.d.v
pop.v.v self.y
push.v self.image_yscale
push.d 0.3
cmp.d.v LT
bf [9]

:[8]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[9]
push.v self.image_yscale
push.d 0.01
cmp.d.v LT
bf [11]

:[10]
pushi.e 1
pop.v.i self.d

:[11]
push.v self.timer
pushi.e 90
cmp.i.v GTE
bf [13]

:[12]
pushi.e 1
pop.v.i self.d

:[13]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [end]

:[14]
pushi.e -30
pop.v.i self.x
push.v self.ystart
pushi.e 22
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.whitepro
pushi.e -10
pop.v.i self.timer
pushi.e 0
pop.v.i self.d
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.whitepro
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.image_alpha

:[end]
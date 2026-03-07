.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.image_angle
push.v self.aa
add.v.v
pop.v.v self.image_angle

:[2]
push.v self.breaking
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.d 0.7
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.d
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 259
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
push.d 0.7
add.d.v
push.v self.image_blend
push.v self.image_angle
pushi.e 45
add.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
pushi.e 259
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
push.v self.image_xscale
pushi.e 10
cmp.i.v LT
bf [8]

:[5]
push.v self.x
push.v self.siner
call.i sin(argc=1)
push.v self.image_xscale
mul.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
call.i cos(argc=1)
push.v self.image_xscale
mul.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.y
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [7]

:[6]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha

:[7]
push.v self.image_xscale
push.d 0.5
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.5
add.d.v
pop.v.v self.image_yscale

:[8]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
cmp.v.v GT
bf [10]

:[9]
push.v self.breaking
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 1
pop.v.i self.breaking
pushi.e 143
conv.i.v
call.i snd_play(argc=1)
popz.v

:[13]
push.v self.breaking
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 259
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[15]
push.v self.breaking
pushi.e 1
cmp.i.v EQ
bf [22]

:[16]
pushi.e 0
pop.v.i self.speed
push.v self.tab
push.d 0.1
add.d.v
pop.v.v self.tab
push.v self.talpha
pushi.e 1
cmp.i.v LT
bf [18]

:[17]
push.v self.talpha
push.d 0.2
add.d.v
pop.v.v self.talpha

:[18]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_xscale
push.d 0.5
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.5
add.d.v
pop.v.v self.image_yscale
pushi.e 0
pop.v.i self.true_tab
push.v self.talpha
pushi.e 1
cmp.i.v GTE
bf [20]

:[19]
push.v self.tab
push.d 0.5
sub.d.v
pop.v.v self.true_tab

:[20]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.v self.talpha
push.v self.true_tab
sub.v.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
push.v self.talpha
add.v.i
push.v self.talpha
pushi.e 2
mul.i.v
push.v self.talpha
pushi.e 2
mul.i.v
push.v self.phrase
push.v self.y
pushi.e 10
sub.i.v
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 10
sub.i.v
push.v self.talpha
pushi.e 10
mul.i.v
sub.v.v
push.v self.x
pushi.e 20
sub.i.v
push.v self.talpha
pushi.e 40
mul.i.v
sub.v.v
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.image_alpha
pushi.e -1
cmp.i.v LT
bf [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[end]
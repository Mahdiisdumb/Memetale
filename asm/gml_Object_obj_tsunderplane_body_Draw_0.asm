.localvar 0 arguments

:[0]
push.v self.hurt
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
b [5]

:[2]
push.v self.parent
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pop.v.v self.x
b [5]

:[4]
pushi.e 0
pop.v.i self.hurt
pushi.e 1
pop.v.i self.fall

:[5]
push.v self.fall
pushi.e 3
cmp.i.v LT
bf [13]

:[6]
push.v self.grchange
pushi.e 1
sub.i.v
pop.v.v self.grchange
push.v self.parent
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[7]
push.v self.parent
conv.v.i
push.v [stacktop]self.graze
pop.v.v self.curgr
push.v self.prevgr
push.v self.curgr
cmp.v.v NEQ
bf [9]

:[8]
pushi.e 7
pop.v.i self.grchange

:[9]
push.v self.curgr
pop.v.v self.prevgr

:[10]
push.i 16777215
pop.v.i self.x_color
push.v self.grchange
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.v self.grchange
pushi.e 10
conv.i.d
div.d.v
pushi.e 255
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.x_color

:[12]
push.v self.alpha
push.v self.x_color
push.v self.rot
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 76
push.v self.y
add.v.i
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
pushi.e 94
add.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.alpha
push.i 16777215
conv.i.v
push.v self.rot
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 90
push.v self.y
add.v.i
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pushi.e 154
push.v self.x
add.v.i
push.v self.image_index
pushi.e 397
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[13]
push.v self.fall
pushi.e 1
cmp.i.v EQ
bf [16]

:[14]
pushi.e 329
conv.i.v
push.v self.y
pushi.e 60
add.i.v
pushi.e 60
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 60
add.i.v
pushi.e 60
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.pl
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
push.v self.pl
conv.v.i
pop.v.v [stacktop]self.depth
push.d 0.08
pop.v.d self.gravity
pushi.e 270
pop.v.i self.gravity_direction
push.v self.x
push.v self.siner
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.x
push.v self.rot
push.d 0.75
sub.d.v
pop.v.v self.rot
pushi.e 4
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.ystart
pushi.e 20
add.i.v
pushi.e 5
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.xstart
pushi.e 160
add.i.v
pushi.e 5
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 0
conv.i.v
pushi.e 26
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.s "obj_tsunderplane_body_152"@32909
conv.s.v
call.i scr_gettext(argc=1)
push.v self.ystart
pushi.e 30
add.i.v
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.xstart
pushi.e 190
add.i.v
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.y
pushi.e 160
push.v self.sprite_height
sub.v.i
cmp.v.v GT
bf [16]

:[15]
pushi.e 2
pop.v.i self.fall

:[16]
push.v self.fall
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 0.7
conv.d.v
push.d 1.2
conv.d.v
pushi.e 330
conv.i.v
call.i caster_play(argc=3)
popz.v
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
call.i scr_shake(argc=3)
popz.v
pushi.e 3
pop.v.i self.fall

:[18]
push.v self.fall
pushi.e 3
cmp.i.v EQ
bf [21]

:[19]
push.v self.rot
pushi.e 1
sub.i.v
pop.v.v self.rot
push.d 0.3
conv.d.v
call.i random(argc=1)
pop.v.v self.g
push.v self.alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 3.8
push.v self.alpha
pushi.e 2
mul.i.v
sub.v.d
push.v self.g
add.v.v
push.d 3.5
push.v self.alpha
push.d 1.8
mul.d.v
sub.v.d
push.v self.g
add.v.v
pushi.e 240
conv.i.v
push.v self.x
pushi.e 90
add.i.v
pushi.e 0
conv.i.v
pushi.e 398
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.alpha
push.i 16777215
conv.i.v
push.v self.rot
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 90
push.v self.y
add.v.i
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pushi.e 160
push.v self.x
add.v.i
push.v self.image_index
pushi.e 397
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.alpha
push.d 0.03
sub.d.v
pop.v.v self.alpha
push.v self.alpha
push.d 0.05
cmp.d.v LT
bf [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
push.v self.fall
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
push.v self.parent
call.i instance_exists(argc=1)
conv.v.b
b [24]

:[23]
push.e 0

:[24]
bf [end]

:[25]
push.v self.parent
conv.v.i
push.v [stacktop]self.graze
pushi.e 0
cmp.i.v GT
bf [end]

:[26]
push.v self.parent
conv.v.i
push.v [stacktop]self.graze
pushi.e 1
sub.i.v
pop.v.v self.grgr
push.v self.grgr
pushi.e 3
cmp.i.v GT
bf [28]

:[27]
pushi.e 3
pop.v.i self.grgr

:[28]
push.d 0.7
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
push.i 16777215
conv.i.v
push.v self.rot
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 76
push.v self.y
add.v.i
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
push.v self.x
pushi.e 94
add.i.v
push.v self.siner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.grgr
pushi.e 399
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]
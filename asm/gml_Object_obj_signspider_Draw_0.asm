.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [39]

:[1]
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.signimg
pushi.e 435
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.signimg
pushi.e 4
cmp.i.v GTE
bf [37]

:[2]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [4]

:[3]
pushi.e 19
conv.i.v
call.i draw_set_font(argc=1)
popz.v
b [5]

:[4]
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v

:[5]
push.s "obj_signspider_100"@31722
conv.s.v
call.i scr_gettext(argc=1)
push.v self.y
pushi.e 100
sub.i.v
push.v self.x
call.i scr_drawtext_centered(argc=3)
popz.v
push.v self.signno
pushi.e 0
cmp.i.v EQ
bt [9]

:[6]
push.v self.signno
pushi.e 1
cmp.i.v EQ
bt [9]

:[7]
push.v self.signno
pushi.e 6
cmp.i.v EQ
bt [9]

:[8]
push.v self.signno
pushi.e 10
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
push.v self.y
pushi.e 70
sub.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 426
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[12]
push.v self.signno
pushi.e 8
cmp.i.v EQ
bf [14]

:[13]
push.v self.y
pushi.e 70
sub.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 430
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[14]
push.v self.signno
pushi.e 12
cmp.i.v EQ
bf [16]

:[15]
push.v self.y
pushi.e 70
sub.i.v
push.v self.x
pushi.e 15
sub.i.v
pushi.e 0
conv.i.v
pushi.e 430
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 70
sub.i.v
push.v self.x
pushi.e 5
add.i.v
pushi.e 0
conv.i.v
pushi.e 430
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[16]
push.v self.signno
pushi.e 2
cmp.i.v EQ
bt [18]

:[17]
push.v self.signno
pushi.e 13
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [21]

:[20]
push.v self.y
pushi.e 70
sub.i.v
push.v self.x
pushi.e 15
sub.i.v
pushi.e 0
conv.i.v
pushi.e 426
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 70
sub.i.v
push.v self.x
pushi.e 15
add.i.v
pushi.e 0
conv.i.v
pushi.e 426
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[21]
push.v self.signno
pushi.e 11
cmp.i.v EQ
bf [23]

:[22]
push.v self.y
pushi.e 70
sub.i.v
push.v self.x
pushi.e 15
sub.i.v
pushi.e 0
conv.i.v
pushi.e 427
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 70
sub.i.v
push.v self.x
pushi.e 15
add.i.v
pushi.e 0
conv.i.v
pushi.e 427
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[23]
push.v self.signno
pushi.e 3
cmp.i.v EQ
bt [26]

:[24]
push.v self.signno
pushi.e 5
cmp.i.v EQ
bt [26]

:[25]
push.v self.signno
pushi.e 7
cmp.i.v EQ
b [27]

:[26]
push.e 1

:[27]
bf [29]

:[28]
push.v self.y
pushi.e 70
sub.i.v
push.v self.x
pushi.e 15
sub.i.v
pushi.e 0
conv.i.v
pushi.e 426
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 70
sub.i.v
push.v self.x
pushi.e 5
add.i.v
pushi.e 0
conv.i.v
pushi.e 427
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[29]
push.v self.signno
pushi.e 4
cmp.i.v EQ
bt [32]

:[30]
push.v self.signno
pushi.e 9
cmp.i.v EQ
bt [32]

:[31]
push.v self.signno
pushi.e 15
cmp.i.v EQ
b [33]

:[32]
push.e 1

:[33]
bf [35]

:[34]
push.v self.y
pushi.e 70
sub.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 428
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[35]
push.v self.signno
pushi.e 14
cmp.i.v EQ
bf [37]

:[36]
push.v self.y
pushi.e 70
sub.i.v
push.v self.x
pushi.e 25
sub.i.v
pushi.e 0
conv.i.v
pushi.e 426
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 70
sub.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 427
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 70
sub.i.v
push.v self.x
pushi.e 25
add.i.v
pushi.e 0
conv.i.v
pushi.e 430
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[37]
push.v self.signimg
pushi.e 4
cmp.i.v LT
bf [39]

:[38]
push.v self.signimg
push.d 0.5
add.d.v
pop.v.v self.signimg

:[39]
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
pushglb.v global.myfight
pushi.e 0
cmp.i.v GT
bt [41]

:[40]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v GT
b [42]

:[41]
push.e 1

:[42]
bf [48]

:[43]
push.v self.con
pushi.e 2
cmp.i.v LT
bf [45]

:[44]
push.v self.buffer
pushi.e 1
cmp.i.v LT
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
pushi.e 2
pop.v.i self.con

:[48]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [51]

:[49]
push.v self.signimg
push.d 0.5
sub.d.v
pop.v.v self.signimg
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.signimg
pushi.e 435
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.signimg
pushi.e 1
cmp.i.v LT
bf [51]

:[50]
pushi.e 3
pop.v.i self.con

:[51]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[52]
push.d 0.5
pop.v.d self.image_speed
push.v self.hspeed
pushi.e 10
cmp.i.v LT
bf [54]

:[53]
push.v self.hspeed
pushi.e 1
add.i.v
pop.v.v self.hspeed

:[54]
push.v self.x
pushi.e 650
cmp.i.v GT
bf [end]

:[55]
call.i instance_destroy(argc=0)
popz.v

:[end]
.localvar 0 arguments

:[0]
push.v self.anim
pushi.e 1
add.i.v
pop.v.v self.anim
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.side
pushi.e 2
add.i.v
pop.v.v self.side
push.v self.side
pushi.e 800
cmp.i.v GT
bf [2]

:[1]
push.v self.side
pushi.e 800
sub.i.v
pop.v.v self.side

:[2]
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.yoff
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.yoff2
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -10
conv.i.v
pushi.e 999
conv.i.v
pushi.e 240
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 200
conv.i.v
pushi.e 200
conv.i.v
push.v self.siner
pushi.e 6
mul.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.thiscolor
push.v self.thiscolor
call.i draw_set_color(argc=1)
popz.v
push.d 0.5
conv.d.v
push.v self.thiscolor
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 640
conv.i.v
pushi.e 216
conv.i.v
pushi.e 276
conv.i.v
pushi.e 0
conv.i.v
push.v self.side
pushi.e 0
conv.i.v
pushi.e 2470
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
push.d 0.5
conv.d.v
push.v self.thiscolor
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 640
conv.i.v
pushi.e 216
conv.i.v
pushi.e 276
conv.i.v
pushi.e 0
conv.i.v
push.v self.side
pushi.e 60
add.i.v
pushi.e 0
conv.i.v
pushi.e 2470
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
push.d 0.5
conv.d.v
push.v self.thiscolor
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 640
conv.i.v
pushi.e 216
conv.i.v
pushi.e 276
conv.i.v
pushi.e 0
conv.i.v
push.v self.side
pushi.e 120
add.i.v
pushi.e 0
conv.i.v
pushi.e 2470
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.thiscolor
call.i draw_set_color(argc=1)
popz.v
push.d 0.5
conv.d.v
push.v self.thiscolor
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 216
conv.i.v
pushi.e 276
conv.i.v
pushi.e 0
conv.i.v
push.v self.side
pushi.e 0
conv.i.v
pushi.e 2470
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
push.d 0.5
conv.d.v
push.v self.thiscolor
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 216
conv.i.v
pushi.e 276
conv.i.v
pushi.e 0
conv.i.v
push.v self.side
pushi.e 60
add.i.v
pushi.e 0
conv.i.v
pushi.e 2470
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
push.d 0.5
conv.d.v
push.v self.thiscolor
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 216
conv.i.v
pushi.e 276
conv.i.v
pushi.e 0
conv.i.v
push.v self.side
pushi.e 120
add.i.v
pushi.e 0
conv.i.v
pushi.e 2470
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 52
sub.i.v
push.v self.yoff2
pushi.e 4
mul.i.v
add.v.v
push.v self.x
pushi.e 42
add.i.v
push.v self.anim
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2449
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 52
sub.i.v
push.v self.yoff2
pushi.e 4
mul.i.v
add.v.v
push.v self.x
pushi.e 44
sub.i.v
push.v self.anim
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2449
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 52
sub.i.v
push.v self.x
pushi.e 110
sub.i.v
push.v self.anim
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2444
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 52
sub.i.v
push.v self.x
pushi.e 108
add.i.v
push.v self.anim
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2444
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 146
add.i.v
push.v self.x
pushi.e 2
sub.i.v
push.v self.anim
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2448
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 68
add.i.v
push.v self.x
pushi.e 2
sub.i.v
push.v self.anim
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2446
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.ar_shake
call.i random(argc=1)
push.v self.ar_shake
call.i random(argc=1)
sub.v.v
pop.v.v self.rx
push.v self.ar_shake
call.i random(argc=1)
push.v self.ar_shake
call.i random(argc=1)
sub.v.v
pop.v.v self.ry
push.v self.ry
push.d 1.5
mul.d.v
pop.v.v self.ry
push.v self.rx
push.d 0.7
mul.d.v
pop.v.v self.rx
push.v self.bodyfader
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.cry
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushglb.v global.faceemotion
pushi.e 2450
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
push.v self.cry
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.ry
pushi.e 3
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.rx
pushi.e 3
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2451
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
push.v self.cry
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.ry
pushi.e 3
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.rx
pushi.e 3
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2452
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[8]
push.v self.image_alpha
push.v self.bodyfader
sub.v.v
push.v self.image_blend
push.v self.armrot
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 56
add.i.v
push.v self.yoff
pushi.e 2
mul.i.v
add.v.v
push.v self.ry
add.v.v
push.v self.x
pushi.e 58
sub.i.v
push.v self.rx
add.v.v
push.v self.anim
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2454
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.bodyfader
sub.v.v
push.v self.image_blend
push.v self.armrot
neg.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 56
add.i.v
push.v self.yoff
pushi.e 2
mul.i.v
add.v.v
push.v self.ry
add.v.v
push.v self.x
pushi.e 56
add.i.v
push.v self.rx
add.v.v
push.v self.anim
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2454
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.bodyfader
sub.v.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 32
add.i.v
push.v self.x
pushi.e 84
sub.i.v
push.v self.anim
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2455
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.bodyfader
sub.v.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 32
add.i.v
push.v self.x
pushi.e 82
add.i.v
push.v self.anim
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2455
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.ucon
pushi.e 0
cmp.i.v GT
bf [25]

:[9]
push.v self.ucon
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.d 1.2
conv.d.v
push.d 0.7
conv.d.v
push.v self.psfx
call.i caster_play(argc=3)
popz.v
pushi.e 30
pop.v.i self.arf
pushi.e 2
pop.v.i self.ucon

:[11]
push.v self.ucon
pushi.e 2
cmp.i.v EQ
bf [14]

:[12]
push.v self.armrot
push.v self.arf
add.v.v
pop.v.v self.armrot
push.v self.arf
pushi.e 2
sub.i.v
pop.v.v self.arf
push.v self.arf
pushi.e 0
cmp.i.v LTE
bf [14]

:[13]
pushi.e 3
pop.v.i self.ucon
pushi.e 5
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm

:[14]
push.v self.ucon
pushi.e 4
cmp.i.v EQ
bf [20]

:[15]
pushi.e 576
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.u_gen
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.type
pushi.e 574
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 574
conv.i.v
push.v 744.y
push.v 744.x
call.i instance_create(argc=3)
pop.v.v self.target

:[17]
pushi.e 5
pop.v.i self.ucon
pushi.e 140
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
push.v self.gen
conv.v.i
push.v [stacktop]self.type
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
pushi.e 130
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm

:[19]
pushi.e -30
pop.v.i self.arf

:[20]
push.v self.ucon
pushi.e 6
cmp.i.v EQ
bf [25]

:[21]
push.v self.gen
conv.v.i
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]
push.v self.armrot
push.v self.arf
add.v.v
pop.v.v self.armrot
push.v self.arf
pushi.e 2
add.i.v
pop.v.v self.arf
push.v self.arf
pushi.e 0
cmp.i.v GTE
bf [25]

:[24]
pushi.e 0
pop.v.i self.ucon
pushi.e 3
pop.v.i global.mnfight

:[25]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [30]

:[26]
pushi.e 574
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [30]

:[27]
pushi.e 574
pushenv [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [28]

:[30]
push.v self.bcon
pushi.e 0
cmp.i.v GT
bf [64]

:[31]
push.v self.bcon
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushi.e 0
pop.v.i self.ps
pushi.e 7
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.r_break
pushi.e 1
pop.v.i self.r_al
pushi.e 0
pop.v.i self.radi
pushi.e 0
pop.v.i self.r_siner
pushi.e 30
pop.v.i self.arf
pushi.e 2
pop.v.i self.bcon

:[33]
push.v self.bcon
pushi.e 2
cmp.i.v EQ
bf [36]

:[34]
push.v self.armrot
push.v self.arf
sub.v.v
pop.v.v self.armrot
push.v self.arf
pushi.e 5
sub.i.v
pop.v.v self.arf
push.v self.arf
pushi.e 0
cmp.i.v LTE
bf [36]

:[35]
pushi.e 3
pop.v.i self.bcon
pushi.e 35
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[36]
push.v self.bcon
pushi.e 4
cmp.i.v EQ
bf [38]

:[37]
push.d 4.1
pop.v.d self.bcon
pushi.e 2
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[38]
push.v self.bcon
push.d 4.1
cmp.d.v EQ
bf [40]

:[39]
push.v self.armrot
pushi.e 5
sub.i.v
pop.v.v self.armrot

:[40]
push.v self.bcon
push.d 5.1
cmp.d.v EQ
bf [42]

:[41]
pushi.e 5
pop.v.i self.bcon
pushi.e 5
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[42]
push.v self.bcon
pushi.e 5
cmp.i.v EQ
bf [44]

:[43]
pushi.e 0
pop.v.i self.ar_shake
push.v self.armrot
pushi.e 26
add.i.v
pop.v.v self.armrot

:[44]
push.v self.bcon
pushi.e 6
cmp.i.v EQ
bf [46]

:[45]
pushi.e 2
pop.v.i self.cry
pushi.e 5
pop.v.i self.ar_shake
push.v self.armrot
neg.v
pushi.e 90
sub.i.v
pushi.e 150
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.armx
push.v self.armrot
neg.v
pushi.e 90
sub.i.v
pushi.e 150
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.army
pushi.e 579
conv.i.v
push.v self.y
pushi.e 56
add.i.v
push.v self.army
add.v.v
pushi.e 20
sub.i.v
pushi.e 320
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.beam
pushi.e 7
pop.v.i self.bcon
pushi.e 400
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[46]
push.v self.bcon
pushi.e 7
cmp.i.v LT
bf [48]

:[47]
push.v self.r_al
pushi.e 0
cmp.i.v GT
b [49]

:[48]
push.e 0

:[49]
bf [56]

:[50]
push.v self.ar_shake
push.d 0.2
add.d.v
pop.v.v self.ar_shake
push.v self.radi
pushi.e 60
cmp.i.v LT
bf [52]

:[51]
push.v self.radi
push.d 1.5
add.d.v
pop.v.v self.radi

:[52]
push.v self.r_siner
pushi.e 1
add.i.v
pop.v.v self.r_siner
push.v self.r_siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.radi
pushi.e 8
conv.i.d
div.d.v
mul.v.v
pop.v.v self.radi_s
push.v self.armrot
neg.v
pushi.e 90
sub.i.v
pushi.e 150
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.armx
push.v self.armrot
neg.v
pushi.e 90
sub.i.v
pushi.e 150
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.army
push.v self.r_break
pushi.e 1
cmp.i.v EQ
bf [55]

:[53]
push.v self.radi
pushi.e 6
sub.i.v
pop.v.v self.radi
push.v self.r_al
push.d 0.1
sub.d.v
pop.v.v self.r_al
push.v self.r_al
pushi.e 0
cmp.i.v LTE
bf [55]

:[54]
pushi.e 0
pop.v.i self.r_al

:[55]
push.v self.r_al
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.radi
push.v self.radi_s
add.v.v
push.v self.y
pushi.e 56
add.i.v
push.v self.army
add.v.v
push.v self.x
pushi.e 56
add.i.v
push.v self.armx
add.v.v
call.i draw_circle(argc=4)
popz.v
pushi.e 1
conv.i.v
push.v self.radi
push.v self.radi_s
add.v.v
pushi.e 1
sub.i.v
push.v self.y
pushi.e 56
add.i.v
push.v self.army
add.v.v
push.v self.x
pushi.e 56
add.i.v
push.v self.armx
add.v.v
call.i draw_circle(argc=4)
popz.v
push.v self.r_al
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
push.v self.radi
push.v self.radi_s
add.v.v
pushi.e 40
conv.i.d
div.d.v
mul.v.i
pushi.e 2
push.v self.radi
push.v self.radi_s
add.v.v
pushi.e 40
conv.i.d
div.d.v
mul.v.i
push.v self.y
pushi.e 56
add.i.v
push.v self.army
add.v.v
push.v self.x
pushi.e 56
add.i.v
push.v self.armx
add.v.v
pushi.e 0
conv.i.v
pushi.e 2502
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.radi
push.v self.radi_s
add.v.v
push.v self.y
pushi.e 56
add.i.v
push.v self.army
add.v.v
push.v self.x
pushi.e 58
sub.i.v
push.v self.armx
sub.v.v
call.i draw_circle(argc=4)
popz.v
pushi.e 1
conv.i.v
push.v self.radi
push.v self.radi_s
add.v.v
pushi.e 1
sub.i.v
push.v self.y
pushi.e 56
add.i.v
push.v self.army
add.v.v
push.v self.x
pushi.e 58
sub.i.v
push.v self.armx
sub.v.v
call.i draw_circle(argc=4)
popz.v
push.v self.r_al
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
push.v self.radi
push.v self.radi_s
add.v.v
pushi.e 40
conv.i.d
div.d.v
mul.v.i
pushi.e 2
push.v self.radi
push.v self.radi_s
add.v.v
pushi.e 40
conv.i.d
div.d.v
mul.v.i
push.v self.y
pushi.e 56
add.i.v
push.v self.army
add.v.v
push.v self.x
pushi.e 58
sub.i.v
push.v self.armx
sub.v.v
pushi.e 0
conv.i.v
pushi.e 2502
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[56]
push.v self.bcon
pushi.e 8
cmp.i.v EQ
bf [64]

:[57]
pushi.e 0
pop.v.i self.cry
pushi.e 5
pop.v.i global.faceemotion
push.v self.ar_shake
pushi.e 0
cmp.i.v GT
bf [59]

:[58]
push.v self.ar_shake
pushi.e 1
sub.i.v
pop.v.v self.ar_shake

:[59]
push.v self.armrot
pushi.e 0
cmp.i.v GT
bf [61]

:[60]
push.v self.armrot
pushi.e 2
sub.i.v
pop.v.v self.armrot
b [62]

:[61]
pushi.e 0
pop.v.i self.armrot

:[62]
push.v self.ar_shake
pushi.e 0
cmp.i.v LTE
bf [64]

:[63]
pushi.e 0
pop.v.i self.ar_shake
pushi.e 0
pop.v.i self.bcon
pushi.e 3
pop.v.i global.mnfight

:[64]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [65]

:[65]
push.v self.darker
pushi.e 1
cmp.i.v EQ
bf [end]

:[66]
pushi.e 184
pushenv [68]

:[67]
push.v self.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[68]
popenv [67]
push.v self.darker_x
pushi.e 1
cmp.i.v LT
bf [70]

:[69]
push.v self.darker_x
push.d 0.04
add.d.v
pop.v.v self.darker_x

:[70]
push.v self.darker_x
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]
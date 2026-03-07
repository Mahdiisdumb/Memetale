.localvar 0 arguments

:[0]
push.v self.oo
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.oo
b [3]

:[2]
pushi.e 0
pop.v.i self.oo

:[3]
push.v self.freeze
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[5]
push.v self.s_timer
pushi.e 1
add.i.v
pop.v.v self.s_timer
push.v self.s_timer
pushi.e 60
cmp.i.v GT
bf [7]

:[6]
pushi.e 0
pop.v.i self.shock

:[7]
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 90
mul.i.v
push.v self.mf
mul.v.v
pop.v.v self.ss
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
push.v self.mf
mul.v.v
pop.v.v self.ii
push.v self.mf
pushi.e 1
cmp.i.v LT
bf [9]

:[8]
push.v self.y
pushi.e 0
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.v self.y
pushi.e 1
add.i.v
pop.v.v self.y

:[12]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [30]

:[13]
push.v self.mf
pushi.e 1
cmp.i.v LT
bf [15]

:[14]
push.v self.y
pushi.e -30
cmp.i.v LT
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.v self.y
pushi.e 1
add.i.v
pop.v.v self.y

:[18]
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.5
mul.d.v
push.v self.mf
mul.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.8
mul.d.v
push.v self.mf
mul.v.v
add.v.v
pop.v.v self.y
push.v self.ss
pushi.e 0
cmp.i.v LT
bf [20]

:[19]
pushi.e 255
push.v self.ss
add.v.i
pushi.e 255
push.v self.ss
add.v.i
pushi.e 255
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.image_blend

:[20]
push.v self.oo
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.v self.ii
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
pushi.e 0
conv.i.v
pushi.e 2419
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[22]
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
pushi.e 0
conv.i.v
pushi.e 2418
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.shock
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
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
pushi.e 58
add.i.v
pushi.e 0
conv.i.v
pushi.e 2421
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [30]

:[24]
push.v self.face
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
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
pushi.e 58
add.i.v
pushi.e 0
conv.i.v
pushi.e 2420
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[26]
push.v self.face
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
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
pushi.e 58
add.i.v
pushi.e 0
conv.i.v
pushi.e 2422
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[28]
push.v self.face
pushi.e 2
cmp.i.v EQ
bf [30]

:[29]
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
pushi.e 58
add.i.v
pushi.e 1
conv.i.v
pushi.e 2422
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[30]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [43]

:[31]
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.5
mul.d.v
push.v self.mf
mul.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.8
mul.d.v
push.v self.mf
mul.v.v
add.v.v
pop.v.v self.y
push.v self.ss
pushi.e 0
cmp.i.v LT
bf [33]

:[32]
pushi.e 255
push.v self.ss
add.v.i
pushi.e 255
push.v self.ss
add.v.i
pushi.e 255
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.image_blend

:[33]
push.v self.oo
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
push.v self.ii
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
pushi.e 12
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2430
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[35]
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
pushi.e 0
conv.i.v
pushi.e 2427
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.shock
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
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
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
pushi.e 2428
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [43]

:[37]
push.v self.face
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
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
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
pushi.e 2429
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[39]
push.v self.face
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
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
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
pushi.e 2412
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[41]
push.v self.face
pushi.e 2
cmp.i.v EQ
bf [43]

:[42]
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
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
pushi.e 2424
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[43]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [56]

:[44]
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.5
mul.d.v
push.v self.mf
mul.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.8
mul.d.v
push.v self.mf
mul.v.v
add.v.v
pop.v.v self.y
push.v self.ss
pushi.e 0
cmp.i.v LT
bf [46]

:[45]
pushi.e 255
push.v self.ss
add.v.i
pushi.e 255
push.v self.ss
add.v.i
pushi.e 255
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.image_blend

:[46]
push.v self.oo
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
push.v self.ii
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
pushi.e 0
conv.i.v
pushi.e 2433
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[48]
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
pushi.e 0
conv.i.v
pushi.e 2431
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.shock
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 44
sub.i.v
push.v self.x
pushi.e 60
add.i.v
pushi.e 0
conv.i.v
pushi.e 2432
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [56]

:[50]
push.v self.face
pushi.e 0
cmp.i.v EQ
bf [52]

:[51]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 44
sub.i.v
push.v self.x
pushi.e 60
add.i.v
pushi.e 0
conv.i.v
pushi.e 2432
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[52]
push.v self.face
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 44
sub.i.v
push.v self.x
pushi.e 60
add.i.v
pushi.e 1
conv.i.v
pushi.e 2432
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[54]
push.v self.face
pushi.e 2
cmp.i.v EQ
bf [56]

:[55]
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
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
pushi.e 2424
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[56]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [69]

:[57]
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.5
mul.d.v
push.v self.mf
mul.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.8
mul.d.v
push.v self.mf
mul.v.v
add.v.v
pop.v.v self.y
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
pop.v.v self.goof
push.v self.ss
pushi.e 0
cmp.i.v LT
bf [59]

:[58]
pushi.e 255
push.v self.ss
add.v.i
pushi.e 255
push.v self.ss
add.v.i
pushi.e 255
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.image_blend

:[59]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.goof
pushi.e 3
conv.i.d
div.d.v
add.v.v
push.v self.x
pushi.e 30
sub.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e 301
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.oo
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
push.v self.ii
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
pushi.e 0
conv.i.v
pushi.e 2435
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[61]
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
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2434
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.shock
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
pushi.e 2436
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [69]

:[63]
push.v self.face
pushi.e 0
cmp.i.v EQ
bf [65]

:[64]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 30
add.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2437
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[65]
push.v self.face
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
pushi.e 2438
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[67]
push.v self.face
pushi.e 2
cmp.i.v EQ
bf [69]

:[68]
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
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
pushi.e 2424
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[69]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [82]

:[70]
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.5
mul.d.v
push.v self.mf
mul.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.8
mul.d.v
push.v self.mf
mul.v.v
add.v.v
pop.v.v self.y
push.v self.ss
pushi.e 0
cmp.i.v LT
bf [72]

:[71]
pushi.e 255
push.v self.ss
add.v.i
pushi.e 255
push.v self.ss
add.v.i
pushi.e 255
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.image_blend

:[72]
push.v self.oo
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.v self.ii
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
pushi.e 0
conv.i.v
pushi.e 2440
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[74]
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
pushi.e 0
conv.i.v
pushi.e 2439
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.shock
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
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
pushi.e 0
conv.i.v
pushi.e 2441
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [82]

:[76]
push.v self.face
pushi.e 0
cmp.i.v EQ
bf [78]

:[77]
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
pushi.e 0
conv.i.v
pushi.e 2442
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[78]
push.v self.face
pushi.e 1
cmp.i.v EQ
bf [80]

:[79]
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
pushi.e 1
conv.i.v
pushi.e 2442
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[80]
push.v self.face
pushi.e 2
cmp.i.v EQ
bf [82]

:[81]
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
pushi.e 2
conv.i.v
pushi.e 2442
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[82]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [95]

:[83]
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.5
mul.d.v
push.v self.mf
mul.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.8
mul.d.v
push.v self.mf
mul.v.v
add.v.v
pop.v.v self.y
push.v self.ss
pushi.e 0
cmp.i.v LT
bf [85]

:[84]
pushi.e 255
push.v self.ss
add.v.i
pushi.e 255
push.v self.ss
add.v.i
pushi.e 255
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.image_blend

:[85]
push.v self.oo
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
push.v self.ii
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
pushi.e 0
conv.i.v
pushi.e 2426
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[87]
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
pushi.e 0
conv.i.v
pushi.e 2423
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.shock
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 32
sub.i.v
push.v self.x
pushi.e 122
add.i.v
pushi.e 0
conv.i.v
pushi.e 2424
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [95]

:[89]
push.v self.face
pushi.e 0
cmp.i.v EQ
bf [91]

:[90]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 32
sub.i.v
push.v self.x
pushi.e 124
add.i.v
pushi.e 0
conv.i.v
pushi.e 2425
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[91]
push.v self.face
pushi.e 1
cmp.i.v EQ
bf [93]

:[92]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 32
sub.i.v
push.v self.x
pushi.e 124
add.i.v
pushi.e 1
conv.i.v
pushi.e 2425
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[93]
push.v self.face
pushi.e 2
cmp.i.v EQ
bf [95]

:[94]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 32
sub.i.v
push.v self.x
pushi.e 124
add.i.v
pushi.e 2
conv.i.v
pushi.e 2425
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[95]
push.v self.click
pushi.e 1
cmp.i.v EQ
bf [end]

:[96]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.x
pushi.e 300
conv.i.v
pushi.e 400
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.y
pushi.e 320
conv.i.v
pushi.e 400
conv.i.v
call.i draw_text(argc=3)
popz.v
pushbltn.v self.mouse_x
pushi.e 50
sub.i.v
pop.v.v self.x
pushbltn.v self.mouse_y
pushi.e 50
sub.i.v
pop.v.v self.y

:[end]
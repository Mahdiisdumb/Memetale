.localvar 0 arguments

:[0]
push.v self.tvmode
pushi.e 0
cmp.i.v EQ
bf [9]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.size
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.d 0.4
add.d.v
push.v self.size
push.d 0.9
add.d.v
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.v self.y
pushi.e 50
add.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.anim
pushi.e 2310
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.anim
push.v self.animspeed
add.v.v
pop.v.v self.anim
push.v self.anim
push.v self.animchoice
pushi.e 1
add.i.v
cmp.v.v GT
bf [3]

:[2]
push.v self.animspeed
neg.v
pop.v.v self.animspeed

:[3]
push.v self.anim
push.v self.animchoice
pushi.e 1
sub.i.v
cmp.v.v LT
bf [5]

:[4]
push.v self.animspeed
neg.v
pop.v.v self.animspeed

:[5]
push.v self.animtimer
pushi.e 1
add.i.v
pop.v.v self.animtimer
push.v self.animtimer
pushi.e 100
cmp.i.v GT
bf [8]

:[6]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.size
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.d 0.4
add.d.v
push.v self.size
push.d 0.8
add.d.v
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.v self.y
pushi.e 50
add.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
pushi.e 2309
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.animchoice
push.v self.animchoice
pop.v.v self.anim
push.v self.animtimer
pushi.e 106
cmp.i.v GT
bf [8]

:[7]
pushi.e 0
pop.v.i self.animtimer

:[8]
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[9]
push.v self.tvmode
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e -1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 140
add.i.v
push.v self.x
pushi.e 160
add.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.d 0.8
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.d
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
pushi.e 2363
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.y
pushi.e 110
add.i.v
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 80
add.i.v
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
pushglb.v global.soul_rescue
pushi.e 2364
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[11]
push.v self.tvmode
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
pushi.e -1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 1.2
conv.d.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 26
add.i.v
pushi.e 3
conv.i.v
call.i random(argc=1)
pushi.e 2309
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[13]
push.v self.tvmode
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 140
add.i.v
push.v self.x
pushi.e 160
add.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
pushi.e 90
add.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
pushi.e 80
add.i.v
pushglb.v global.soul_rescue
pushi.e 2364
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[15]
push.v self.tvmode
pushi.e 4
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.size
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.d 0.4
add.d.v
push.v self.size
push.d 0.9
add.d.v
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.v self.y
pushi.e 50
add.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.tt
pushi.e 2310
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[17]
push.v self.tvmode
pushi.e 5
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 140
add.i.v
push.v self.x
pushi.e 160
add.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[19]
push.v self.tvmode
pushi.e 10
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 13
add.i.v
push.v self.tt
pushi.e 2308
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[21]
push.v self.tvmode
pushi.e 11
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 140
add.i.v
push.v self.x
pushi.e 160
add.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 2.9
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.d
push.d 2.9
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.d
push.v self.y
pushi.e 56
add.i.v
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 21
add.i.v
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pushglb.v global.faceemotion
call.i floor(argc=1)
pushi.e 2299
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[23]
push.v self.tvmode
pushi.e 12
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.size
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.d 0.4
add.d.v
push.v self.size
push.d 0.9
add.d.v
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.v self.y
pushi.e 50
add.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 35
conv.i.v
pushi.e 2310
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
pop.v.i self.anim4
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[25]
push.v self.tvmode
pushi.e 13
cmp.i.v EQ
bf [27]

:[26]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 140
add.i.v
push.v self.x
pushi.e 160
add.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
push.v self.anim4
sub.v.i
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.size
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.d 0.4
add.d.v
push.v self.size
push.d 0.9
add.d.v
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.v self.y
pushi.e 50
add.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 35
conv.i.v
pushi.e 2310
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.anim4
push.d 0.01
add.d.v
pop.v.v self.anim4
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[27]
push.v self.tvmode
pushi.e 18
cmp.i.v EQ
bf [29]

:[28]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 140
add.i.v
push.v self.x
pushi.e 160
add.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 1.3
conv.d.v
push.v self.y
pushi.e 65
add.i.v
push.v self.x
pushi.e 25
add.i.v
pushi.e 0
conv.i.v
pushi.e 2304
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[29]
push.v self.tvmode
pushi.e 19
cmp.i.v EQ
bf [35]

:[30]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 140
add.i.v
push.v self.x
pushi.e 160
add.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 1.3
conv.d.v
push.v self.y
pushi.e 65
add.i.v
push.v self.x
pushi.e 25
add.i.v
push.v self.anim4
call.i floor(argc=1)
pushi.e 2304
conv.i.v
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
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.anim5
push.d 0.5
add.d.v
pop.v.v self.anim5
push.v self.anim4
pushi.e 6
cmp.i.v LT
bf [32]

:[31]
push.v self.anim4
push.d 0.5
add.d.v
pop.v.v self.anim4

:[32]
push.v self.anim5
pushi.e 22
cmp.i.v GT
bf [35]

:[33]
push.v self.anim4
pushi.e 15
cmp.i.v LT
bf [35]

:[34]
push.v self.anim4
push.d 0.5
add.d.v
pop.v.v self.anim4

:[35]
push.v self.tvmode
pushi.e 20
cmp.i.v EQ
bf [37]

:[36]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 140
add.i.v
push.v self.x
pushi.e 160
add.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
push.d 3.141592653589793
mul.d.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 1.3
conv.d.v
push.v self.y
pushi.e 65
add.i.v
push.v self.x
pushi.e 25
add.i.v
push.v self.anim3
call.i floor(argc=1)
pushi.e 2305
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.anim3
push.d 0.5
add.d.v
pop.v.v self.anim3

:[37]
push.v self.tvmode
pushi.e 21
cmp.i.v EQ
bf [39]

:[38]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 140
add.i.v
push.v self.x
pushi.e 160
add.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 1.3
conv.d.v
push.v self.y
pushi.e 65
add.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
push.v self.x
pushi.e 25
add.i.v
pushi.e 0
conv.i.v
pushi.e 2307
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[39]
push.v self.tvmode
pushi.e 22
cmp.i.v EQ
bf [41]

:[40]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 140
add.i.v
push.v self.x
pushi.e 160
add.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 1.3
conv.d.v
push.v self.y
pushi.e 65
add.i.v
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 25
add.i.v
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pushglb.v global.faceemotion
pushi.e 2306
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[41]
push.v self.tvmode
pushi.e 24
cmp.i.v EQ
bf [43]

:[42]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 140
add.i.v
push.v self.x
pushi.e 160
add.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.anim6
pushi.e 30
sub.i.v
pushi.e 30
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.y
pushi.e 140
add.i.v
push.v self.x
pushi.e 160
add.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.anim6
pushi.e 1
add.i.v
pop.v.v self.anim6
push.v self.anim6
pushi.e 30
sub.i.v
pushi.e 30
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 1.3
conv.d.v
push.v self.y
pushi.e 65
add.i.v
push.v self.x
pushi.e 25
add.i.v
pushi.e 0
conv.i.v
pushi.e 2304
conv.i.v
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
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[43]
push.v self.tvmode
pushi.e 25
cmp.i.v EQ
bf [45]

:[44]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 140
add.i.v
push.v self.x
pushi.e 160
add.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i ossafe_fill_rectangle(argc=4)
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
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[45]
push.v self.tvmode
pushi.e 26
cmp.i.v EQ
bf [47]

:[46]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 140
add.i.v
push.v self.x
pushi.e 160
add.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.anim6
pushi.e 11
sub.i.v
pushi.e 10
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.y
pushi.e 140
add.i.v
push.v self.x
pushi.e 160
add.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.anim6
pushi.e 1
add.i.v
pop.v.v self.anim6
push.v self.anim6
pushi.e 11
sub.i.v
pushi.e 10
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 1.3
conv.d.v
push.v self.y
pushi.e 65
add.i.v
push.v self.x
pushi.e 25
add.i.v
pushi.e 11
conv.i.v
pushi.e 2304
conv.i.v
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
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[47]
push.v self.tvmode
pushi.e 99
cmp.i.v EQ
bf [49]

:[48]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.size
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.d 0.4
add.d.v
push.v self.size
push.d 0.9
add.d.v
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.v self.y
pushi.e 50
add.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.anim
pushi.e 2310
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.y
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.x
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.anim
push.d 0.5
add.d.v
pop.v.v self.anim

:[49]
push.v self.tvmode
pushi.e 100
cmp.i.v EQ
bf [51]

:[50]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.size
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.d 0.4
add.d.v
push.v self.size
push.d 0.9
add.d.v
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.v
push.v self.y
pushi.e 50
add.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 20
add.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.anim
pushi.e 2310
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.y
pushi.e 5
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 5
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.x
pushi.e 5
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 5
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.anim
pushi.e 1
add.i.v
pop.v.v self.anim

:[51]
push.v self.overnoiser
pushi.e 0
cmp.i.v GT
bf [53]

:[52]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 1.2
conv.d.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 26
add.i.v
pushi.e 3
conv.i.v
call.i random(argc=1)
pushi.e 2309
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.overnoiser
pushi.e 1
sub.i.v
pop.v.v self.overnoiser

:[53]
push.v self.shudder
pushi.e 0
cmp.i.v GT
bf [end]

:[54]
push.v self.shuddercounter
pushi.e 1
add.i.v
pop.v.v self.shuddercounter
push.v self.shuddercounter
pushi.e 0
cmp.i.v GT
bf [59]

:[55]
push.v self.flasheron
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
pushi.e 2382
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i self.flasheron
b [58]

:[57]
pushi.e 1
pop.v.i self.flasheron

:[58]
push.v self.remx
push.v self.shudder
call.i random(argc=1)
add.v.v
push.v self.shudder
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.ystart
push.v self.shudder
call.i random(argc=1)
add.v.v
push.v self.shudder
call.i random(argc=1)
sub.v.v
pop.v.v self.y
push.v self.shudder
pushi.e 2
sub.i.v
pop.v.v self.shudder
pushi.e 0
pop.v.i self.shuddercounter

:[59]
push.v self.shudder
pushi.e 1
cmp.i.v LT
bf [end]

:[60]
pushi.e 0
pop.v.i self.shudder

:[end]
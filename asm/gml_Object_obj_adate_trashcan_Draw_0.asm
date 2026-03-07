.localvar 0 arguments

:[0]
push.v self.hoopx
pushi.e 650
cmp.i.v LT
bf [2]

:[1]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 250
sub.i.v
push.v self.hoopx
pushi.e 0
conv.i.v
pushi.e 814
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.drawa
pushi.e 1
cmp.i.v EQ
bf [8]

:[3]
push.v self.alphysy
pushi.e 30
add.i.v
pop.v.v self.alphysy
push.v self.alphysy
pushi.e 154
add.i.v
push.v self.y
pushi.e 52
sub.i.v
sub.v.v
pop.v.v self.heightdown
push.v self.heightdown
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
pushi.e 0
pop.v.i self.heightdown

:[5]
pushi.e 88
pop.v.i self.width
pushi.e 154
push.v self.heightdown
sub.v.i
pop.v.v self.height
push.v self.height
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.alphysy
push.v self.x
pushi.e 40
sub.i.v
push.v self.height
pushi.e 88
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 815
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
b [8]

:[7]
pushi.e 0
pop.v.i self.drawa
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 12
conv.i.v
call.i snd_stop(argc=1)
popz.v

:[8]
push.v self.hoopx
pushi.e 650
cmp.i.v LT
bf [10]

:[9]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 250
sub.i.v
push.v self.hoopx
pushi.e 0
conv.i.v
pushi.e 813
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[10]
push.v self.acounter
call.i floor(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.yoff
push.v self.image_alpha
push.v self.image_blend
push.v self.rot
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.yoff
call.i floor(argc=1)
sub.v.v
push.v self.x
push.v self.xoff
add.v.v
pushi.e 0
conv.i.v
pushi.e 816
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.acounter
pushi.e 4
cmp.i.v LT
bf [12]

:[11]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.yoff
call.i floor(argc=1)
sub.v.v
push.v self.x
push.v self.topx
add.v.v
pushi.e 0
conv.i.v
pushi.e 819
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[12]
push.v self.aturn
pushi.e 1
cmp.i.v EQ
bf [17]

:[13]
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
pushi.e 8
add.i.v
push.v self.acounter
call.i floor(argc=1)
pushi.e 817
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.acounter
pushi.e 4
cmp.i.v GTE
bf [15]

:[14]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.yoff
sub.v.v
push.v self.x
push.v self.topx
add.v.v
pushi.e 8
add.i.v
pushglb.v global.faceemotion
pushi.e 818
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[15]
push.v self.acounter
pushi.e 4
cmp.i.v LT
bf [17]

:[16]
push.v self.acounter
push.d 0.5
add.d.v
pop.v.v self.acounter

:[17]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [24]

:[18]
push.v self.hoopx
push.v self.x
pushi.e 60
sub.i.v
cmp.v.v GT
bf [20]

:[19]
push.v self.hoopx
pushi.e 25
sub.i.v
pop.v.v self.hoopx
b [21]

:[20]
push.v self.x
pushi.e 60
sub.i.v
pop.v.v self.hoopx

:[21]
push.v self.topx
pushi.e 100
cmp.i.v LT
bf [23]

:[22]
push.v self.topx
pushi.e 10
add.i.v
pop.v.v self.topx
b [24]

:[23]
pushi.e 12
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 3
pop.v.i self.con
pushi.e 1
pop.v.i self.drawa
pushi.e 30
pop.v.i self.sinerf
pushi.e 0
pop.v.i self.siner

:[24]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [26]

:[25]
push.v self.drawa
pushi.e 0
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [30]

:[28]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.sinerf
pushi.e 2
sub.i.v
pop.v.v self.sinerf
push.v self.siner
pushi.e 1
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.sinerf
mul.v.v
pop.v.v self.rot
push.v self.siner
pushi.e 1
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.sinerf
mul.v.v
pop.v.v self.xoff
push.v self.sinerf
pushi.e 0
cmp.i.v LTE
bf [30]

:[29]
pushi.e 0
pop.v.i self.rot
pushi.e 0
pop.v.i self.xoff
pushi.e 4
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [37]

:[31]
push.v self.hoopx
pushi.e 650
cmp.i.v LT
bf [33]

:[32]
push.v self.hoopx
pushi.e 20
add.i.v
pop.v.v self.hoopx
b [34]

:[33]
pushi.e 650
pop.v.i self.hoopx

:[34]
push.v self.topx
pushi.e 0
cmp.i.v GT
bf [36]

:[35]
push.v self.topx
pushi.e 10
sub.i.v
pop.v.v self.topx
b [37]

:[36]
pushi.e 6
pop.v.i self.con

:[37]
push.v self.fadein
pushi.e 1
cmp.i.v EQ
bf [40]

:[38]
push.d 0.7
conv.d.v
push.v self.image_blend
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend
push.v self.fadecounter
pushi.e 1
add.i.v
pop.v.v self.fadecounter
push.v self.fadecounter
pushi.e 20
cmp.i.v GT
bf [40]

:[39]
pushi.e 0
pop.v.i self.fadein
push.i 16777215
pop.v.i self.image_blend

:[40]
push.v self.shake
pushi.e 0
cmp.i.v GT
bf [end]

:[41]
push.v self.xstart
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.ystart
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[end]
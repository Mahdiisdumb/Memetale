.localvar 0 arguments

:[0]
push.v self.pause
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.sad
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer_e
pushi.e 1
add.i.v
pop.v.v self.timer_e
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
call.i floor(argc=1)
pop.v.v self.bodyy
b [4]

:[3]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.timer_e
pushi.e 0
pop.v.i self.bodyy
pushi.e -20
pop.v.i self.eyey
push.v self.siner
push.d 0.2
add.d.v
pop.v.v self.siner
push.v self.mouth_index
push.d 0.25
add.d.v
pop.v.v self.mouth_index

:[4]
b [6]

:[5]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.eyey
pushi.e 0
pop.v.i self.simer
pushi.e 0
pop.v.i self.timer_e
pushi.e 0
pop.v.i self.bodyy
pushi.e 0
pop.v.i self.mouth_index

:[6]
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
pushi.e 6
add.i.v
pushi.e 52
add.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 843
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
pushi.e -2
conv.i.v
push.v self.y
pushi.e 6
add.i.v
pushi.e 52
add.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 52
add.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 843
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
pushi.e 16
add.i.v
pushi.e 56
add.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
push.v self.x
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 844
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
pushi.e -2
conv.i.v
push.v self.y
pushi.e 16
add.i.v
pushi.e 56
add.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
push.v self.x
pushi.e 52
add.i.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 844
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
pushi.e 100
add.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 839
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
pushi.e -2
conv.i.v
push.v self.y
pushi.e 100
add.i.v
push.v self.x
pushi.e 50
add.i.v
pushi.e 0
conv.i.v
pushi.e 839
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
push.v self.bodyy
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 836
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.pause
pushi.e 0
cmp.i.v EQ
bf [15]

:[7]
push.v self.sad
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
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
pushi.e 50
add.i.v
push.v self.bodyy
add.v.v
push.v self.eyey
add.v.v
call.i floor(argc=1)
push.v self.x
pushi.e 6
add.i.v
push.v self.eyey
pushi.e 837
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[9]
push.v self.sad
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
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
pushi.e 50
add.i.v
push.v self.bodyy
add.v.v
push.v self.eyey
add.v.v
call.i floor(argc=1)
push.v self.x
pushi.e 6
add.i.v
push.v self.mouth_index
pushi.e 837
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[11]
push.v self.sad
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
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
pushi.e 66
add.i.v
push.v self.bodyy
add.v.v
push.v self.x
pushi.e 8
add.i.v
push.v self.mouth_index
call.i floor(argc=1)
pushi.e 840
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[13]
push.v self.sad
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
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
pushi.e 66
add.i.v
push.v self.bodyy
add.v.v
push.v self.x
pushi.e 8
add.i.v
pushi.e 0
conv.i.v
pushi.e 842
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[15]
push.v self.pause
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
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
pushi.e 50
add.i.v
push.v self.bodyy
add.v.v
push.v self.eyey
add.v.v
call.i floor(argc=1)
push.v self.x
pushi.e 6
add.i.v
push.v self.eyey
pushi.e 838
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
pushi.e 66
add.i.v
push.v self.bodyy
add.v.v
push.v self.x
pushi.e 8
add.i.v
pushi.e 0
conv.i.v
pushi.e 841
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[17]
push.v self.timer
pushi.e 40
cmp.i.v GTE
bf [19]

:[18]
push.v self.timer
pushi.e 50
cmp.i.v LTE
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.v self.mouth_index
push.d 0.5
add.d.v
pop.v.v self.mouth_index

:[22]
push.v self.timer
pushi.e 51
cmp.i.v EQ
bf [24]

:[23]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.mouth_index

:[24]
push.v self.sad
pushi.e 0
cmp.i.v EQ
bf [end]

:[25]
push.v self.timer_e
pushi.e 90
cmp.i.v GT
bf [27]

:[26]
push.v self.timer_e
pushi.e 110
cmp.i.v LTE
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
push.v self.eyey
push.d 0.8
sub.d.v
pop.v.v self.eyey

:[30]
push.v self.timer_e
pushi.e 150
cmp.i.v GT
bf [32]

:[31]
push.v self.timer_e
pushi.e 170
cmp.i.v LTE
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
push.v self.eyey
push.d 0.8
add.d.v
pop.v.v self.eyey

:[35]
push.v self.timer_e
pushi.e 180
cmp.i.v EQ
bf [end]

:[36]
pushi.e 0
pop.v.i self.timer_e

:[end]
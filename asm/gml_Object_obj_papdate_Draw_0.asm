.localvar 0 arguments

:[0]
pushglb.v global.facechoice
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
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

:[2]
pushglb.v global.faceemotion
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 796
pop.v.i self.face

:[4]
pushglb.v global.faceemotion
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 804
pop.v.i self.face

:[6]
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 800
pop.v.i self.face

:[8]
pushglb.v global.faceemotion
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
pushi.e 805
pop.v.i self.face

:[10]
pushglb.v global.faceemotion
pushi.e 4
cmp.i.v EQ
bf [12]

:[11]
pushi.e 797
pop.v.i self.face

:[12]
pushglb.v global.faceemotion
pushi.e 5
cmp.i.v EQ
bf [14]

:[13]
pushi.e 806
pop.v.i self.face

:[14]
pushglb.v global.faceemotion
pushi.e 6
cmp.i.v EQ
bf [16]

:[15]
pushi.e 807
pop.v.i self.face

:[16]
pushglb.v global.faceemotion
pushi.e 7
cmp.i.v EQ
bf [18]

:[17]
pushi.e 798
pop.v.i self.face

:[18]
pushglb.v global.faceemotion
pushi.e 8
cmp.i.v EQ
bf [20]

:[19]
pushi.e 803
pop.v.i self.face

:[20]
pushglb.v global.faceemotion
pushi.e 9
cmp.i.v EQ
bf [22]

:[21]
pushi.e 799
pop.v.i self.face

:[22]
pushglb.v global.facechoice
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushi.e 788
pop.v.i self.sprite_index

:[24]
pushglb.v global.facechoice
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 795
pop.v.i self.sprite_index

:[26]
pushglb.v global.facechoice
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
pushi.e 789
pop.v.i self.sprite_index

:[28]
pushglb.v global.facechoice
pushi.e 3
cmp.i.v EQ
bf [30]

:[29]
pushi.e 790
pop.v.i self.sprite_index

:[30]
pushglb.v global.facechoice
pushi.e 4
cmp.i.v EQ
bf [32]

:[31]
pushi.e 791
pop.v.i self.sprite_index

:[32]
pushglb.v global.facechoice
pushi.e 5
cmp.i.v EQ
bf [34]

:[33]
pushi.e 792
pop.v.i self.sprite_index

:[34]
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
pushi.e 2
sub.i.v
push.v self.x
pushi.e 40
add.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.face_index
push.v self.face_speed
add.v.v
pop.v.v self.face_index
pushglb.v global.facechoice
pushi.e 3
cmp.i.v NEQ
bf [36]

:[35]
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

:[36]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [41]

:[37]
push.v 784.halt
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
push.d 0.25
pop.v.d self.face_speed
b [40]

:[39]
pushi.e 0
pop.v.i self.face_index
pushi.e 0
pop.v.i self.face_speed

:[40]
b [42]

:[41]
pushi.e 0
pop.v.i self.face_index
pushi.e 0
pop.v.i self.face_speed

:[42]
pushglb.v global.faceemotion
pushi.e 8
cmp.i.v EQ
bf [44]

:[43]
push.d 0.13
pop.v.d self.face_speed

:[44]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.facechoice
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
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
pushi.e 16
sub.i.v
push.v self.x
push.v self.present
pushi.e 794
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
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
push.v self.haty
add.v.v
pushi.e 16
sub.i.v
push.v self.x
push.v self.image_index
pushi.e 793
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[46]
push.v self.choicer
pushi.e 1
cmp.i.v EQ
bf [end]

:[47]
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 60
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
pushi.e 46
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[49]
push.v self.choice
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 60
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 300
add.i.v
pushi.e 0
conv.i.v
pushi.e 46
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[51]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [53]

:[52]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [54]

:[53]
push.e 1

:[54]
bf [59]

:[55]
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [57]

:[56]
pushi.e 1
pop.v.i self.choice
b [58]

:[57]
pushi.e 0
pop.v.i self.choice

:[58]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[59]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [end]

:[60]
pushi.e 2
pop.v.i self.choicer

:[end]
.localvar 0 arguments

:[0]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
pop.v.i self.ndtry
pushi.e 1117
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[2]
pushi.e 1117
pop.v.i self.mm
push.v 1117.sprite_index
pop.v.v self.sprito2
push.v 1117.sprite_index
push.v self.mm
conv.v.i
push.v [stacktop]self.rsprite
cmp.v.v EQ
bf [4]

:[3]
pushi.e 1468
pop.v.i self.sprito2

:[4]
push.v self.mm
conv.v.i
push.v [stacktop]self.sprite_index
pushi.e 1489
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1469
pop.v.i self.sprito2

:[6]
push.v self.mm
conv.v.i
push.v [stacktop]self.sprite_index
push.v self.mm
conv.v.i
push.v [stacktop]self.dsprite
cmp.v.v EQ
bf [8]

:[7]
pushi.e 1466
pop.v.i self.sprito2

:[8]
push.v self.mm
conv.v.i
push.v [stacktop]self.sprite_index
push.v self.mm
conv.v.i
push.v [stacktop]self.usprite
cmp.v.v EQ
bf [10]

:[9]
pushi.e 1470
pop.v.i self.sprito2

:[10]
push.v self.mm
conv.v.i
push.v [stacktop]self.sprite_index
push.v self.mm
conv.v.i
push.v [stacktop]self.lsprite
cmp.v.v EQ
bf [12]

:[11]
pushi.e 1467
pop.v.i self.sprito2

:[12]
push.v self.mm
conv.v.i
push.v [stacktop]self.depth
push.v 1576.depth
cmp.v.v GT
bf [14]

:[13]
push.v self.mm
conv.v.i
push.v [stacktop]self.y
push.v self.mm
conv.v.i
push.v [stacktop]self.sprite_height
pushi.e 1
mul.i.v
add.v.v
push.v self.mm
conv.v.i
push.v [stacktop]self.x
push.d 0.4
conv.d.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.mm
conv.v.i
push.v [stacktop]self.image_index
push.v self.sprito2
push.v self.bbox_bottom
pushi.e 1
sub.i.v
push.v self.bbox_top
push.v self.bbox_right
push.v self.bbox_left
call.i draw_custom_ext(argc=11)
popz.v
b [15]

:[14]
pushi.e 1
pop.v.i self.ndtry

:[15]
push.v 1576.sprite_index
pop.v.v self.sprito
push.v 1576.rsprite
pushi.e 1133
cmp.i.v EQ
bf [24]

:[16]
push.v 1576.sprite_index
pushi.e 1133
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1092
pop.v.i self.sprito

:[18]
push.v 1576.sprite_index
pushi.e 1131
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1088
pop.v.i self.sprito

:[20]
push.v 1576.sprite_index
pushi.e 1132
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1090
pop.v.i self.sprito

:[22]
push.v 1576.sprite_index
pushi.e 1134
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1091
pop.v.i self.sprito

:[24]
push.v 1576.rsprite
pushi.e 1106
cmp.i.v EQ
bf [33]

:[25]
push.v 1576.sprite_index
pushi.e 1106
cmp.i.v EQ
bf [27]

:[26]
pushi.e 1102
pop.v.i self.sprito

:[27]
push.v 1576.sprite_index
pushi.e 1104
cmp.i.v EQ
bf [29]

:[28]
pushi.e 1100
pop.v.i self.sprito

:[29]
push.v 1576.sprite_index
pushi.e 1105
cmp.i.v EQ
bf [31]

:[30]
pushi.e 1101
pop.v.i self.sprito

:[31]
push.v 1576.sprite_index
pushi.e 1107
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1103
pop.v.i self.sprito

:[33]
push.v self.death
pushi.e 1
cmp.i.v EQ
bf [42]

:[34]
push.v 1576.sprite_index
pushi.e 1133
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1111
pop.v.i self.sprito

:[36]
push.v 1576.sprite_index
pushi.e 1131
cmp.i.v EQ
bf [38]

:[37]
pushi.e 1109
pop.v.i self.sprito

:[38]
push.v 1576.sprite_index
pushi.e 1132
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1115
pop.v.i self.sprito

:[40]
push.v 1576.sprite_index
pushi.e 1134
cmp.i.v EQ
bf [42]

:[41]
pushi.e 1113
pop.v.i self.sprito

:[42]
push.v 1576.image_index
pop.v.v self.simage
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
push.v 1576.y
push.v 1576.sprite_height
pushi.e 1
mul.i.v
add.v.v
push.v 1576.x
push.d 0.4
conv.d.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.simage
push.v self.sprito
push.v self.bbox_bottom
pushi.e 1
sub.i.v
push.v self.bbox_top
push.v self.bbox_right
push.v self.bbox_left
call.i draw_custom_ext(argc=11)
popz.v

:[44]
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [54]

:[45]
push.v 1576.sprite_index
push.v 1576.dsprite
cmp.v.v EQ
bf [47]

:[46]
pushi.e 3
pop.v.i self.value

:[47]
push.v 1576.sprite_index
push.v 1576.usprite
cmp.v.v EQ
bf [49]

:[48]
pushi.e 16
pop.v.i self.value

:[49]
push.v 1576.sprite_index
push.v 1576.rsprite
cmp.v.v EQ
bf [51]

:[50]
pushi.e 10
pop.v.i self.value

:[51]
push.v 1576.sprite_index
push.v 1576.lsprite
cmp.v.v EQ
bf [53]

:[52]
pushi.e 9
pop.v.i self.value

:[53]
push.v 1576.y
pushi.e 30
add.i.v
push.v 1576.x
push.v self.value
sub.v.v
push.d 0.4
conv.d.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.simage
push.v self.sprito
push.v self.bbox_bottom
pushi.e 1
sub.i.v
push.v self.bbox_top
push.v self.bbox_right
push.v self.bbox_left
call.i draw_custom_ext(argc=11)
popz.v

:[54]
push.v self.ndtry
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
push.v self.mm
conv.v.i
push.v [stacktop]self.y
push.v self.mm
conv.v.i
push.v [stacktop]self.sprite_height
pushi.e 1
mul.i.v
add.v.v
push.v self.mm
conv.v.i
push.v [stacktop]self.x
push.d 0.4
conv.d.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.mm
conv.v.i
push.v [stacktop]self.image_index
push.v self.sprito2
push.v self.bbox_bottom
pushi.e 1
sub.i.v
push.v self.bbox_top
push.v self.bbox_right
push.v self.bbox_left
call.i draw_custom_ext(argc=11)
popz.v

:[56]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[57]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[58]
pushi.e 1
pop.v.i self.death

:[end]
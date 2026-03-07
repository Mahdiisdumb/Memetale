.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e -5
pushi.e 1
push.v [array]global.monster
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.monster
add.v.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monster
sub.v.v
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 100
pop.v.i self.mercymod

:[2]
push.v self.mercymod
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushi.e 206
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed

:[4]
pushi.e 187
conv.i.v
push.v self.ystart
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 8
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
push.v self.mercymod
pushi.e 0
cmp.i.v LT
bf [35]

:[5]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [7]

:[6]
push.v self.mycommand
pushi.e 20
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.s "obj_migosp_227"@18055
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.mycommand
pushi.e 20
cmp.i.v GTE
bf [12]

:[11]
push.v self.mycommand
pushi.e 40
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s "obj_migosp_228"@18057
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.mycommand
pushi.e 40
cmp.i.v GTE
bf [17]

:[16]
push.v self.mycommand
pushi.e 60
cmp.i.v LT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.s "obj_migosp_229"@18059
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
push.v self.mycommand
pushi.e 60
cmp.i.v GTE
bf [22]

:[21]
push.v self.mycommand
pushi.e 80
cmp.i.v LTE
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.s "obj_migosp_230"@18061
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[25]
push.v self.mycommand
pushi.e 80
cmp.i.v GTE
bf [27]

:[26]
push.v self.mycommand
pushi.e 100
cmp.i.v LTE
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
push.s "obj_migosp_231"@18063
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[30]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bt [32]

:[31]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
b [33]

:[32]
push.e 1

:[33]
bf [35]

:[34]
push.s "obj_migosp_234"@18065
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[35]
push.v self.mercymod
pushi.e 0
cmp.i.v GT
bf [66]

:[36]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [38]

:[37]
push.v self.mycommand
pushi.e 20
cmp.i.v LT
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
push.s "obj_migosp_239"@18067
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[41]
push.v self.mycommand
pushi.e 20
cmp.i.v GTE
bf [43]

:[42]
push.v self.mycommand
pushi.e 40
cmp.i.v LT
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
push.s "obj_migosp_240"@18069
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[46]
push.v self.mycommand
pushi.e 40
cmp.i.v GTE
bf [48]

:[47]
push.v self.mycommand
pushi.e 60
cmp.i.v LT
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
push.s "obj_migosp_241"@18071
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[51]
push.v self.mycommand
pushi.e 60
cmp.i.v GTE
bf [53]

:[52]
push.v self.mycommand
pushi.e 80
cmp.i.v LTE
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
push.s "obj_migosp_242"@18073
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[56]
push.v self.mycommand
pushi.e 80
cmp.i.v GTE
bf [58]

:[57]
push.v self.mycommand
pushi.e 100
cmp.i.v LTE
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
push.s "obj_migosp_243"@18075
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bt [63]

:[62]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
b [64]

:[63]
push.e 1

:[64]
bf [66]

:[65]
push.s "obj_migosp_246"@18077
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[66]
push.s "obj_migosp_251"@18078
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pop.v.i global.typer
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 3
pop.v.i global.border
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.y

:[end]
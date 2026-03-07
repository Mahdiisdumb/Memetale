.localvar 0 arguments
.localvar 1 textx 10650

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer

:[2]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 0
cmp.i.v GTE
bf [4]

:[3]
push.v self.timer
pushi.e 20
cmp.i.v LT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 2
sub.i.v
pop.i.v [array]self.view_xview

:[7]
pushi.e 168
pop.v.i local.textx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [9]

:[8]
push.v local.textx
pushi.e 16
sub.i.v
pop.v.v local.textx

:[9]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [15]

:[10]
pushi.e 1695
conv.i.v
pushi.e 15
conv.i.v
pushloc.v local.textx
call.i instance_create(argc=3)
pop.v.v self.t1
push.s "castroll_name_undyne"@32944
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t1
conv.v.i
pop.v.v [stacktop]self.text
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [12]

:[11]
pushi.e -1
push.v self.t1
conv.v.i
pop.v.i [stacktop]self.text_xofs

:[12]
push.s "castroll_credit_undyne"@32946
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t1
conv.v.i
pop.v.v [stacktop]self.text2
pushi.e 1695
conv.i.v
pushi.e 150
conv.i.v
pushloc.v local.textx
call.i instance_create(argc=3)
pop.v.v self.t2
push.s "castroll_name_alphys"@32948
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t2
conv.v.i
pop.v.v [stacktop]self.text
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [14]

:[13]
pushi.e -1
push.v self.t2
conv.v.i
pop.v.i [stacktop]self.text_xofs

:[14]
push.s "castroll_credit_alphys"@32950
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t2
conv.v.i
pop.v.v [stacktop]self.text2

:[15]
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
pop.v.i self.shuffle

:[17]
push.v self.timer
pushi.e 25
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
pop.v.i self.shuffle

:[19]
push.v self.timer
pushi.e 65
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.i self.shuffle

:[21]
push.v self.timer
pushi.e 85
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
pop.v.i self.shuffle

:[23]
push.v self.timer
pushi.e 125
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
pop.v.i self.shuffle

:[25]
push.v self.timer
pushi.e 145
cmp.i.v EQ
bf [27]

:[26]
pushi.e 0
pop.v.i self.shuffle

:[27]
push.v self.shuffle
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
push.v self.x
push.d 0.5
sub.d.v
pop.v.v self.x
push.v self.image_index
push.d 0.2
add.d.v
pop.v.v self.image_index

:[29]
push.v self.timer
pushi.e 170
cmp.i.v EQ
bf [31]

:[30]
pushi.e 1
pop.v.i self.head_index

:[31]
push.v self.timer
pushi.e 191
cmp.i.v EQ
bt [33]

:[32]
push.v self.timer
pushi.e 193
cmp.i.v EQ
b [34]

:[33]
push.e 1

:[34]
bf [36]

:[35]
push.v self.headx
pushi.e 1
add.i.v
pop.v.v self.headx

:[36]
push.v self.timer
pushi.e 210
cmp.i.v EQ
bt [38]

:[37]
push.v self.timer
pushi.e 212
cmp.i.v EQ
b [39]

:[38]
push.e 1

:[39]
bf [41]

:[40]
push.v self.headx
pushi.e 1
sub.i.v
pop.v.v self.headx

:[41]
push.v self.timer
pushi.e 214
cmp.i.v EQ
bt [43]

:[42]
push.v self.timer
pushi.e 216
cmp.i.v EQ
b [44]

:[43]
push.e 1

:[44]
bf [46]

:[45]
pushi.e 2
pop.v.i self.head_index
push.v self.headx
pushi.e 1
sub.i.v
pop.v.v self.headx
push.v self.heady
pushi.e 1
add.i.v
pop.v.v self.heady

:[46]
push.v self.timer
pushi.e 216
cmp.i.v EQ
bf [48]

:[47]
pushi.e 1365
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 5
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.heart
push.d 0.25
push.v self.heart
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.heart
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 2538
push.v self.heart
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d -0.5
push.v self.heart
conv.v.i
pop.v.d [stacktop]self.vspeed
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.image_speed

:[48]
push.v self.timer
pushi.e 226
cmp.i.v EQ
bf [50]

:[49]
pushi.e 2544
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[50]
push.v self.timer
pushi.e 226
cmp.i.v GT
bf [52]

:[51]
push.v self.timer
pushi.e 246
cmp.i.v LT
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
push.v self.heart
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.05
sub.d.v
pop.i.v [stacktop]self.image_alpha

:[55]
push.v self.timer
pushi.e 247
cmp.i.v EQ
bf [59]

:[56]
push.v self.heart
conv.v.i
pushenv [58]

:[57]
call.i instance_destroy(argc=0)
popz.v

:[58]
popenv [57]

:[59]
push.v self.timer
pushi.e 246
cmp.i.v EQ
bt [61]

:[60]
push.v self.timer
pushi.e 248
cmp.i.v EQ
b [62]

:[61]
push.e 1

:[62]
bf [64]

:[63]
pushi.e 1
pop.v.i self.head_index
push.v self.heady
pushi.e 1
sub.i.v
pop.v.v self.heady
push.v self.headx
pushi.e 1
add.i.v
pop.v.v self.headx

:[64]
push.v self.timer
pushi.e 268
cmp.i.v GTE
bf [66]

:[65]
push.v self.timer
pushi.e 300
cmp.i.v LTE
b [67]

:[66]
push.e 0

:[67]
bf [70]

:[68]
pushi.e 3
pop.v.i self.head_index
push.v self.alphys
conv.v.i
push.v [stacktop]self.image_index
pushi.e 16
cmp.i.v LT
bf [70]

:[69]
push.v self.alphys
conv.v.i
dup.i 0
push.v [stacktop]self.image_index
push.d 0.5
add.d.v
pop.i.v [stacktop]self.image_index

:[70]
push.v self.timer
pushi.e 320
cmp.i.v EQ
bf [72]

:[71]
pushi.e 2543
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.alphys
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.x

:[72]
push.v self.timer
pushi.e 321
cmp.i.v EQ
bf [74]

:[73]
push.v self.alphys
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.x

:[74]
push.v self.timer
pushi.e 322
cmp.i.v EQ
bf [76]

:[75]
push.v self.alphys
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.x

:[76]
push.v self.timer
pushi.e 323
cmp.i.v EQ
bf [78]

:[77]
push.v self.alphys
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.x

:[78]
push.v self.timer
pushi.e 324
cmp.i.v EQ
bf [80]

:[79]
push.v self.alphys
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.x

:[80]
push.v self.timer
pushi.e 325
cmp.i.v EQ
bf [82]

:[81]
push.v self.alphys
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.x

:[82]
push.v self.timer
pushi.e 326
cmp.i.v EQ
bf [84]

:[83]
push.v self.alphys
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.x

:[84]
push.v self.timer
pushi.e 327
cmp.i.v EQ
bf [86]

:[85]
push.v self.alphys
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.x

:[86]
push.v self.timer
pushi.e 370
cmp.i.v EQ
bf [88]

:[87]
pushi.e 2549
pop.v.i self.headsprite
pushi.e 2545
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.siner

:[88]
push.v self.timer
pushi.e 370
cmp.i.v GTE
bf [90]

:[89]
push.v self.timer
pushi.e 440
cmp.i.v LTE
b [91]

:[90]
push.e 0

:[91]
bf [93]

:[92]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.8
mul.d.v
pop.v.v self.heady
push.v self.image_index
push.d 0.25
add.d.v
pop.v.v self.image_index
push.v self.head_index
push.d 0.25
add.d.v
pop.v.v self.head_index

:[93]
push.v self.timer
pushi.e 440
cmp.i.v EQ
bf [95]

:[94]
pushi.e 0
pop.v.i self.image_index
pushi.e 2550
pop.v.i self.headsprite
pushi.e 2547
pop.v.i self.sprite_index
pushi.e 8
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[95]
push.v self.timer
pushi.e 440
cmp.i.v GTE
bf [101]

:[96]
push.v self.t1
conv.v.i
pushenv [98]

:[97]
pushi.e 1
pop.v.i self.fader

:[98]
popenv [97]
push.v self.t2
conv.v.i
pushenv [100]

:[99]
pushi.e 1
pop.v.i self.fader

:[100]
popenv [99]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.2
mul.d.v
push.d 0.6
add.d.v
pop.v.v self.heady
push.v self.image_index
push.d 0.25
add.d.v
pop.v.v self.image_index
push.v self.head_index
push.d 0.25
add.d.v
pop.v.v self.head_index

:[101]
push.v self.timer
pushi.e 500
cmp.i.v GTE
bf [end]

:[102]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 4
add.i.v
pop.i.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 160
cmp.i.v GTE
bf [end]

:[103]
pushi.e 2
pop.v.i global.cast_type
pushi.e 278
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]
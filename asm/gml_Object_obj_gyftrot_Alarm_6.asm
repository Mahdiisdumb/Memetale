.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.x
pushi.e 205
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
push.s "obj_gyftrot_271"@14158
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [2]

:[1]
push.v self.mycommand
pushi.e 20
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.s "obj_gyftrot_273"@14160
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
push.v self.mycommand
pushi.e 20
cmp.i.v GTE
bf [7]

:[6]
push.v self.mycommand
pushi.e 40
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.s "obj_gyftrot_274"@14162
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.mycommand
pushi.e 40
cmp.i.v GTE
bf [12]

:[11]
push.v self.mycommand
pushi.e 60
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s "obj_gyftrot_275"@14164
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.mycommand
pushi.e 60
cmp.i.v GTE
bf [17]

:[16]
push.v self.mycommand
pushi.e 80
cmp.i.v LTE
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.s "obj_gyftrot_276"@14166
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
push.v self.mycommand
pushi.e 80
cmp.i.v GTE
bf [22]

:[21]
push.v self.mycommand
pushi.e 100
cmp.i.v LTE
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.s "obj_gyftrot_277"@14168
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[25]
push.v self.mercymod
pushi.e 90
cmp.i.v GT
bf [27]

:[26]
push.s "obj_gyftrot_279"@14170
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[27]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [38]

:[28]
push.v self.giftgiven
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
push.s "obj_gyftrot_283"@14172
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[30]
push.v self.giftgiven
pushi.e 2
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_gyftrot_284"@14174
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
push.v self.googly
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
push.s "obj_gyftrot_285"@14176
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[34]
push.v self.betray
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
push.s "obj_gyftrot_286"@14178
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[36]
push.v self.itemgone
pushi.e 0
cmp.i.v EQ
bf [38]

:[37]
push.s "obj_gyftrot_287"@14180
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[38]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [45]

:[39]
pushi.e 1
pushi.e -5
pushi.e 74
pop.v.i [array]global.flag
push.s "obj_gyftrot_293"@14182
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.itemgone
pushi.e 0
cmp.i.v GT
bt [41]

:[40]
push.v self.giftgiven
pushi.e 0
cmp.i.v GT
b [42]

:[41]
push.e 1

:[42]
bf [44]

:[43]
push.s "obj_gyftrot_294"@14184
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.betray

:[44]
pushi.e -20
pop.v.i self.mercymod

:[45]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [58]

:[46]
push.v self.itemgone
pushi.e 1
cmp.i.v EQ
bt [48]

:[47]
push.v self.itemgone
pushi.e 2
cmp.i.v EQ
b [49]

:[48]
push.e 1

:[49]
bf [51]

:[50]
pushi.e 10
pop.v.i self.mercymod
push.s "obj_gyftrot_300"@14186
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[51]
push.v self.mercymod
pushi.e 170
cmp.i.v GT
bf [53]

:[52]
push.s "obj_gyftrot_301"@14188
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [55]

:[53]
push.v self.itemgone
pushi.e 3
cmp.i.v EQ
bf [55]

:[54]
pushi.e 200
pop.v.i self.mercymod
push.s "obj_gyftrot_303"@14190
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[55]
push.v self.ung
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_gyftrot_304"@14192
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[57]
pushi.e 0
pop.v.i self.ung

:[58]
push.s "obj_gyftrot_312"@14193
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
pushi.e 6
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
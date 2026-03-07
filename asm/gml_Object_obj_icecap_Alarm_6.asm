.localvar 0 arguments

:[0]
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
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
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
push.s "obj_icecap_139"@14354
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
push.s "obj_icecap_140"@14356
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
push.s "obj_icecap_141"@14358
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
push.s "obj_icecap_142"@14360
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
push.s "obj_icecap_143"@14362
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[25]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [43]

:[26]
push.v self.ignore
pushi.e 0
cmp.i.v GT
bf [34]

:[27]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
push.s "obj_icecap_148"@14364
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[29]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.s "obj_icecap_149"@14366
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[31]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
push.s "obj_icecap_150"@14368
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[33]
pushi.e 2
pop.v.i self.ignore
pushi.e 300
pop.v.i self.mercymod

:[34]
push.v self.ignore
pushi.e 0
cmp.i.v EQ
bf [43]

:[35]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bt [37]

:[36]
push.v self.gg
pushi.e 1
cmp.i.v EQ
b [38]

:[37]
push.e 1

:[38]
bf [40]

:[39]
push.s "obj_icecap_156"@14370
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[40]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_icecap_157"@14372
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
pushi.e 1
pop.v.i self.ignore

:[43]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [50]

:[44]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_icecap_163"@14374
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[46]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_icecap_164"@14376
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_icecap_165"@14378
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[50]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [58]

:[51]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [53]

:[52]
push.s "obj_icecap_169"@14380
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[53]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bt [55]

:[54]
push.v self.gg
pushi.e 2
cmp.i.v EQ
b [56]

:[55]
push.e 1

:[56]
bf [58]

:[57]
push.s "obj_icecap_170"@14382
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[58]
push.v self.whatiheard
pushi.e 20
cmp.i.v EQ
bf [66]

:[59]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [61]

:[60]
push.s "obj_icecap_175"@14384
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
push.s "obj_icecap_176"@14386
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[63]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [65]

:[64]
push.s "obj_icecap_177"@14388
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[65]
pushi.e 200
pop.v.i self.mercymod

:[66]
push.s "obj_icecap_182"@14389
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
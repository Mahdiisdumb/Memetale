.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
pushi.e 25
sub.i.v
push.v self.x
pushi.e 95
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
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [2]

:[1]
push.v self.mycommand
pushi.e 25
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.s "obj_aaron_243"@8810
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [7]

:[6]
push.s "obj_aaron_244"@8812
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [9]

:[8]
push.s "obj_aaron_245"@8814
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [11]

:[10]
push.s "obj_aaron_246"@8816
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
pushi.e -5
pushi.e 95
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [23]

:[12]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [14]

:[13]
push.v self.mycommand
pushi.e 25
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.s "obj_aaron_249"@8818
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [19]

:[18]
push.s "obj_aaron_250"@8820
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[19]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [21]

:[20]
push.s "obj_aaron_251"@8822
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[21]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [23]

:[22]
push.s "obj_aaron_252"@8823
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[23]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [28]

:[24]
push.s "obj_aaron_257"@8825
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.flex
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
push.s "obj_aaron_258"@8827
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[26]
push.v self.flex
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
push.s "obj_aaron_259"@8829
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [35]

:[29]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
push.s "obj_aaron_264"@8831
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[31]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
push.s "obj_aaron_265"@8833
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[33]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_aaron_267"@8835
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[35]
push.v self.whatiheard
pushi.e 9
cmp.i.v EQ
bf [38]

:[36]
push.s "obj_aaron_272"@8837
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 95
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
push.s "obj_aaron_273"@8839
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[38]
push.v self.whatiheard
pushi.e 12
cmp.i.v EQ
bf [40]

:[39]
push.s "obj_aaron_276"@8841
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[40]
push.v self.alphaup
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_aaron_278"@8843
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
push.v self.alphaup
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
pushi.e -5
pushi.e 95
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
push.s "obj_aaron_279"@8845
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[47]
pushi.e 0
pop.v.i self.alphaup
push.s "obj_aaron_282"@8846
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
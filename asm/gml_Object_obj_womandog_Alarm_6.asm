.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.x
pushi.e 224
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
push.s "obj_womandog_243"@29934
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 246
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [21]

:[1]
pushi.e 246
pop.v.i self.m
push.v self.m
conv.v.i
push.v [stacktop]self.mycommand
pushi.e 0
cmp.i.v GTE
bf [3]

:[2]
push.v self.m
conv.v.i
push.v [stacktop]self.mycommand
pushi.e 25
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.s "obj_womandog_247"@29936
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
push.v self.m
conv.v.i
push.v [stacktop]self.mycommand
pushi.e 25
cmp.i.v GTE
bf [8]

:[7]
push.v self.m
conv.v.i
push.v [stacktop]self.mycommand
pushi.e 50
cmp.i.v LT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.s "obj_womandog_248"@29938
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
push.v self.m
conv.v.i
push.v [stacktop]self.mycommand
pushi.e 50
cmp.i.v GTE
bf [13]

:[12]
push.v self.m
conv.v.i
push.v [stacktop]self.mycommand
pushi.e 75
cmp.i.v LT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.s "obj_womandog_249"@29940
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[16]
push.v self.m
conv.v.i
push.v [stacktop]self.mycommand
pushi.e 75
cmp.i.v GTE
bf [18]

:[17]
push.v self.m
conv.v.i
push.v [stacktop]self.mycommand
pushi.e 100
cmp.i.v LTE
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.s "obj_womandog_250"@29942
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[21]
pushi.e 246
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [37]

:[22]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bt [24]

:[23]
push.v 246.whatiheard
pushi.e 1
cmp.i.v EQ
b [25]

:[24]
push.e 1

:[25]
bf [28]

:[26]
push.s "obj_womandog_256"@29944
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.smell
pushi.e 0
cmp.i.v GT
bf [28]

:[27]
push.s "obj_womandog_257"@29946
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [32]

:[29]
push.v self.smell
pushi.e 2
cmp.i.v LT
bf [31]

:[30]
push.s "obj_womandog_261"@29948
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [32]

:[31]
push.s "obj_womandog_264"@29950
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
push.v 246.whatiheard
pushi.e 3
cmp.i.v EQ
bf [37]

:[33]
push.v self.smell
pushi.e 2
cmp.i.v LT
bf [35]

:[34]
push.s "obj_womandog_269"@29952
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[35]
push.v self.smell
pushi.e 2
cmp.i.v GTE
bf [37]

:[36]
push.s "obj_womandog_270"@29954
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[37]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [45]

:[38]
pushi.e -1000
pop.v.i self.mercymod
push.v self.mycommand
pushi.e 33
cmp.i.v LT
bf [40]

:[39]
push.s "obj_womandog_276"@29956
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[40]
push.v self.mycommand
pushi.e 33
cmp.i.v GTE
bf [42]

:[41]
push.s "obj_womandog_277"@29958
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
push.v self.mycommand
pushi.e 66
cmp.i.v GTE
bf [44]

:[43]
push.s "obj_womandog_278"@29960
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[44]
pushi.e -8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[45]
push.s "obj_womandog_284"@29961
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
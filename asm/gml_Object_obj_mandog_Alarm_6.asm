.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.x
pushi.e 123
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 29
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
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
push.s "obj_mandog_251"@17033
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
push.v self.mycommand
pushi.e 50
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.s "obj_mandog_252"@17035
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [12]

:[11]
push.v self.mycommand
pushi.e 75
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s "obj_mandog_253"@17037
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [17]

:[16]
push.v self.mycommand
pushi.e 100
cmp.i.v LTE
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.s "obj_mandog_254"@17039
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
pushi.e 247
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [36]

:[21]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bt [23]

:[22]
push.v 247.whatiheard
pushi.e 1
cmp.i.v EQ
b [24]

:[23]
push.e 1

:[24]
bf [27]

:[25]
push.s "obj_mandog_259"@17041
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.smell
pushi.e 0
cmp.i.v GT
bf [27]

:[26]
push.s "obj_mandog_260"@17043
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[27]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [31]

:[28]
push.v self.smell
pushi.e 2
cmp.i.v LT
bf [30]

:[29]
push.s "obj_mandog_264"@17045
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [31]

:[30]
push.s "obj_mandog_267"@17047
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[31]
push.v 247.whatiheard
pushi.e 3
cmp.i.v EQ
bf [36]

:[32]
push.v self.smell
pushi.e 2
cmp.i.v LT
bf [34]

:[33]
push.s "obj_mandog_272"@17049
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[34]
push.v self.smell
pushi.e 2
cmp.i.v GTE
bf [36]

:[35]
push.s "obj_mandog_273"@17051
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[36]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [40]

:[37]
pushi.e -30
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e -1000
pop.v.i self.mercymod
push.v self.mycommand
pushi.e 50
cmp.i.v LT
bf [39]

:[38]
push.s "obj_mandog_280"@17053
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [40]

:[39]
push.s "obj_mandog_281"@17055
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[40]
push.s "obj_mandog_284"@17056
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
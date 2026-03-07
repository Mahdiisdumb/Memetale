.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
pushi.e 55
add.i.v
pushi.e 32
add.i.v
push.v self.x
pushi.e 165
add.i.v
pushi.e 28
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
push.s "obj_bara01_252"@10490
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
push.s "obj_bara01_253"@10492
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
push.s "obj_bara01_254"@10494
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
push.s "obj_bara01_255"@10496
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
push.v self.shake
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_bara01_259"@10498
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[13]
push.v self.turn0
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_bara01_262"@10500
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
pushi.e 1
pop.v.i self.turn0
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [18]

:[16]
push.s "obj_bara01_266"@10502
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.toldhim
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_bara01_267"@10504
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_bara01_272"@10506
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
push.v self.whatiheard
pushi.e 12
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_bara01_278"@10508
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[22]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 2
cmp.i.v LT
bf [45]

:[23]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [25]

:[24]
push.v self.mycommand
pushi.e 25
cmp.i.v LT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
push.s "obj_bara01_285"@10510
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [30]

:[29]
push.s "obj_bara01_286"@10512
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[30]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [32]

:[31]
push.s "obj_bara01_287"@10514
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [34]

:[33]
push.s "obj_bara01_288"@10515
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[34]
push.v self.freshdeath
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
push.v self.mercymod
pushi.e 1
cmp.i.v LT
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
push.s "obj_bara01_291"@10517
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[39]
push.v self.freshdeath
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
push.s "obj_bara01_293"@10519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[44]
pushi.e 1
pop.v.i self.freshdeath
push.i -99999
pop.v.i self.mercymod

:[45]
push.s "obj_bara01_300"@10520
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
pushi.e 15
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
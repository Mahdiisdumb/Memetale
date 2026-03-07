.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
push.v self.x
pushi.e 100
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
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [8]

:[1]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [3]

:[2]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.s "obj_vulkin_271"@29726
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [8]

:[7]
push.s "obj_vulkin_272"@29728
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v GTE
bf [16]

:[9]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [11]

:[10]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.s "obj_vulkin_277"@29730
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[14]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [16]

:[15]
push.s "obj_vulkin_278"@29732
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[16]
push.v self.criticize
pushi.e 0
cmp.i.v GT
bf [24]

:[17]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [19]

:[18]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.s "obj_vulkin_283"@29734
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[22]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [24]

:[23]
push.s "obj_vulkin_284"@29736
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
push.v self.hug
pushi.e 0
cmp.i.v GT
bf [32]

:[25]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [27]

:[26]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
push.s "obj_vulkin_291"@29738
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
push.s "obj_vulkin_292"@29740
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
push.v self.encourage
pushi.e 0
cmp.i.v GT
bf [40]

:[33]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [35]

:[34]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
push.s "obj_vulkin_298"@29742
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[38]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [40]

:[39]
push.s "obj_vulkin_299"@29744
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[40]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_vulkin_307"@29746
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 410
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.face

:[42]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [45]

:[43]
pushi.e 412
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.face
push.s "obj_vulkin_314"@29748
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.criticize
pushi.e 2
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_vulkin_317"@29750
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[45]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [50]

:[46]
pushi.e 411
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.face
push.s "obj_vulkin_323"@29752
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.hug
pushi.e 2
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_vulkin_325"@29754
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
push.v self.hug
pushi.e 3
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_vulkin_327"@29756
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[50]
push.s "obj_vulkin_332"@29757
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
pushi.e 17
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
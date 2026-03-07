.localvar 0 arguments

:[0]
push.v self.whatiheard
pushi.e 7
cmp.i.v EQ
bf [6]

:[1]
pushi.e 0
pop.v.i self.talked
pushi.e -1
pop.v.i self.whatiheard
pushi.e 2
pop.v.i global.mnfight
pushi.e 7
pop.v.i global.border
pushi.e -2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 673
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[2]
pushi.e 673
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[5]
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
b [end]

:[6]
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
bf [8]

:[7]
push.s "obj_tembattle_282"@26948
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
push.v self.mycommand
pushi.e 25
cmp.i.v GT
bf [10]

:[9]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [15]

:[12]
push.s "obj_tembattle_283"@26950
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mypart1
conv.v.i
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]
pushi.e 1
pop.v.i self.image_index

:[15]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [17]

:[16]
push.s "obj_tembattle_284"@26952
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [19]

:[18]
push.s "obj_tembattle_285"@26954
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[19]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_tembattle_288"@26956
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[21]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [25]

:[22]
push.s "obj_tembattle_292"@26958
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.mypart1
conv.v.i
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]
pushi.e 1
pop.v.i self.image_index

:[25]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_tembattle_298"@26960
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[27]
push.v self.whatiheard
pushi.e 6
cmp.i.v EQ
bf [29]

:[28]
push.s "obj_tembattle_302"@26962
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 300
pop.v.i self.mercymod

:[29]
push.s "obj_tembattle_307"@26963
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
pushi.e 0
pop.v.i global.heard

:[end]
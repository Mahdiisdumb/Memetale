.localvar 0 arguments

:[0]
pushi.e 33
pop.v.i global.typer
pushi.e 0
pop.v.i self.blcontype
push.v self.con
pushi.e 5
cmp.i.v NEQ
bf [49]

:[1]
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
bf [3]

:[2]
push.v self.mycommand
pushi.e 25
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.s "obj_maddummy_422"@15812
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [8]

:[7]
push.s "obj_maddummy_423"@15814
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [10]

:[9]
push.s "obj_maddummy_424"@15816
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [12]

:[11]
push.s "obj_maddummy_425"@15818
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
push.v self.con3
pushi.e 0
cmp.i.v GT
bf [14]

:[13]
push.v self.con3
pushi.e 8
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [31]

:[16]
push.v self.con3
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_maddummy_429"@15820
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
push.v self.con3
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_maddummy_430"@15822
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
push.v self.con3
pushi.e 3
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_maddummy_431"@15824
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[22]
push.v self.con3
pushi.e 4
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_maddummy_432"@15826
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
push.v self.con3
pushi.e 5
cmp.i.v EQ
bf [26]

:[25]
push.s "obj_maddummy_433"@15828
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[26]
push.v self.con3
pushi.e 6
cmp.i.v EQ
bf [28]

:[27]
push.s "obj_maddummy_434"@15830
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
push.v self.con3
pushi.e 7
cmp.i.v EQ
bf [30]

:[29]
push.s "obj_maddummy_435"@15832
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[30]
pushi.e 1
pop.v.i self.blcontype

:[31]
push.v self.con2
pushi.e 13
cmp.i.v GT
bf [33]

:[32]
push.v self.con2
push.d 117.5
cmp.d.v LTE
b [34]

:[33]
push.e 0

:[34]
bf [44]

:[35]
push.v self.con2
pushi.e 14
cmp.i.v EQ
bf [37]

:[36]
push.s "obj_maddummy_441"@15834
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[37]
push.v self.con2
pushi.e 15
cmp.i.v EQ
bf [39]

:[38]
push.s "obj_maddummy_442"@15836
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[39]
push.v self.con2
pushi.e 16
cmp.i.v EQ
bf [41]

:[40]
push.s "obj_maddummy_443"@15838
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[41]
push.v self.con2
push.d 17.5
cmp.d.v EQ
bf [43]

:[42]
push.s "obj_maddummy_444"@15840
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[43]
pushi.e 0
pop.v.i self.blcontype

:[44]
push.v self.con3
pushi.e 1
add.i.v
pop.v.v self.con3
push.v self.blcontype
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
pushi.e 187
conv.i.v
push.v self.ystart
pushi.e 25
sub.i.v
push.v self.xstart
pushi.e 95
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon

:[46]
push.v self.blcontype
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
pushi.e 188
conv.i.v
push.v self.ystart
push.v self.xstart
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon

:[48]
b [51]

:[49]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [51]

:[50]
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
pushglb.v global.batmusic
call.i caster_resume(argc=1)
popz.v
pushi.e 33
pop.v.i global.typer
pushi.e 2
pop.v.i global.faceemotion
push.s "obj_maddummy_459"@15842
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 188
conv.i.v
push.v self.ystart
push.v self.xstart
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 1
pop.v.i self.blcontype
pushi.e 6
pop.v.i self.con

:[51]
push.s "obj_maddummy_465"@15843
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
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
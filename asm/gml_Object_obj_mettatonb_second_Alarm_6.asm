.localvar 0 arguments

:[0]
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
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonb_second_256"@17211
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
push.v self.turns
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushi.e -5
pushi.e 385
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [20]

:[4]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_mettatonb_second_265"@17213
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
push.v self.turns
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_mettatonb_second_268"@17215
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
push.v self.turns
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_mettatonb_second_271"@17217
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.turns
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
push.s "obj_mettatonb_second_274"@17219
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
push.v self.turns
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
push.s "obj_mettatonb_second_277"@17221
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[14]
push.v self.turns
pushi.e 7
cmp.i.v EQ
bf [16]

:[15]
push.s "obj_mettatonb_second_280"@17223
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[16]
push.v self.turns
pushi.e 8
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_mettatonb_second_284"@17225
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
push.v self.turns
pushi.e 8
cmp.i.v GT
bf [20]

:[19]
push.s "obj_mettatonb_second_290"@17227
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 7
pop.v.i self.turns

:[20]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [23]

:[21]
push.s "obj_mettatonb_second_299"@17229
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.turns
pushi.e 6
cmp.i.v GT
bf [23]

:[22]
push.s "obj_mettatonb_second_300"@17231
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[23]
pushi.e 51
pop.v.i global.typer
pushi.e 1
conv.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.x
pushi.e 320
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushglb.v global.hp
pushi.e 1
cmp.i.v GT
bf [25]

:[24]
pushi.e -5
pushi.e 385
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 6
pop.v.i global.border

:[28]
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 0
pop.v.i global.border

:[30]
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
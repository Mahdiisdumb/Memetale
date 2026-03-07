.localvar 0 arguments

:[0]
pushi.e 188
conv.i.v
push.v self.y
push.v self.x
pushi.e 120
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
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_asrielb_245"@10164
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielb_246"@10166
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[2]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_asrielb_251"@10168
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielb_252"@10170
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[4]
push.v self.turns
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_asrielb_257"@10172
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielb_258"@10174
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[6]
push.v self.turns
pushi.e 4
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_asrielb_263"@10176
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
push.v self.turns
pushi.e 5
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_asrielb_268"@10178
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielb_269"@10180
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[10]
push.v self.turns
pushi.e 6
cmp.i.v EQ
bf [12]

:[11]
push.s "obj_asrielb_274"@10182
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
push.v self.turns
pushi.e 7
cmp.i.v EQ
bf [14]

:[13]
push.s "obj_asrielb_279"@10184
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[14]
push.v self.turns
pushi.e 8
cmp.i.v EQ
bf [16]

:[15]
push.s "obj_asrielb_284"@10186
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[16]
push.v self.turns
pushi.e 9
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_asrielb_289"@10188
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
push.v self.turns
pushi.e 10
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_asrielb_294"@10190
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
push.v self.turns
pushi.e 11
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_asrielb_299"@10192
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[22]
push.v self.turns
pushi.e 12
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_asrielb_304"@10194
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielb_305"@10196
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asrielb_306"@10198
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[24]
push.v self.turns
pushi.e 13
cmp.i.v EQ
bf [26]

:[25]
push.s "obj_asrielb_311"@10200
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielb_312"@10202
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[26]
pushi.e 0
pop.v.i self.xx
push.v self.turns
pushi.e -5
pushi.e 504
push.v [array]global.flag
cmp.v.v LT
bf [28]

:[27]
pushi.e 1
pop.v.i self.xx

:[28]
pushi.e 86
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
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
push.v self.mypart1
conv.v.i
push.v [stacktop]self.specialnormal
pushi.e 1
cmp.i.v EQ
bt [31]

:[29]
push.v self.turns
pushi.e 0
cmp.i.v EQ
bt [31]

:[30]
push.v self.xx
pushi.e 1
cmp.i.v EQ
b [32]

:[31]
push.e 1

:[32]
bf [38]

:[33]
push.v self.blconwd
conv.v.i
pushenv [35]

:[34]
call.i instance_destroy(argc=0)
popz.v

:[35]
popenv [34]
push.v self.blcon
conv.v.i
pushenv [37]

:[36]
call.i instance_destroy(argc=0)
popz.v

:[37]
popenv [36]

:[38]
pushi.e 17
pop.v.i global.border
push.v self.mypart1
conv.v.i
push.v [stacktop]self.specialnormal
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
pushi.e 6
pop.v.i global.border

:[40]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bt [43]

:[41]
push.v self.turns
pushi.e 6
cmp.i.v EQ
bt [43]

:[42]
push.v self.turns
pushi.e 10
cmp.i.v EQ
b [44]

:[43]
push.e 1

:[44]
bf [46]

:[45]
pushi.e 4
pop.v.i global.border

:[46]
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
pushi.e 1
pop.v.i self.say

:[end]
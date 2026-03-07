.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_spagnot_98"@26229
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_spagnot_99"@26230
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_spagnot_100"@26232
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_spagnot_101"@26234
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_spagnot_102"@26236
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_spagnot_103"@26238
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_spagnot_104"@26240
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_spagnot_105"@26242
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_spagnot_106"@26244
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_spagnot_110"@26245
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_spagnot_111"@26246
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_spagnot_112"@26248
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_spagnot_113"@26250
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_spagnot_114"@26252
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_spagnot_115"@26253
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[2]
pushbltn.v self.room
pushi.e 60
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_spagnot_120"@26255
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[4]
pushbltn.v self.room
pushi.e 75
cmp.i.v EQ
bf [13]

:[5]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_spagnot_124"@26257
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e -1
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_spagnot_127"@26259
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_spagnot_128"@26261
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_spagnot_129"@26263
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_spagnot_130"@26265
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[9]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e -2
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_spagnot_134"@26267
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_spagnot_135"@26269
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_spagnot_136"@26271
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[11]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e -3
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_spagnot_140"@26273
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_spagnot_141"@26275
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_spagnot_142"@26277
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[13]
pushbltn.v self.room
pushi.e 49
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_spagnot_147"@26279
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_spagnot_148"@26281
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[15]
pushbltn.v self.room
pushi.e 152
cmp.i.v EQ
bt [17]

:[16]
pushbltn.v self.room
pushi.e 150
cmp.i.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [20]

:[19]
push.s "obj_spagnot_153"@26283
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
pushbltn.v self.room
pushi.e 173
cmp.i.v EQ
bt [22]

:[21]
pushbltn.v self.room
pushi.e 175
cmp.i.v EQ
b [23]

:[22]
push.e 1

:[23]
bf [25]

:[24]
push.s "obj_spagnot_158"@26285
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[25]
pushbltn.v self.room
pushi.e 182
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_spagnot_163"@26287
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_spagnot_164"@26289
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[27]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]
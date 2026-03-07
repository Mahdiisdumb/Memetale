.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 226
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [18]

:[1]
pushi.e 0
pop.v.i global.msc
push.s "obj_nicesnowman_107"@19078
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_nicesnowman_108"@19079
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_nicesnowman_109"@19081
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 16
conv.i.v
call.i scr_itemcheck(argc=1)
popz.v
pushi.e 16
conv.i.v
call.i scr_storagecheck(argc=1)
popz.v
pushi.e -5
pushi.e 56
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [3]

:[2]
pushi.e -5
pushi.e 56
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
push.s "obj_nicesnowman_120"@19083
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_nicesnowman_121"@19084
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_nicesnowman_122"@19086
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_nicesnowman_123"@19088
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_nicesnowman_124"@19090
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_nicesnowman_125"@19092
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[6]
pushi.e -5
pushi.e 56
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [8]

:[7]
pushi.e -5
pushi.e 56
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
b [9]

:[8]
push.e 1

:[9]
bf [13]

:[10]
push.v self.haveit
pushi.e 0
cmp.i.v EQ
bf [13]

:[11]
push.v self.haveit2
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_nicesnowman_133"@19094
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_nicesnowman_134"@19095
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_nicesnowman_135"@19097
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[13]
pushi.e -5
pushi.e 56
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bt [15]

:[14]
pushi.e -5
pushi.e 56
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
b [16]

:[15]
push.e 1

:[16]
bf [18]

:[17]
push.s "obj_nicesnowman_140"@19099
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_nicesnowman_141"@19101
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_nicesnowman_142"@19103
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_nicesnowman_143"@19105
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[18]
call.i scr_murderlv(argc=0)
pushi.e 2
cmp.i.v GTE
bf [32]

:[19]
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i self.noroom
pushi.e -5
pushi.e 253
push.v [array]global.flag
pushi.e 2
cmp.i.v LTE
bf [21]

:[20]
pushi.e 16
conv.i.v
call.i scr_itemget(argc=1)
popz.v

:[21]
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_nicesnowman_155"@19107
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [32]

:[23]
pushi.e -5
pushi.e 253
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_nicesnowman_161"@19109
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_nicesnowman_162"@19111
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_nicesnowman_163"@19113
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[25]
pushi.e -5
pushi.e 253
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_nicesnowman_167"@19115
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_nicesnowman_168"@19117
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_nicesnowman_169"@19118
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[27]
pushi.e -5
pushi.e 253
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [29]

:[28]
push.s "obj_nicesnowman_173"@19120
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_nicesnowman_174"@19121
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[29]
pushi.e -5
pushi.e 253
push.v [array]global.flag
pushi.e 3
cmp.i.v GTE
bf [31]

:[30]
push.s "obj_nicesnowman_177"@19123
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[31]
pushi.e 1
pop.v.i self.dt

:[32]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]
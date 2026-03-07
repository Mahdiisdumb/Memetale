.localvar 0 arguments

:[0]
pushi.e 4
pop.v.i self.myinteract
pushi.e 15
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [2]

:[1]
pushglb.v global.maxhp
pop.v.v global.hp

:[2]
pushglb.v global.maxen
pop.v.v global.en
pushi.e 110
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.offroom
pushbltn.v self.room
pushi.e 219
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.offroom

:[4]
pushbltn.v self.room
pushi.e 235
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.offroom

:[6]
pushbltn.v self.room
pushi.e 232
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.offroom

:[8]
pushbltn.v self.room
pushi.e 236
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.offroom

:[10]
pushbltn.v self.room
pushi.e 231
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.offroom

:[12]
pushbltn.v self.room
pushi.e 216
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.offroom

:[14]
pushbltn.v self.room
pushi.e 246
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.i self.offroom

:[16]
pushbltn.v self.room
pushi.e 251
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1
pop.v.i self.offroom

:[18]
call.i scr_murderlv(argc=0)
pushi.e 2
cmp.i.v GTE
bf [20]

:[19]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [45]

:[22]
pushbltn.v self.room
pushi.e 46
cmp.i.v EQ
bt [26]

:[23]
pushbltn.v self.room
pushi.e 56
cmp.i.v EQ
bt [26]

:[24]
pushbltn.v self.room
pushi.e 61
cmp.i.v EQ
bt [26]

:[25]
pushbltn.v self.room
pushi.e 68
cmp.i.v EQ
b [27]

:[26]
push.e 1

:[27]
bf [45]

:[28]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [45]

:[29]
pushi.e 0
pop.v.i global.msc
pushi.e 16
pushi.e -5
pushi.e 203
push.v [array]global.flag
sub.v.i
pop.v.v self.pop
push.v self.pop
pushi.e 0
cmp.i.v LT
bf [31]

:[30]
pushi.e 0
pop.v.i self.pop

:[31]
call.i scr_murderlv(argc=0)
pushi.e 2
cmp.i.v GTE
bf [33]

:[32]
push.v self.pop
call.i string(argc=1)
push.s "obj_savepoint_97"@24297
conv.s.v
call.i scr_gettext(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[33]
call.i scr_murderlv(argc=0)
pushi.e 5
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_savepoint_99"@24299
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[35]
pushi.e -5
pushi.e 57
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [37]

:[36]
push.v self.pop
pushi.e 0
cmp.i.v LTE
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
push.s "obj_savepoint_101"@24300
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[40]
push.v self.pop
pushi.e 0
cmp.i.v LTE
bf [42]

:[41]
pushi.e -5
pushi.e 57
push.v [array]global.flag
pushi.e 2
cmp.i.v NEQ
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
push.s "obj_savepoint_103"@24302
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[45]
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bf [47]

:[46]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [48]

:[47]
push.e 0

:[48]
bf [67]

:[49]
pushbltn.v self.room
pushi.e 83
cmp.i.v EQ
bt [58]

:[50]
pushbltn.v self.room
pushi.e 86
cmp.i.v EQ
bt [58]

:[51]
pushbltn.v self.room
pushi.e 94
cmp.i.v EQ
bt [58]

:[52]
pushbltn.v self.room
pushi.e 110
cmp.i.v EQ
bt [58]

:[53]
pushbltn.v self.room
pushi.e 114
cmp.i.v EQ
bt [58]

:[54]
pushbltn.v self.room
pushi.e 116
cmp.i.v EQ
bt [58]

:[55]
pushbltn.v self.room
pushi.e 134
cmp.i.v EQ
bt [58]

:[56]
pushbltn.v self.room
pushi.e 131
cmp.i.v EQ
bt [58]

:[57]
pushbltn.v self.room
pushi.e 128
cmp.i.v EQ
b [59]

:[58]
push.e 1

:[59]
bf [67]

:[60]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [67]

:[61]
pushi.e 0
pop.v.i global.msc
pushi.e 18
pushi.e -5
pushi.e 204
push.v [array]global.flag
sub.v.i
pop.v.v self.pop
push.v self.pop
pushi.e 0
cmp.i.v LT
bf [63]

:[62]
pushi.e 0
pop.v.i self.pop

:[63]
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bf [65]

:[64]
push.v self.pop
call.i string(argc=1)
push.s "obj_savepoint_118"@24303
conv.s.v
call.i scr_gettext(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[65]
push.v self.pop
pushi.e 0
cmp.i.v LTE
bf [67]

:[66]
push.s "obj_savepoint_120"@24304
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[67]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [69]

:[68]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [88]

:[71]
pushbltn.v self.room
pushi.e 139
cmp.i.v EQ
bt [79]

:[72]
pushbltn.v self.room
pushi.e 145
cmp.i.v EQ
bt [79]

:[73]
pushbltn.v self.room
pushi.e 155
cmp.i.v EQ
bt [79]

:[74]
pushbltn.v self.room
pushi.e 164
cmp.i.v EQ
bt [79]

:[75]
pushbltn.v self.room
pushi.e 176
cmp.i.v EQ
bt [79]

:[76]
pushbltn.v self.room
pushi.e 183
cmp.i.v EQ
bt [79]

:[77]
pushbltn.v self.room
pushi.e 196
cmp.i.v EQ
bt [79]

:[78]
pushbltn.v self.room
pushi.e 210
cmp.i.v EQ
b [80]

:[79]
push.e 1

:[80]
bf [88]

:[81]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [88]

:[82]
pushi.e 0
pop.v.i global.msc
pushi.e 40
pushi.e -5
pushi.e 205
push.v [array]global.flag
sub.v.i
pop.v.v self.pop
push.v self.pop
pushi.e 0
cmp.i.v LT
bf [84]

:[83]
pushi.e 0
pop.v.i self.pop

:[84]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [86]

:[85]
push.v self.pop
call.i string(argc=1)
push.s "obj_savepoint_135"@24305
conv.s.v
call.i scr_gettext(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[86]
push.v self.pop
pushi.e 0
cmp.i.v LTE
bf [88]

:[87]
push.s "obj_savepoint_137"@24306
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[88]
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [90]

:[89]
pushi.e 0
pop.v.i global.msc
push.s "obj_savepoint_145"@24307
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[90]
push.v self.offroom
pushi.e 0
cmp.i.v EQ
bf [end]

:[91]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]
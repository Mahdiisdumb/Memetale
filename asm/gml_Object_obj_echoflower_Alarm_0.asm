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
push.s "obj_echoflower_96"@12000
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 83
cmp.i.v EQ
bf [21]

:[1]
pushi.e 1360
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [20]

:[2]
push.v 1360.talkedto
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_echoflower_104"@12002
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_echoflower_105"@12004
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.v

:[4]
push.v 1360.talkedto
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.v self.v
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.s "obj_echoflower_110"@12006
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
push.v 1360.talkedto
pushi.e 1
cmp.i.v GT
bf [11]

:[10]
push.v self.v
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.s "obj_echoflower_114"@12008
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[14]
push.v 1360.talkedto
pushi.e 0
cmp.i.v GT
bf [16]

:[15]
push.v self.v
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
push.s "obj_echoflower_118"@12010
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[19]
b [21]

:[20]
push.s "obj_echoflower_123"@12012
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[21]
pushbltn.v self.room
pushi.e 84
cmp.i.v EQ
bf [26]

:[22]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [24]

:[23]
push.s "obj_echoflower_130"@12014
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [26]

:[25]
push.s "obj_echoflower_131"@12016
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[26]
pushbltn.v self.room
pushi.e 89
cmp.i.v EQ
bf [28]

:[27]
push.s "obj_echoflower_135"@12018
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
pushbltn.v self.room
pushi.e 90
cmp.i.v EQ
bf [46]

:[29]
push.v self.x
pushi.e 40
cmp.i.v GT
bf [32]

:[30]
push.s "obj_echoflower_141"@12020
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_echoflower_142"@12022
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_echoflower_143"@12024
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bf [32]

:[31]
push.s "obj_echoflower_145"@12025
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
push.v self.x
pushi.e 180
cmp.i.v GT
bf [35]

:[33]
push.s "obj_echoflower_150"@12027
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_echoflower_151"@12029
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bf [35]

:[34]
push.s "obj_echoflower_153"@12030
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[35]
push.v self.x
pushi.e 280
cmp.i.v GT
bf [37]

:[36]
push.s "obj_echoflower_156"@12032
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[37]
push.v self.x
pushi.e 380
cmp.i.v GT
bf [39]

:[38]
push.s "obj_echoflower_157"@12034
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[39]
push.v self.x
pushi.e 620
cmp.i.v GT
bf [41]

:[40]
push.s "obj_echoflower_159"@12036
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[41]
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bt [43]

:[42]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [44]

:[43]
push.e 1

:[44]
bf [46]

:[45]
push.s "obj_echoflower_161"@12037
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[46]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [49]

:[47]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [49]

:[48]
push.s "obj_echoflower_166"@12038
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[49]
pushbltn.v self.room
pushi.e 94
cmp.i.v EQ
bf [52]

:[50]
push.s "obj_echoflower_171"@12040
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bf [52]

:[51]
push.s "obj_echoflower_173"@12041
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
pushbltn.v self.room
pushi.e 97
cmp.i.v EQ
bf [68]

:[53]
push.s "obj_echoflower_178"@12043
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_echoflower_179"@12045
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.x
pushi.e 700
cmp.i.v LT
bf [55]

:[54]
push.v self.y
pushi.e 360
cmp.i.v LT
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
push.s "obj_echoflower_183"@12046
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_echoflower_184"@12048
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[58]
push.v self.x
pushi.e 700
cmp.i.v LT
bf [60]

:[59]
push.v self.y
pushi.e 360
cmp.i.v GT
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
push.s "obj_echoflower_189"@12049
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_echoflower_190"@12051
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_echoflower_191"@12053
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[63]
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bt [65]

:[64]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [66]

:[65]
push.e 1

:[66]
bf [68]

:[67]
push.s "obj_echoflower_194"@12054
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[68]
pushbltn.v self.room
pushi.e 98
cmp.i.v EQ
bf [70]

:[69]
push.s "obj_echoflower_199"@12056
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[70]
pushbltn.v self.room
pushi.e 131
cmp.i.v EQ
bf [92]

:[71]
push.s "obj_echoflower_205"@12058
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.y
pushi.e 160
cmp.i.v EQ
bf [73]

:[72]
push.s "obj_echoflower_209"@12059
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_echoflower_210"@12061
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_echoflower_211"@12063
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[73]
push.v self.y
pushi.e 240
cmp.i.v EQ
bf [75]

:[74]
push.s "obj_echoflower_217"@12065
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_echoflower_218"@12067
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[75]
push.v self.y
pushi.e 320
cmp.i.v EQ
bf [77]

:[76]
push.s "obj_echoflower_223"@12068
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_echoflower_224"@12070
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_echoflower_225"@12072
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[77]
push.v self.y
pushi.e 420
cmp.i.v EQ
bf [79]

:[78]
push.s "obj_echoflower_230"@12073
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_echoflower_231"@12075
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[79]
push.v self.y
pushi.e 450
cmp.i.v GT
bf [81]

:[80]
push.s "obj_echoflower_236"@12076
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_echoflower_237"@12078
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[81]
push.v self.xxx
pushi.e 1
cmp.i.v EQ
bf [83]

:[82]
push.v self.y
pushi.e 420
cmp.i.v EQ
b [84]

:[83]
push.e 0

:[84]
bf [87]

:[85]
pushi.e 4
pop.v.i global.typer
push.s "obj_echoflower_243"@12080
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_echoflower_244"@12082
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_echoflower_245"@12084
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_echoflower_246"@12086
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_echoflower_247"@12088
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_echoflower_248"@12090
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_echoflower_249"@12092
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [87]

:[86]
pushi.e 4
pop.v.i global.typer
push.s "obj_echoflower_253"@12094
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_echoflower_254"@12096
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_echoflower_255"@12098
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_echoflower_256"@12100
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_echoflower_257"@12101
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[87]
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bt [89]

:[88]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [90]

:[89]
push.e 1

:[90]
bf [92]

:[91]
push.s "obj_echoflower_262"@12102
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[92]
pushbltn.v self.room
pushi.e 172
cmp.i.v EQ
bf [94]

:[93]
push.s "obj_echoflower_301"@12104
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[94]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.talkedto
pushi.e 1
add.i.v
pop.v.v self.talkedto

:[end]
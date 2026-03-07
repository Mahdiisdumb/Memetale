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
push.s "obj_readable_room4_60"@22967
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 34
cmp.i.v EQ
bf [3]

:[1]
push.s "obj_readable_room4_63"@22969
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.s "obj_readable_room4_64"@22971
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
pushbltn.v self.room
pushi.e 34
cmp.i.v EQ
bf [5]

:[4]
call.i murdererlv1(argc=0)
pushi.e 1
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.s "obj_readable_room4_66"@22973
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
pushbltn.v self.room
pushi.e 221
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_readable_room4_67"@22974
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
pushbltn.v self.room
pushi.e 222
cmp.i.v EQ
bf [13]

:[11]
push.s "obj_readable_room4_70"@22976
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [13]

:[12]
push.s "obj_readable_room4_73"@22977
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[13]
pushbltn.v self.room
pushi.e 37
cmp.i.v EQ
bf [15]

:[14]
push.v self.x
pushi.e 130
cmp.i.v LT
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.s "obj_readable_room4_76"@22979
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
pushbltn.v self.room
pushi.e 37
cmp.i.v EQ
bf [21]

:[19]
call.i murdererlv1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.v self.x
pushi.e 130
cmp.i.v LT
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
push.s "obj_readable_room4_77"@22981
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
pushbltn.v self.room
pushi.e 37
cmp.i.v EQ
bf [26]

:[25]
push.v self.x
pushi.e 130
cmp.i.v GT
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
push.s "obj_readable_room4_78"@22983
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[29]
pushbltn.v self.room
pushi.e 37
cmp.i.v EQ
bf [32]

:[30]
push.v self.x
pushi.e 130
cmp.i.v GT
bf [32]

:[31]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
push.s "obj_readable_room4_79"@22985
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[35]
pushbltn.v self.room
pushi.e 225
cmp.i.v EQ
bf [37]

:[36]
push.v self.x
pushi.e 130
cmp.i.v LT
b [38]

:[37]
push.e 0

:[38]
bf [41]

:[39]
push.s "obj_readable_room4_83"@22987
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [41]

:[40]
push.s "obj_readable_room4_84"@22989
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[41]
pushbltn.v self.room
pushi.e 225
cmp.i.v EQ
bf [43]

:[42]
push.v self.x
pushi.e 130
cmp.i.v GT
b [44]

:[43]
push.e 0

:[44]
bf [47]

:[45]
push.s "obj_readable_room4_90"@22991
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [47]

:[46]
push.s "obj_readable_room4_91"@22993
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[47]
pushbltn.v self.room
pushi.e 224
cmp.i.v EQ
bf [54]

:[48]
push.v self.x
pushi.e 160
cmp.i.v LT
bf [51]

:[49]
push.s "obj_readable_room4_98"@22995
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [51]

:[50]
push.s "obj_readable_room4_99"@22997
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[51]
push.v self.x
pushi.e 160
cmp.i.v GT
bf [54]

:[52]
push.s "obj_readable_room4_104"@22999
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [54]

:[53]
push.s "obj_readable_room4_105"@23001
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
pushbltn.v self.room
pushi.e 223
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_readable_room4_110"@23003
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[56]
pushbltn.v self.room
pushi.e 74
cmp.i.v EQ
bf [58]

:[57]
push.s "obj_readable_room4_114"@23005
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room4_116"@23007
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room4_117"@23009
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room4_118"@23011
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room4_119"@23013
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room4_120"@23015
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[58]
pushbltn.v self.room
pushi.e 123
cmp.i.v EQ
bf [62]

:[59]
push.s "obj_readable_room4_126"@23017
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room4_127"@23019
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room4_128"@23021
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 97
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
push.s "obj_readable_room4_131"@23023
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
pushi.e 1
pushi.e -5
pushi.e 97
pop.v.i [array]global.flag

:[62]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [64]

:[63]
push.s "obj_readable_room4_139"@23025
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room4_140"@23027
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[64]
pushbltn.v self.room
pushi.e 141
cmp.i.v EQ
bf [69]

:[65]
push.s "obj_readable_room4_145"@23029
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 126
cmp.i.v LT
bf [67]

:[66]
push.s "obj_readable_room4_146"@23031
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
push.s "obj_readable_room4_147"@23032
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[69]
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read
pushbltn.v self.room
pushi.e 142
cmp.i.v EQ
bf [71]

:[70]
pushi.e 645
pop.v.i global.msc

:[71]
pushbltn.v self.room
pushi.e 154
cmp.i.v EQ
bf [80]

:[72]
push.s "obj_readable_room4_159"@23034
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 134
cmp.i.v LT
bf [74]

:[73]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v LT
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
push.s "obj_readable_room4_161"@23035
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[77]
pushi.e 1175
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [80]

:[78]
pushi.e 27
pop.v.i global.typer
push.s "obj_readable_room4_168"@23037
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room4_169"@23039
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room4_170"@23041
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 134
cmp.i.v EQ
bf [80]

:[79]
push.s "obj_readable_room4_174"@23043
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room4_175"@23045
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[80]
pushbltn.v self.room
pushi.e 118
cmp.i.v EQ
bf [83]

:[81]
push.s "obj_readable_room4_182"@23047
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.x
pushi.e 200
cmp.i.v GT
bf [83]

:[82]
pushi.e 5
pop.v.i global.facechoice
pushi.e 37
pop.v.i global.typer
pushi.e 714
pop.v.i global.msc

:[83]
pushbltn.v self.room
pushi.e 245
cmp.i.v EQ
bf [86]

:[84]
push.s "obj_readable_room4_193"@23049
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room4_194"@23051
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room4_195"@23053
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room4_196"@23055
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room4_197"@23057
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room4_198"@23059
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_readable_room4_199"@23061
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 485
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_readable_room4_201"@23062
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[86]
pushbltn.v self.room
pushi.e 252
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_readable_room4_206"@23064
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[88]
pushbltn.v self.room
pushi.e 78
cmp.i.v EQ
bf [92]

:[89]
push.v self.y
pushi.e 128
cmp.i.v LT
bf [91]

:[90]
pushi.e 845
pop.v.i global.msc

:[91]
push.s "obj_readable_room4_212"@23066
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[92]
pushbltn.v self.room
pushi.e 80
cmp.i.v EQ
bf [94]

:[93]
push.s "obj_readable_room4_217"@23068
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[94]
pushbltn.v self.room
pushi.e 68
cmp.i.v EQ
bf [99]

:[95]
pushi.e -5
pushi.e 497
push.v [array]global.flag
pushi.e 3
cmp.i.v LT
bf [97]

:[96]
push.s "obj_readable_room4_222"@23069
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[97]
pushi.e -5
pushi.e 497
push.v [array]global.flag
pushi.e 3
cmp.i.v GTE
bf [99]

:[98]
push.s "obj_readable_room4_226"@23071
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 965
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 109
conv.i.v
call.i snd_play(argc=1)
popz.v

:[99]
pushbltn.v self.room
pushi.e 266
cmp.i.v EQ
bf [101]

:[100]
push.s "obj_readable_room4_234"@23073
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[101]
pushbltn.v self.room
pushi.e 84
cmp.i.v EQ
bf [103]

:[102]
push.s "obj_readable_room4_237"@23075
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[103]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]
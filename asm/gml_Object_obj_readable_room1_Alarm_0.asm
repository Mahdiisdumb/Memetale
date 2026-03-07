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
push.s "obj_readable_room1_64"@22077
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 7
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_readable_room1_65"@22079
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
pushbltn.v self.room
pushi.e 8
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_readable_room1_66"@22081
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[4]
pushbltn.v self.room
pushi.e 10
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_readable_room1_67"@22083
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
pushbltn.v self.room
pushi.e 15
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_readable_room1_68"@22085
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
pushbltn.v self.room
pushi.e 21
cmp.i.v EQ
bf [12]

:[9]
pushglb.v global.osflavor
pushi.e 3
cmp.i.v GTE
bf [11]

:[10]
push.s "obj_readable_room1_69_console_1"@22089
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_69_console_2"@22091
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_69_console_3"@22093
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_69_console_4"@22095
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
b [12]

:[11]
push.s "obj_readable_room1_69"@22087
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
pushbltn.v self.room
pushi.e 22
cmp.i.v EQ
bf [14]

:[13]
push.s "obj_readable_room1_70"@22097
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[14]
pushbltn.v self.room
pushi.e 23
cmp.i.v EQ
bf [16]

:[15]
push.s "obj_readable_room1_71"@22099
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[16]
pushbltn.v self.room
pushi.e 24
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_readable_room1_72"@22101
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
pushbltn.v self.room
pushi.e 25
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_readable_room1_73"@22103
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
pushbltn.v self.room
pushi.e 26
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_readable_room1_74"@22105
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[22]
pushbltn.v self.room
pushi.e 32
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_readable_room1_75"@22107
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
pushbltn.v self.room
pushi.e 220
cmp.i.v EQ
bf [27]

:[25]
push.s "obj_readable_room1_78"@22109
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [27]

:[26]
push.s "obj_readable_room1_79"@22111
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[27]
pushbltn.v self.room
pushi.e 33
cmp.i.v EQ
bf [29]

:[28]
push.s "obj_readable_room1_81"@22113
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[29]
pushbltn.v self.room
pushi.e 221
cmp.i.v EQ
bf [31]

:[30]
push.s "obj_readable_room1_82"@22115
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[31]
pushbltn.v self.room
pushi.e 36
cmp.i.v EQ
bf [33]

:[32]
push.s "obj_readable_room1_83"@22117
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[33]
pushbltn.v self.room
pushi.e 224
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_readable_room1_84"@22119
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[35]
pushbltn.v self.room
pushi.e 232
cmp.i.v EQ
bf [37]

:[36]
push.s "obj_readable_room1_86"@22121
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[37]
pushbltn.v self.room
pushi.e 234
cmp.i.v EQ
bf [42]

:[38]
push.s "obj_readable_room1_90"@22123
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_91"@22125
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_92"@22126
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
push.s "obj_readable_room1_96"@22128
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_97"@22130
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_98"@22132
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[40]
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [42]

:[41]
push.s "obj_readable_room1_103"@22134
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
pushbltn.v self.room
pushi.e 35
cmp.i.v EQ
bf [48]

:[43]
pushi.e 524
pop.v.i global.msc
push.v self.x
pushi.e 192
cmp.i.v GT
bf [48]

:[44]
pushi.e 0
pop.v.i global.msc
push.s "obj_readable_room1_112"@22136
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_113"@22138
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.read
pushi.e 0
cmp.i.v GT
bf [46]

:[45]
push.s "obj_readable_room1_114"@22140
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[46]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_readable_room1_118"@22142
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_119"@22144
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[48]
pushbltn.v self.room
pushi.e 223
cmp.i.v EQ
bf [53]

:[49]
push.s "obj_readable_room1_125"@22146
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_126"@22148
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [51]

:[50]
push.s "obj_readable_room1_130"@22150
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[51]
push.v self.y
pushi.e 120
cmp.i.v GT
bf [53]

:[52]
push.s "obj_readable_room1_134"@22152
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[53]
pushbltn.v self.room
pushi.e 235
cmp.i.v EQ
bf [55]

:[54]
push.s "obj_readable_room1_139"@22154
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[55]
pushbltn.v self.room
pushi.e 34
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_readable_room1_142"@22156
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[57]
pushbltn.v self.room
pushi.e 222
cmp.i.v EQ
bf [59]

:[58]
push.s "obj_readable_room1_143"@22157
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[59]
pushbltn.v self.room
pushi.e 37
cmp.i.v EQ
bf [61]

:[60]
push.s "obj_readable_room1_144"@22159
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
pushbltn.v self.room
pushi.e 225
cmp.i.v EQ
bf [64]

:[62]
push.s "obj_readable_room1_147"@22161
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [64]

:[63]
push.s "obj_readable_room1_151"@22163
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[64]
pushbltn.v self.room
pushi.e 44
cmp.i.v EQ
bf [66]

:[65]
push.s "obj_readable_room1_154"@22165
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[66]
pushbltn.v self.room
pushi.e 54
cmp.i.v EQ
bf [68]

:[67]
push.s "obj_readable_room1_155"@22167
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[68]
pushbltn.v self.room
pushi.e 57
cmp.i.v EQ
bf [79]

:[69]
pushglb.v global.plot
pushi.e 48
cmp.i.v LTE
bf [71]

:[70]
push.s "obj_readable_room1_158"@22169
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[71]
pushglb.v global.plot
pushi.e 48
cmp.i.v GT
bf [73]

:[72]
push.s "obj_readable_room1_159"@22171
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[73]
pushi.e -5
pushi.e 64
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
pushi.e 1
pushi.e -5
pushi.e 64
pop.v.i [array]global.flag

:[75]
pushglb.v global.plot
pushi.e 48
cmp.i.v LTE
bf [77]

:[76]
pushi.e 49
pop.v.i global.plot

:[77]
call.i scr_murderlv(argc=0)
pushi.e 3
cmp.i.v GTE
bf [79]

:[78]
push.s "obj_readable_room1_162"@22173
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[79]
pushbltn.v self.room
pushi.e 61
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_readable_room1_164"@22175
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[81]
pushbltn.v self.room
pushi.e 74
cmp.i.v EQ
bf [83]

:[82]
push.s "obj_readable_room1_198"@22177
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_199"@22179
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_200"@22181
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_201"@22183
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_202"@22185
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room1_203"@22187
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[83]
pushbltn.v self.room
pushi.e 71
cmp.i.v EQ
bf [88]

:[84]
push.s "obj_readable_room1_208"@22189
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_209"@22191
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_readable_room1_213"@22193
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_214"@22195
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[86]
call.i scr_murderlv(argc=0)
pushi.e 7
cmp.i.v GTE
bf [88]

:[87]
push.s "obj_readable_room1_219"@22197
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[88]
pushbltn.v self.room
pushi.e 97
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_readable_room1_228"@22199
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_229"@22201
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[90]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_readable_room1_235"@22203
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_236"@22205
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[92]
pushbltn.v self.room
pushi.e 101
cmp.i.v EQ
bf [94]

:[93]
push.s "obj_readable_room1_241"@22207
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[94]
pushbltn.v self.room
pushi.e 126
cmp.i.v EQ
bf [96]

:[95]
push.s "obj_readable_room1_247"@22209
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_248"@22211
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_249"@22213
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[96]
pushbltn.v self.room
pushi.e 131
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_readable_room1_256"@22215
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_257"@22217
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_258"@22219
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[98]
pushbltn.v self.room
pushi.e 96
cmp.i.v EQ
bf [100]

:[99]
push.s "obj_readable_room1_263"@22221
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[100]
pushbltn.v self.room
pushi.e 123
cmp.i.v EQ
bf [102]

:[101]
push.s "obj_readable_room1_269"@22223
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[102]
pushbltn.v self.room
pushi.e 110
cmp.i.v EQ
bf [104]

:[103]
push.s "obj_readable_room1_274"@22225
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_275"@22227
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[104]
pushbltn.v self.room
pushi.e 129
cmp.i.v EQ
bf [106]

:[105]
push.s "obj_readable_room1_280"@22229
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[106]
pushbltn.v self.room
pushi.e 132
cmp.i.v EQ
bf [110]

:[107]
pushi.e 1128
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [109]

:[108]
pushi.e 80
pop.v.i 1128.con

:[109]
pushi.e 0
pop.v.i self.cantalk

:[110]
pushbltn.v self.room
pushi.e 141
cmp.i.v EQ
bf [116]

:[111]
push.s "obj_readable_room1_292"@22231
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 126
cmp.i.v LT
bf [113]

:[112]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v LT
b [114]

:[113]
push.e 0

:[114]
bf [116]

:[115]
push.s "obj_readable_room1_293"@22232
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[116]
pushbltn.v self.room
pushi.e 142
cmp.i.v EQ
bf [118]

:[117]
push.s "obj_readable_room1_299"@22234
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[118]
pushbltn.v self.room
pushi.e 154
cmp.i.v EQ
bf [127]

:[119]
push.s "obj_readable_room1_304"@22236
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 134
cmp.i.v LT
bf [121]

:[120]
push.s "obj_readable_room1_306"@22237
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[121]
pushi.e 1175
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [123]

:[122]
pushi.e 27
pop.v.i global.typer
push.s "obj_readable_room1_312"@22239
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_313"@22241
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[123]
pushglb.v global.plot
pushi.e 134
cmp.i.v EQ
bf [127]

:[124]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 5
pop.v.i global.typer
push.s "obj_readable_room1_320"@22242
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_321"@22243
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_322"@22245
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_323"@22247
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_324"@22249
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room1_325"@22251
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.v self.specialread
pushi.e 0
cmp.i.v GT
bf [126]

:[125]
push.s "obj_readable_room1_328"@22252
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_329"@22253
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_330"@22255
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[126]
push.v self.specialread
pushi.e 1
add.i.v
pop.v.v self.specialread

:[127]
pushbltn.v self.room
pushi.e 118
cmp.i.v EQ
bf [133]

:[128]
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 4
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.v self.x
pushi.e 180
cmp.i.v GT
bf [132]

:[129]
push.s "obj_readable_room1_347"@22257
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_349"@22259
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_350"@22261
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.read
pushi.e 0
cmp.i.v GT
bf [131]

:[130]
push.s "obj_readable_room1_354"@22262
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[131]
b [133]

:[132]
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_readable_room1_360"@22264
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_361"@22266
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_362"@22268
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[133]
pushbltn.v self.room
pushi.e 170
cmp.i.v EQ
bf [135]

:[134]
push.s "obj_readable_room1_369"@22270
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_370"@22272
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[135]
pushbltn.v self.room
pushi.e 182
cmp.i.v EQ
bf [137]

:[136]
push.s "obj_readable_room1_375"@22274
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[137]
pushbltn.v self.room
pushi.e 196
cmp.i.v EQ
bf [139]

:[138]
push.s "obj_readable_room1_380"@22276
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[139]
pushbltn.v self.room
pushi.e 198
cmp.i.v EQ
bf [141]

:[140]
push.s "obj_readable_room1_385"@22278
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[141]
pushbltn.v self.room
pushi.e 200
cmp.i.v EQ
bf [143]

:[142]
push.s "obj_readable_room1_390"@22280
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[143]
pushbltn.v self.room
pushi.e 202
cmp.i.v EQ
bf [145]

:[144]
push.s "obj_readable_room1_395"@22282
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_396"@22284
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[145]
pushbltn.v self.room
pushi.e 204
cmp.i.v EQ
bf [147]

:[146]
push.s "obj_readable_room1_401"@22286
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[147]
pushbltn.v self.room
pushi.e 206
cmp.i.v EQ
bf [149]

:[148]
push.s "obj_readable_room1_406"@22288
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[149]
pushbltn.v self.room
pushi.e 211
cmp.i.v EQ
bf [152]

:[150]
push.s "obj_readable_room1_416"@22290
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [152]

:[151]
push.s "obj_readable_room1_419"@22292
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[152]
pushbltn.v self.room
pushi.e 245
cmp.i.v EQ
bf [155]

:[153]
push.s "obj_readable_room1_425"@22294
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_426"@22296
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_427"@22298
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_428"@22300
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 485
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [155]

:[154]
push.s "obj_readable_room1_430"@22302
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[155]
pushbltn.v self.room
pushi.e 246
cmp.i.v EQ
bf [158]

:[156]
push.s "obj_readable_room1_435"@22304
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 485
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [158]

:[157]
push.s "obj_readable_room1_436"@22305
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[158]
pushbltn.v self.room
pushi.e 247
cmp.i.v EQ
bf [161]

:[159]
push.s "obj_readable_room1_441"@22307
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_442"@22309
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_443"@22311
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_444"@22313
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_445"@22315
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room1_446"@22317
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_readable_room1_447"@22319
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
bf [161]

:[160]
push.s "obj_readable_room1_449"@22320
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[161]
pushbltn.v self.room
pushi.e 248
cmp.i.v EQ
bf [164]

:[162]
push.s "obj_readable_room1_454"@22322
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_455"@22324
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_456"@22326
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_457"@22328
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_458"@22330
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room1_459"@22332
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 485
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [164]

:[163]
push.s "obj_readable_room1_462"@22333
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[164]
pushbltn.v self.room
pushi.e 250
cmp.i.v EQ
bf [167]

:[165]
push.s "obj_readable_room1_467"@22335
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_468"@22337
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_469"@22339
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_470"@22341
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 485
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [167]

:[166]
push.s "obj_readable_room1_471"@22342
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[167]
pushbltn.v self.room
pushi.e 251
cmp.i.v EQ
bf [170]

:[168]
push.s "obj_readable_room1_476"@22344
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_477"@22346
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_478"@22348
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_479"@22350
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_480"@22352
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 485
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [170]

:[169]
push.s "obj_readable_room1_481"@22353
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[170]
pushbltn.v self.room
pushi.e 252
cmp.i.v EQ
bf [173]

:[171]
push.s "obj_readable_room1_486"@22355
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_487"@22357
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_488"@22359
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_489"@22361
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_490"@22363
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room1_491"@22365
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 485
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [173]

:[172]
push.s "obj_readable_room1_492"@22366
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[173]
pushbltn.v self.room
pushi.e 254
cmp.i.v EQ
bf [176]

:[174]
push.s "obj_readable_room1_497"@22368
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_498"@22370
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_499"@22372
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_500"@22374
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_501"@22376
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room1_502"@22378
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 485
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [176]

:[175]
push.s "obj_readable_room1_503"@22379
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[176]
pushbltn.v self.room
pushi.e 256
cmp.i.v EQ
bf [179]

:[177]
push.s "obj_readable_room1_517"@22381
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 485
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [179]

:[178]
push.s "obj_readable_room1_518"@22382
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[179]
pushbltn.v self.room
pushi.e 257
cmp.i.v EQ
bf [182]

:[180]
push.s "obj_readable_room1_523"@22384
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_524"@22386
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_525"@22388
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_526"@22390
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_527"@22392
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 485
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [182]

:[181]
push.s "obj_readable_room1_528"@22393
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[182]
pushbltn.v self.room
pushi.e 260
cmp.i.v EQ
bf [184]

:[183]
pushi.e 780
pop.v.i global.msc

:[184]
pushbltn.v self.room
pushi.e 258
cmp.i.v EQ
bf [189]

:[185]
push.s "obj_readable_room1_538"@22395
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_539"@22397
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_540"@22399
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_541"@22401
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e -5
pushi.e 485
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [187]

:[186]
push.s "obj_readable_room1_542"@22402
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[187]
pushi.e -5
pushi.e 490
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [189]

:[188]
push.s "obj_readable_room1_543"@22404
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[189]
pushbltn.v self.room
pushi.e 262
cmp.i.v EQ
bf [192]

:[190]
push.s "obj_readable_room1_548"@22406
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 485
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [192]

:[191]
push.s "obj_readable_room1_551"@22408
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_552"@22410
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_553"@22412
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_554"@22414
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_555"@22416
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room1_556"@22418
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_readable_room1_557"@22420
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_readable_room1_558"@22422
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_readable_room1_559"@22424
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[192]
pushbltn.v self.room
pushi.e 243
cmp.i.v EQ
bf [194]

:[193]
push.s "obj_readable_room1_565"@22426
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[194]
pushbltn.v self.room
pushi.e 216
cmp.i.v EQ
bf [196]

:[195]
push.s "obj_readable_room1_570"@22428
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[196]
pushbltn.v self.room
pushi.e 261
cmp.i.v EQ
bf [198]

:[197]
push.s "obj_readable_room1_575"@22430
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[198]
pushbltn.v self.room
pushi.e 73
cmp.i.v EQ
bf [200]

:[199]
push.s "obj_readable_room1_580"@22432
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[200]
pushbltn.v self.room
pushi.e 119
cmp.i.v EQ
bf [202]

:[201]
push.s "obj_readable_room1_585"@22433
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[202]
pushbltn.v self.room
pushi.e 78
cmp.i.v EQ
bf [204]

:[203]
push.s "obj_readable_room1_590"@22435
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[204]
pushbltn.v self.room
pushi.e 80
cmp.i.v EQ
bf [209]

:[205]
push.s "obj_readable_room1_595"@22437
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_596"@22439
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_597"@22441
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [207]

:[206]
push.s "obj_readable_room1_602"@22442
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_603"@22443
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_604"@22445
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_605"@22446
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[207]
pushi.e -5
pushi.e 279
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [209]

:[208]
push.s "obj_readable_room1_610"@22447
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_611"@22449
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_612"@22451
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room1_613"@22453
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room1_614"@22455
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[209]
pushbltn.v self.room
pushi.e 178
cmp.i.v EQ
bf [211]

:[210]
push.s "obj_readable_room1_621"@22457
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_622"@22459
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_623"@22461
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[211]
pushbltn.v self.room
pushi.e 185
cmp.i.v EQ
bf [213]

:[212]
push.s "obj_readable_room1_628"@22463
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[213]
pushbltn.v self.room
pushi.e 183
cmp.i.v EQ
bf [215]

:[214]
push.s "obj_readable_room1_633"@22465
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_634"@22467
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[215]
pushbltn.v self.room
pushi.e 184
cmp.i.v EQ
bf [217]

:[216]
push.s "obj_readable_room1_639"@22469
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_640"@22471
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room1_641"@22473
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[217]
pushbltn.v self.room
pushi.e 186
cmp.i.v EQ
bf [219]

:[218]
push.s "obj_readable_room1_646"@22475
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room1_647"@22477
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[219]
pushbltn.v self.room
pushi.e 128
cmp.i.v EQ
bf [221]

:[220]
push.s "obj_readable_room1_652"@22479
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[221]
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read
push.v self.cantalk
pushi.e 1
cmp.i.v EQ
bf [end]

:[222]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]
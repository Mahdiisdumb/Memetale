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
push.s "obj_readable_room5_64"@23076
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 224
cmp.i.v EQ
bf [3]

:[1]
push.s "obj_readable_room5_68"@23078
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [3]

:[2]
push.s "obj_readable_room5_69"@23080
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
pushbltn.v self.room
pushi.e 223
cmp.i.v EQ
bf [10]

:[4]
push.s "obj_readable_room5_74"@23082
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_75"@23084
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
bf [6]

:[5]
push.s "obj_readable_room5_78"@23086
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[6]
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [8]

:[7]
push.s "obj_readable_room5_80"@23088
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
push.v self.x
pushi.e 208
cmp.i.v LT
bf [10]

:[9]
push.s "obj_readable_room5_82"@23089
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
pushbltn.v self.room
pushi.e 59
cmp.i.v EQ
bf [12]

:[11]
pushi.e 696
pop.v.i global.msc

:[12]
pushbltn.v self.room
pushi.e 141
cmp.i.v EQ
bf [23]

:[13]
push.s "obj_readable_room5_92"@23091
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 126
cmp.i.v LT
bf [15]

:[14]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v LT
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.s "obj_readable_room5_93"@23092
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
push.v self.y
pushi.e 125
cmp.i.v GTE
bf [20]

:[19]
push.v self.x
pushi.e 800
cmp.i.v GT
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 827
pop.v.i global.msc

:[23]
pushbltn.v self.room
pushi.e 142
cmp.i.v EQ
bf [38]

:[24]
push.v self.x
pushi.e 130
cmp.i.v LT
bf [26]

:[25]
push.s "obj_readable_room5_104"@23094
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_105"@23096
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[26]
push.v self.x
pushi.e 204
cmp.i.v LT
bf [28]

:[27]
push.v self.x
pushi.e 144
cmp.i.v GT
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
push.s "obj_readable_room5_110"@23098
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_111"@23100
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[31]
push.v self.x
pushi.e 575
cmp.i.v LT
bf [33]

:[32]
push.v self.x
pushi.e 474
cmp.i.v GT
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
push.s "obj_readable_room5_116"@23102
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[36]
push.v self.x
pushi.e 575
cmp.i.v GT
bf [38]

:[37]
pushi.e 647
pop.v.i global.msc

:[38]
pushbltn.v self.room
pushi.e 102
cmp.i.v EQ
bf [40]

:[39]
push.s "obj_readable_room5_126"@23104
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_127"@23106
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[40]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_readable_room5_131"@23108
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_132"@23110
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[42]
pushbltn.v self.room
pushi.e 74
cmp.i.v EQ
bf [44]

:[43]
push.s "obj_readable_room5_138"@23112
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_139"@23114
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room5_140"@23116
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[44]
pushbltn.v self.room
pushi.e 118
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_readable_room5_145"@23118
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_146"@23120
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[46]
pushbltn.v self.room
pushi.e 118
cmp.i.v EQ
bf [48]

:[47]
push.v self.x
pushi.e 80
cmp.i.v LT
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
pushi.e 5
pop.v.i global.facechoice
pushi.e 4
pop.v.i global.faceemotion
pushi.e 37
pop.v.i global.typer
push.s "obj_readable_room5_154"@23122
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_155"@23124
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[51]
pushbltn.v self.room
pushi.e 138
cmp.i.v EQ
bf [61]

:[52]
push.s "obj_readable_room5_160"@23126
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 353
push.v [array]global.flag
pushi.e 7
cmp.i.v GT
bf [54]

:[53]
push.s "obj_readable_room5_163"@23128
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[54]
pushi.e -5
pushi.e 353
push.v [array]global.flag
pushi.e 15
cmp.i.v GT
bf [56]

:[55]
push.s "obj_readable_room5_167"@23130
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[56]
pushi.e -5
pushi.e 353
push.v [array]global.flag
pushi.e 15
cmp.i.v GT
bf [58]

:[57]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
push.s "obj_readable_room5_171"@23132
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
pushbltn.v self.room
pushi.e 141
cmp.i.v EQ
bf [65]

:[62]
push.v self.x
pushi.e 828
cmp.i.v GT
bf [65]

:[63]
push.v self.x
pushi.e 868
cmp.i.v LT
bf [65]

:[64]
push.v self.y
pushi.e 90
cmp.i.v LT
b [66]

:[65]
push.e 0

:[66]
bf [68]

:[67]
push.s "obj_readable_room5_177"@23134
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[68]
pushbltn.v self.room
pushi.e 78
cmp.i.v EQ
bf [75]

:[69]
push.v self.x
pushi.e 128
cmp.i.v LT
bf [74]

:[70]
pushi.e -5
pushi.e 497
push.v [array]global.flag
pushi.e 3
cmp.i.v LT
bf [72]

:[71]
push.s "obj_readable_room5_186"@23136
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_187"@23138
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 3
pushi.e -5
pushi.e 497
pop.v.i [array]global.flag
b [73]

:[72]
push.s "obj_readable_room5_192"@23140
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[73]
b [75]

:[74]
push.s "obj_readable_room5_197"@23142
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[75]
pushbltn.v self.room
pushi.e 154
cmp.i.v EQ
bf [77]

:[76]
push.s "obj_readable_room5_203"@23144
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[77]
pushbltn.v self.room
pushi.e 335
cmp.i.v EQ
bf [102]

:[78]
pushi.e 0
pop.v.i global.msc
push.s "obj_readable_room5_209"@23146
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.dognumber
pushi.e 1
cmp.i.v EQ
bf [80]

:[79]
pushi.e 950
pop.v.i global.msc

:[80]
push.v self.dognumber
pushi.e 2
cmp.i.v EQ
bf [82]

:[81]
push.s "obj_readable_room5_216"@23148
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_217"@23150
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room5_218"@23152
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[82]
push.v self.dognumber
pushi.e 3
cmp.i.v EQ
bf [84]

:[83]
pushi.e 955
pop.v.i global.msc

:[84]
push.v self.dognumber
pushi.e 4
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_readable_room5_226"@23154
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_227"@23156
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[86]
push.v self.dognumber
pushi.e 5
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_readable_room5_231"@23158
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_232"@23160
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[88]
push.v self.dognumber
pushi.e 6
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_readable_room5_236"@23162
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_237"@23164
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[90]
push.v self.dognumber
pushi.e 7
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_readable_room5_241"@23165
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_242"@23167
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[92]
push.v self.dognumber
pushi.e 8
cmp.i.v EQ
bf [94]

:[93]
push.s "obj_readable_room5_246"@23169
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_247"@23171
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room5_248"@23173
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[94]
push.v self.dognumber
pushi.e 9
cmp.i.v EQ
bf [96]

:[95]
push.s "obj_readable_room5_252"@23175
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_253"@23177
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[96]
push.v self.dognumber
pushi.e 10
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_readable_room5_257"@23179
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_258"@23181
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room5_259"@23183
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room5_260"@23185
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[98]
push.v self.dognumber
pushi.e 11
cmp.i.v EQ
bf [100]

:[99]
push.s "obj_readable_room5_264"@23187
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_265"@23189
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[100]
push.v self.dognumber
pushi.e 12
cmp.i.v EQ
bf [102]

:[101]
push.s "obj_readable_room5_269"@23191
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room5_270"@23193
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room5_271"@23195
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room5_272"@23197
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[102]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]
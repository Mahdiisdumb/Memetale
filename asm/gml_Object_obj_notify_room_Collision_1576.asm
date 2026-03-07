.localvar 0 arguments

:[0]
push.v self.t
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 1
pop.v.i self.t
pushi.e -5
pushi.e 368
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.donotcall

:[6]
pushbltn.v self.room
pushi.e 161
cmp.i.v EQ
bf [10]

:[7]
pushi.e 754
pop.v.i global.msc
pushi.e -5
pushi.e 409
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.donotcall

:[9]
pushi.e 1
pushi.e -5
pushi.e 409
pop.v.i [array]global.flag

:[10]
pushbltn.v self.room
pushi.e 165
cmp.i.v EQ
bf [12]

:[11]
push.v self.ax
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [29]

:[14]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 25
cmp.i.v LT
bf [28]

:[15]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 24
cmp.i.v LT
bf [17]

:[16]
push.v self.ax
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
pop.v.i self.ax
push.s "obj_notify_room_112"@19125
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 24
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag

:[20]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 25
cmp.i.v LT
bf [22]

:[21]
push.v self.ax
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [27]

:[24]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
pop.v.i self.donotcall

:[26]
pushi.e 1
pop.v.i self.ax
push.s "obj_notify_room_120"@19127
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 25
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag

:[27]
b [29]

:[28]
pushi.e 1
pop.v.i self.donotcall

:[29]
pushbltn.v self.room
pushi.e 164
cmp.i.v EQ
bf [31]

:[30]
push.v self.ax
pushi.e 0
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [55]

:[33]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 23
cmp.i.v LT
bf [54]

:[34]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 21
cmp.i.v LT
bf [36]

:[35]
push.v self.ax
pushi.e 0
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 1
pop.v.i self.ax
push.s "obj_notify_room_142"@19129
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_notify_room_143"@19131
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 21
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag

:[39]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 22
cmp.i.v LT
bf [41]

:[40]
push.v self.ax
pushi.e 0
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [46]

:[43]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
pushi.e 1
pop.v.i self.donotcall

:[45]
pushi.e 1
pop.v.i self.ax
push.s "obj_notify_room_151"@19133
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 22
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag

:[46]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 23
cmp.i.v LT
bf [48]

:[47]
push.v self.ax
pushi.e 0
cmp.i.v EQ
b [49]

:[48]
push.e 0

:[49]
bf [53]

:[50]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
pushi.e 1
pop.v.i self.donotcall

:[52]
pushi.e 1
pop.v.i self.ax
push.s "obj_notify_room_159"@19135
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_notify_room_160"@19137
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 23
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag

:[53]
b [55]

:[54]
pushi.e 1
pop.v.i self.donotcall

:[55]
pushbltn.v self.room
pushi.e 163
cmp.i.v EQ
bf [57]

:[56]
push.v self.ax
pushi.e 0
cmp.i.v EQ
b [58]

:[57]
push.e 0

:[58]
bf [62]

:[59]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 20
cmp.i.v LT
bf [61]

:[60]
push.s "obj_notify_room_178"@19139
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 20
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag
b [62]

:[61]
pushi.e 1
pop.v.i self.donotcall

:[62]
pushbltn.v self.room
pushi.e 159
cmp.i.v EQ
bf [64]

:[63]
push.v self.ax
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [95]

:[66]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 19
cmp.i.v LT
bf [94]

:[67]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 16
cmp.i.v LT
bf [69]

:[68]
push.v self.ax
pushi.e 0
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushi.e 1
pop.v.i self.ax
push.s "obj_notify_room_197"@19141
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_notify_room_198"@19143
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 16
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag

:[72]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 17
cmp.i.v LT
bf [74]

:[73]
push.v self.ax
pushi.e 0
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [79]

:[76]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
pushi.e 1
pop.v.i self.donotcall

:[78]
pushi.e 1
pop.v.i self.ax
push.s "obj_notify_room_206"@19145
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_notify_room_207"@19147
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_notify_room_208"@19149
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_notify_room_209"@19151
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 17
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag

:[79]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 18
cmp.i.v LT
bf [81]

:[80]
push.v self.ax
pushi.e 0
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [86]

:[83]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
pushi.e 1
pop.v.i self.donotcall

:[85]
pushi.e 1
pop.v.i self.ax
push.s "obj_notify_room_217"@19153
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 18
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag

:[86]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 19
cmp.i.v LT
bf [88]

:[87]
push.v self.ax
pushi.e 0
cmp.i.v EQ
b [89]

:[88]
push.e 0

:[89]
bf [93]

:[90]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [92]

:[91]
pushi.e 1
pop.v.i self.donotcall

:[92]
pushi.e 1
pop.v.i self.ax
push.s "obj_notify_room_225"@19155
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 19
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag

:[93]
b [95]

:[94]
pushi.e 1
pop.v.i self.donotcall

:[95]
pushbltn.v self.room
pushi.e 153
cmp.i.v EQ
bf [99]

:[96]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 13
cmp.i.v LT
bf [98]

:[97]
push.s "obj_notify_room_243"@19157
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 13
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag
b [99]

:[98]
pushi.e 1
pop.v.i self.donotcall

:[99]
pushbltn.v self.room
pushi.e 151
cmp.i.v EQ
bf [101]

:[100]
push.v self.ax
pushi.e 0
cmp.i.v EQ
b [102]

:[101]
push.e 0

:[102]
bf [106]

:[103]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 12
cmp.i.v LT
bf [105]

:[104]
pushi.e 1
pop.v.i self.ax
push.s "obj_notify_room_258"@19159
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 12
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag
b [106]

:[105]
pushi.e 1
pop.v.i self.donotcall

:[106]
pushbltn.v self.room
pushi.e 148
cmp.i.v EQ
bf [108]

:[107]
push.v self.ax
pushi.e 0
cmp.i.v EQ
b [109]

:[108]
push.e 0

:[109]
bf [116]

:[110]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 11
cmp.i.v LT
bf [115]

:[111]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 10
cmp.i.v LT
bf [113]

:[112]
pushi.e 1
pop.v.i self.ax
push.s "obj_notify_room_279"@19161
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 10
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag
b [114]

:[113]
push.s "obj_notify_room_284"@19163
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_notify_room_285"@19165
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 11
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.ax

:[114]
b [116]

:[115]
pushi.e 1
pop.v.i self.donotcall

:[116]
pushbltn.v self.room
pushi.e 147
cmp.i.v EQ
bf [118]

:[117]
push.v self.ax
pushi.e 0
cmp.i.v EQ
b [119]

:[118]
push.e 0

:[119]
bf [126]

:[120]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 9
cmp.i.v LT
bf [125]

:[121]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 8
cmp.i.v LT
bf [123]

:[122]
pushi.e 1
pop.v.i self.ax
push.s "obj_notify_room_307"@19167
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_notify_room_308"@19169
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 8
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag
b [124]

:[123]
pushi.e 1
pop.v.i self.ax
push.s "obj_notify_room_314"@19171
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 9
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag

:[124]
b [126]

:[125]
pushi.e 1
pop.v.i self.donotcall

:[126]
pushbltn.v self.room
pushi.e 145
cmp.i.v EQ
bf [128]

:[127]
push.v self.ax
pushi.e 0
cmp.i.v EQ
b [129]

:[128]
push.e 0

:[129]
bf [136]

:[130]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 7
cmp.i.v LT
bf [135]

:[131]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 6
cmp.i.v LT
bf [133]

:[132]
pushi.e 1
pop.v.i self.ax
push.s "obj_notify_room_336"@19173
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 6
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag
b [134]

:[133]
pushi.e 1
pop.v.i self.ax
push.s "obj_notify_room_342"@19175
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_notify_room_343"@19177
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 7
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag

:[134]
b [136]

:[135]
pushi.e 1
pop.v.i self.donotcall

:[136]
pushbltn.v self.room
pushi.e 143
cmp.i.v EQ
bf [138]

:[137]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 3
cmp.i.v GT
b [139]

:[138]
push.e 0

:[139]
bf [141]

:[140]
pushi.e 1
pop.v.i self.donotcall

:[141]
pushbltn.v self.room
pushi.e 144
cmp.i.v EQ
bf [143]

:[142]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 4
cmp.i.v GT
b [144]

:[143]
push.e 0

:[144]
bf [146]

:[145]
pushi.e 1
pop.v.i self.donotcall

:[146]
pushbltn.v self.room
pushi.e 144
cmp.i.v EQ
bf [148]

:[147]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
b [149]

:[148]
push.e 0

:[149]
bf [151]

:[150]
push.s "obj_notify_room_372"@19179
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag

:[151]
pushbltn.v self.room
pushi.e 143
cmp.i.v EQ
bf [153]

:[152]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
b [154]

:[153]
push.e 0

:[154]
bf [156]

:[155]
push.s "obj_notify_room_378"@19181
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 4
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag

:[156]
pushbltn.v self.room
pushi.e 143
cmp.i.v EQ
bf [158]

:[157]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
b [159]

:[158]
push.e 0

:[159]
bf [161]

:[160]
push.s "obj_notify_room_385"@19183
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag

:[161]
pushbltn.v self.room
pushi.e 143
cmp.i.v EQ
bf [163]

:[162]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
b [164]

:[163]
push.e 0

:[164]
bf [166]

:[165]
push.s "obj_notify_room_391"@19185
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag

:[166]
pushbltn.v self.room
pushi.e 97
cmp.i.v EQ
bf [168]

:[167]
pushi.e -5
pushi.e 354
push.v [array]global.flag
pushi.e 1
cmp.i.v LT
b [169]

:[168]
push.e 0

:[169]
bf [172]

:[170]
push.s "obj_notify_room_398"@19186
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 354
pop.v.i [array]global.flag
pushi.e 1341
conv.i.v
pushi.e 40
conv.i.v
pushi.e 380
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 632
pop.v.i global.msc
pushi.e -5
pushi.e 368
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [172]

:[171]
pushi.e 1
pop.v.i self.donotcall

:[172]
push.v self.donotcall
pushi.e 0
cmp.i.v EQ
bf [174]

:[173]
pushi.e 104
conv.i.v
call.i snd_play(argc=1)
popz.v

:[174]
push.v self.donotcall
pushi.e 0
cmp.i.v EQ
bf [end]

:[175]
pushi.e 1340
conv.i.v
push.v 1576.y
pushi.e 10
sub.i.v
push.v 1576.x
call.i instance_create(argc=3)
pop.v.v self.mb
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact

:[end]
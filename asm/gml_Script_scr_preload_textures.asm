.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 235
cmp.i.v EQ
bt [9]

:[1]
pushbltn.v self.room
pushi.e 237
cmp.i.v EQ
bt [9]

:[2]
pushbltn.v self.room
pushi.e 306
cmp.i.v EQ
bf [7]

:[3]
pushi.e 483
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [5]

:[4]
pushi.e 479
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [6]

:[5]
push.e 1

:[6]
b [8]

:[7]
push.e 0

:[8]
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
pushi.e 646
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[12]
pushbltn.v self.room
pushi.e 330
cmp.i.v EQ
bt [20]

:[13]
pushbltn.v self.room
pushi.e 306
cmp.i.v EQ
bf [18]

:[14]
pushi.e 565
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [16]

:[15]
pushi.e 566
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [17]

:[16]
push.e 1

:[17]
b [19]

:[18]
push.e 0

:[19]
b [21]

:[20]
push.e 1

:[21]
bf [23]

:[22]
pushi.e 2472
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[23]
pushbltn.v self.room
pushi.e 4
cmp.i.v GTE
bf [25]

:[24]
pushbltn.v self.room
pushi.e 263
cmp.i.v LTE
b [26]

:[25]
push.e 0

:[26]
bt [35]

:[27]
pushbltn.v self.room
pushi.e 306
cmp.i.v GTE
bf [29]

:[28]
pushbltn.v self.room
pushi.e 309
cmp.i.v LTE
b [30]

:[29]
push.e 0

:[30]
bt [35]

:[31]
pushbltn.v self.room
pushi.e 310
cmp.i.v EQ
bt [35]

:[32]
pushbltn.v self.room
pushi.e 317
cmp.i.v EQ
bt [35]

:[33]
pushbltn.v self.room
pushi.e 318
cmp.i.v EQ
bt [35]

:[34]
pushbltn.v self.room
pushi.e 319
cmp.i.v EQ
b [36]

:[35]
push.e 1

:[36]
bf [38]

:[37]
pushi.e 5
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[38]
pushbltn.v self.room
pushi.e 306
cmp.i.v EQ
bf [40]

:[39]
pushi.e 520
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 681
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[43]
pushbltn.v self.room
pushi.e 134
cmp.i.v GTE
bf [45]

:[44]
pushbltn.v self.room
pushi.e 137
cmp.i.v LTE
b [46]

:[45]
push.e 0

:[46]
bt [54]

:[47]
pushbltn.v self.room
pushi.e 306
cmp.i.v EQ
bf [52]

:[48]
pushi.e 273
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [50]

:[49]
pushi.e 283
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [51]

:[50]
push.e 1

:[51]
b [53]

:[52]
push.e 0

:[53]
b [55]

:[54]
push.e 1

:[55]
bf [57]

:[56]
pushi.e 302
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[57]
pushbltn.v self.room
pushi.e 216
cmp.i.v GTE
bf [59]

:[58]
pushbltn.v self.room
pushi.e 240
cmp.i.v LTE
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 1981
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[62]
pushi.e 978
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v
pushbltn.v self.room
pushi.e 137
cmp.i.v GTE
bf [64]

:[63]
pushbltn.v self.room
pushi.e 215
cmp.i.v LTE
b [65]

:[64]
push.e 0

:[65]
bt [68]

:[66]
pushbltn.v self.room
pushi.e 313
cmp.i.v EQ
bt [68]

:[67]
pushbltn.v self.room
pushi.e 314
cmp.i.v EQ
b [69]

:[68]
push.e 1

:[69]
bf [71]

:[70]
pushi.e 977
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[71]
pushbltn.v self.room
pushi.e 242
cmp.i.v GTE
bf [73]

:[72]
pushbltn.v self.room
pushi.e 263
cmp.i.v LTE
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
pushi.e 2213
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[76]
pushbltn.v self.room
pushi.e 4
cmp.i.v GTE
bf [78]

:[77]
pushbltn.v self.room
pushi.e 43
cmp.i.v LTE
b [79]

:[78]
push.e 0

:[79]
bt [83]

:[80]
pushbltn.v self.room
pushi.e 236
cmp.i.v EQ
bt [83]

:[81]
pushbltn.v self.room
pushi.e 238
cmp.i.v EQ
bt [83]

:[82]
pushbltn.v self.room
pushi.e 240
cmp.i.v EQ
b [84]

:[83]
push.e 1

:[84]
bf [86]

:[85]
pushi.e 2021
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[86]
pushbltn.v self.room
pushi.e 44
cmp.i.v GTE
bf [88]

:[87]
pushbltn.v self.room
pushi.e 81
cmp.i.v LTE
b [89]

:[88]
push.e 0

:[89]
bt [95]

:[90]
pushbltn.v self.room
pushi.e 265
cmp.i.v GTE
bf [92]

:[91]
pushbltn.v self.room
pushi.e 266
cmp.i.v LTE
b [93]

:[92]
push.e 0

:[93]
bt [95]

:[94]
pushbltn.v self.room
pushi.e 311
cmp.i.v EQ
b [96]

:[95]
push.e 1

:[96]
bf [98]

:[97]
pushi.e 1271
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[98]
pushbltn.v self.room
pushi.e 81
cmp.i.v GTE
bf [100]

:[99]
pushbltn.v self.room
pushi.e 137
cmp.i.v LTE
b [101]

:[100]
push.e 0

:[101]
bt [105]

:[102]
pushbltn.v self.room
pushi.e 312
cmp.i.v EQ
bt [105]

:[103]
pushbltn.v self.room
pushi.e 315
cmp.i.v EQ
bt [105]

:[104]
pushbltn.v self.room
pushi.e 316
cmp.i.v EQ
b [106]

:[105]
push.e 1

:[106]
bf [108]

:[107]
pushi.e 1024
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[108]
pushbltn.v self.room
pushi.e 241
cmp.i.v EQ
bt [113]

:[109]
pushbltn.v self.room
pushi.e 278
cmp.i.v GTE
bf [111]

:[110]
pushbltn.v self.room
pushi.e 286
cmp.i.v LT
b [112]

:[111]
push.e 0

:[112]
b [114]

:[113]
push.e 1

:[114]
bf [116]

:[115]
pushi.e 2558
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[116]
pushbltn.v self.room
pushi.e 294
cmp.i.v EQ
bf [118]

:[117]
pushi.e 2383
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v
pushi.e 2293
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[118]
pushbltn.v self.room
pushi.e 294
cmp.i.v EQ
bf [120]

:[119]
pushi.e 2348
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[120]
pushbltn.v self.room
pushi.e 290
cmp.i.v GTE
bf [122]

:[121]
pushbltn.v self.room
pushi.e 295
cmp.i.v LTE
b [123]

:[122]
push.e 0

:[123]
bf [125]

:[124]
pushi.e 2364
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[125]
pushi.e 862
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [127]

:[126]
pushi.e 2581
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v
b [128]

:[127]
pushi.e 2580
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[128]
pushi.e 1131
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v
pushbltn.v self.room
pushi.e 3
cmp.i.v LTE
bt [139]

:[129]
pushbltn.v self.room
pushi.e 288
cmp.i.v GTE
bf [131]

:[130]
pushbltn.v self.room
pushi.e 289
cmp.i.v LTE
b [132]

:[131]
push.e 0

:[132]
bt [139]

:[133]
pushbltn.v self.room
pushi.e 290
cmp.i.v GTE
bf [135]

:[134]
pushbltn.v self.room
pushi.e 293
cmp.i.v LTE
b [136]

:[135]
push.e 0

:[136]
bt [139]

:[137]
pushbltn.v self.room
pushi.e 239
cmp.i.v EQ
bt [139]

:[138]
pushbltn.v self.room
pushi.e 286
cmp.i.v EQ
b [140]

:[139]
push.e 1

:[140]
bf [142]

:[141]
pushi.e 927
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[142]
pushbltn.v self.room
pushi.e 4
cmp.i.v GTE
bf [144]

:[143]
pushbltn.v self.room
pushi.e 263
cmp.i.v LTE
b [145]

:[144]
push.e 0

:[145]
bt [150]

:[146]
pushbltn.v self.room
pushi.e 306
cmp.i.v GTE
bf [148]

:[147]
pushbltn.v self.room
pushi.e 309
cmp.i.v LTE
b [149]

:[148]
push.e 0

:[149]
b [151]

:[150]
push.e 1

:[151]
bf [153]

:[152]
pushi.e 179
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[153]
pushi.e 1050
conv.i.v
call.i sprite_prefetch(argc=1)
popz.v

:[end]
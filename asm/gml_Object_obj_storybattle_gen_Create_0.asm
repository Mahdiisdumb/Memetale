.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.skipper
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "Tale"@49434
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.tale
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.tale
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.skipper

:[2]
pushi.e 0
pop.v.i self.off
pushi.e -6
pop.v.i self.activetimer
pushi.e 15
pop.v.i global.turntimer
pushi.e -1
pop.v.i global.myfight
pushi.e -1
pop.v.i global.mnfight
pushi.e 0
pop.v.i self.flowey
pushi.e 0
pop.v.i self.shake
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v LT
bf [40]

:[3]
pushi.e 15
pop.v.i global.turntimer
pushi.e -1
pop.v.i global.myfight
pushi.e -1
pop.v.i global.mnfight
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.hurtanim
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.hurtanim
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.hurtanim
pushi.e 2
pushi.e -5
pushi.e 0
pop.v.i [array]global.monstertype
pushi.e 2
pushi.e -5
pushi.e 1
pop.v.i [array]global.monstertype
pushi.e 2
pushi.e -5
pushi.e 2
pop.v.i [array]global.monstertype
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 5
pop.v.i self.con
pushi.e 214
conv.i.v
pushi.e 140
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m1
pushi.e 214
conv.i.v
pushi.e 140
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m2

:[5]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 10
pop.v.i self.con
pushi.e 207
conv.i.v
pushi.e 140
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m1
pushi.e 207
conv.i.v
pushi.e 140
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m2

:[7]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 15
pop.v.i self.con
pushi.e 213
conv.i.v
pushi.e 140
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m1
pushi.e 213
conv.i.v
pushi.e 140
conv.i.v
pushi.e 270
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m2
pushi.e 213
conv.i.v
pushi.e 140
conv.i.v
pushi.e 470
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m3

:[9]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
pushi.e 25
pop.v.i self.con
pushi.e 208
conv.i.v
pushi.e 140
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m1
pushi.e 208
conv.i.v
pushi.e 140
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m2

:[11]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [13]

:[12]
pushi.e 30
pop.v.i self.con
pushi.e 209
conv.i.v
pushi.e 140
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m1
pushi.e 209
conv.i.v
pushi.e 140
conv.i.v
pushi.e 270
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m2
pushi.e 209
conv.i.v
pushi.e 140
conv.i.v
pushi.e 470
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m3

:[13]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [15]

:[14]
pushi.e 40
pop.v.i self.con
pushi.e 210
conv.i.v
pushi.e 140
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m1
pushi.e 210
conv.i.v
pushi.e 140
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m2

:[15]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 6
cmp.i.v EQ
bf [17]

:[16]
pushi.e 50
pop.v.i self.con
pushi.e 253
conv.i.v
pushi.e 20
conv.i.v
pushi.e 50
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m1
pushi.e 253
conv.i.v
pushi.e 20
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m2

:[17]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 7
cmp.i.v EQ
bf [19]

:[18]
pushi.e 60
pop.v.i self.con
pushi.e 217
conv.i.v
pushi.e 110
conv.i.v
pushi.e 70
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m1
pushi.e 217
conv.i.v
pushi.e 110
conv.i.v
pushi.e 260
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m2
pushi.e 217
conv.i.v
pushi.e 110
conv.i.v
pushi.e 460
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m3

:[19]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 8
cmp.i.v EQ
bf [21]

:[20]
pushi.e 70
pop.v.i self.con
pushi.e 257
conv.i.v
pushi.e 140
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m1
pushi.e 257
conv.i.v
pushi.e 140
conv.i.v
pushi.e 270
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m2
pushi.e 257
conv.i.v
pushi.e 140
conv.i.v
pushi.e 470
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m3

:[21]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 9
cmp.i.v EQ
bf [23]

:[22]
pushi.e 80
pop.v.i self.con
pushi.e 260
conv.i.v
pushi.e 130
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m1
pushi.e 260
conv.i.v
pushi.e 130
conv.i.v
pushi.e 270
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m2
pushi.e 260
conv.i.v
pushi.e 130
conv.i.v
pushi.e 470
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m3

:[23]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 10
cmp.i.v EQ
bf [25]

:[24]
pushi.e 90
pop.v.i self.con
pushi.e 200
conv.i.v
pushi.e 140
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m1
pushi.e 200
conv.i.v
pushi.e 140
conv.i.v
pushi.e 270
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m2
pushi.e 200
conv.i.v
pushi.e 140
conv.i.v
pushi.e 470
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m3

:[25]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 11
cmp.i.v EQ
bf [27]

:[26]
pushi.e 100
pop.v.i self.con
pushi.e 379
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.monsterinstance
pushi.e 1
pop.v.i 379.myself
pushi.e 370
conv.i.v
pushi.e 80
conv.i.v
pushi.e 470
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.monsterinstance
pushi.e 1
pop.v.i 370.myself

:[27]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 12
cmp.i.v EQ
bf [29]

:[28]
pushi.e 110
pop.v.i self.con
pushi.e 386
conv.i.v
pushi.e 118
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.monsterinstance
pushi.e 386
conv.i.v
pushi.e 118
conv.i.v
pushi.e 270
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.monsterinstance
pushi.e 386
conv.i.v
pushi.e 118
conv.i.v
pushi.e 470
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 2
pop.v.v [array]global.monsterinstance

:[29]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 13
cmp.i.v EQ
bf [31]

:[30]
pushi.e 120
pop.v.i self.con
pushi.e 395
conv.i.v
pushi.e 140
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.monsterinstance
pushi.e 395
conv.i.v
pushi.e 140
conv.i.v
pushi.e 270
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.monsterinstance
pushi.e 395
conv.i.v
pushi.e 140
conv.i.v
pushi.e 470
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 2
pop.v.v [array]global.monsterinstance

:[31]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 14
cmp.i.v EQ
bf [33]

:[32]
pushi.e 130
pop.v.i self.con
pushi.e 388
conv.i.v
pushi.e 130
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.monsterinstance
pushi.e 388
conv.i.v
pushi.e 130
conv.i.v
pushi.e 270
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.monsterinstance
pushi.e 388
conv.i.v
pushi.e 130
conv.i.v
pushi.e 470
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 2
pop.v.v [array]global.monsterinstance

:[33]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 15
cmp.i.v EQ
bf [35]

:[34]
pushi.e 140
pop.v.i self.con
pushi.e 213
conv.i.v
pushi.e 160
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m1
pushi.e 210
conv.i.v
pushi.e 120
conv.i.v
pushi.e 270
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m2
pushi.e 208
conv.i.v
pushi.e 140
conv.i.v
pushi.e 470
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m3

:[35]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 16
cmp.i.v EQ
bf [37]

:[36]
pushi.e 150
pop.v.i self.con
pushi.e 344
conv.i.v
pushi.e 10
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]global.monsterinstance
pushi.e 338
conv.i.v
pushi.e 120
conv.i.v
pushi.e 200
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]global.monsterinstance
pushi.e 338
conv.i.v
pushi.e 120
conv.i.v
pushi.e 430
conv.i.v
call.i instance_create(argc=3)
pushi.e -5
pushi.e 2
pop.v.v [array]global.monsterinstance

:[37]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 17
cmp.i.v EQ
bf [39]

:[38]
pushi.e 160
pop.v.i self.con
pushi.e -45
pop.v.i self.activetimer
pushi.e 214
conv.i.v
pushi.e 120
conv.i.v
pushi.e 270
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m1

:[39]
b [end]

:[40]
pushi.e 1
pop.v.i self.flowey
pushi.e 0
pop.v.i self.shake
pushi.e 1
pop.v.i global.faceemotion
pushi.e 281
pop.v.i self.floweyx
pushi.e 134
pop.v.i self.floweyy
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e 299
pop.v.i self.con

:[42]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
pushi.e 304
pop.v.i self.con

:[44]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [46]

:[45]
pushi.e 309
pop.v.i self.con

:[46]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [48]

:[47]
pushi.e 314
pop.v.i self.con

:[48]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [50]

:[49]
pushi.e 319
pop.v.i self.con

:[50]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [52]

:[51]
pushi.e 324
pop.v.i self.con

:[52]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 6
cmp.i.v EQ
bf [54]

:[53]
pushi.e 329
pop.v.i self.con

:[54]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 7
cmp.i.v EQ
bf [56]

:[55]
pushi.e 334
pop.v.i self.con

:[56]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 8
cmp.i.v EQ
bf [58]

:[57]
pushi.e 339
pop.v.i self.con

:[58]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 9
cmp.i.v EQ
bf [60]

:[59]
pushi.e 344
pop.v.i self.con

:[60]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 10
cmp.i.v EQ
bf [62]

:[61]
pushi.e 349
pop.v.i self.con

:[62]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 11
cmp.i.v EQ
bf [64]

:[63]
pushi.e 354
pop.v.i self.con

:[64]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 12
cmp.i.v EQ
bf [66]

:[65]
pushi.e 359
pop.v.i self.con

:[66]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 13
cmp.i.v EQ
bf [68]

:[67]
pushi.e 364
pop.v.i self.con

:[68]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 14
cmp.i.v EQ
bf [70]

:[69]
pushi.e 369
pop.v.i self.con

:[70]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 15
cmp.i.v EQ
bf [72]

:[71]
pushi.e 374
pop.v.i self.con

:[72]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 16
cmp.i.v EQ
bf [74]

:[73]
pushi.e 379
pop.v.i self.con

:[74]
pushi.e -5
pushi.e 450
push.v [array]global.flag
pushi.e 17
cmp.i.v EQ
bf [end]

:[75]
pushi.e 389
pop.v.i self.con
pushi.e 10
pop.v.i global.faceemotion

:[end]
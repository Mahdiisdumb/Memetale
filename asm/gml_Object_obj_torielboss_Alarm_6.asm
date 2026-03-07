.localvar 0 arguments

:[0]
push.v self.hplastturn
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
cmp.v.v EQ
bf [2]

:[1]
pushglb.v global.talked
pushi.e -1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.conversation
pushi.e 1
add.i.v
pop.v.v self.conversation
pushi.e 1
pop.v.i self.iwilltalk
b [6]

:[5]
pushi.e 0
pop.v.i self.iwilltalk

:[6]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pop.v.v self.hplastturn
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 0
cmp.i.v GT
bf [86]

:[7]
push.v self.iwilltalk
pushi.e 1
cmp.i.v EQ
bf [85]

:[8]
pushi.e -300
pop.v.i global.turntimer
pushi.e -1
pushi.e 5
dup.i 1
push.v [array]self.alarm
pushi.e 70
add.i.v
pop.i.v [array]self.alarm
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_torielboss_366"@27302
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
push.s "obj_torielboss_367"@27304
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
push.v self.conversation
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
push.s "obj_torielboss_368"@27306
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[14]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
bf [16]

:[15]
push.s "obj_torielboss_369"@27308
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[16]
push.v self.conversation
pushi.e 5
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_torielboss_370"@27310
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
push.v self.conversation
pushi.e 6
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_torielboss_371"@27312
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
push.v self.conversation
pushi.e 7
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_torielboss_372"@27314
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[22]
push.v self.conversation
pushi.e 8
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_torielboss_373"@27316
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
push.v self.conversation
pushi.e 9
cmp.i.v EQ
bf [26]

:[25]
push.s "obj_torielboss_374"@27318
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[26]
push.v self.conversation
pushi.e 10
cmp.i.v EQ
bf [28]

:[27]
pushi.e 1
pop.v.i self.sideface

:[28]
push.v self.conversation
pushi.e 10
cmp.i.v EQ
bf [30]

:[29]
push.s "obj_torielboss_376"@27320
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[30]
push.v self.conversation
pushi.e 11
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_torielboss_377"@27322
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
push.v self.conversation
pushi.e 12
cmp.i.v EQ
bf [34]

:[33]
push.s "obj_torielboss_378"@27324
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[34]
push.v self.conversation
pushi.e 12
cmp.i.v EQ
bf [36]

:[35]
pushi.e 759
pop.v.i self.sprite_index

:[36]
push.v self.conversation
pushi.e 13
cmp.i.v EQ
bf [38]

:[37]
push.s "obj_torielboss_380"@27326
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[38]
push.v self.conversation
pushi.e 13
cmp.i.v EQ
bf [40]

:[39]
pushi.e 754
pop.v.i self.sprite_index

:[40]
push.v self.conversation
pushi.e 13
cmp.i.v GT
bf [82]

:[41]
pushi.e -1
pushi.e 5
dup.i 1
push.v [array]self.alarm
pushi.e 400
add.i.v
pop.i.v [array]self.alarm
push.v self.conversation
pushi.e 14
cmp.i.v EQ
bf [43]

:[42]
pushglb.v global.batmusic
call.i caster_free(argc=1)
popz.v

:[43]
pushi.e 1
pop.v.i global.mercy
push.v self.conversation
pushi.e 14
cmp.i.v EQ
bf [45]

:[44]
pushi.e 752
pop.v.i self.sprite_index

:[45]
push.v self.conversation
pushi.e 14
cmp.i.v EQ
bf [47]

:[46]
push.s "obj_torielboss_388"@27328
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[47]
push.v self.conversation
pushi.e 15
cmp.i.v GT
bf [49]

:[48]
pushi.e 751
pop.v.i self.sprite_index

:[49]
push.v self.conversation
pushi.e 15
cmp.i.v EQ
bf [51]

:[50]
push.s "obj_torielboss_390"@27330
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[51]
push.v self.conversation
pushi.e 16
cmp.i.v EQ
bf [53]

:[52]
push.s "obj_torielboss_391"@27332
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[53]
push.v self.conversation
pushi.e 17
cmp.i.v EQ
bf [55]

:[54]
push.s "obj_torielboss_392"@27334
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[55]
push.v self.conversation
pushi.e 18
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_torielboss_393"@27336
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[57]
push.v self.conversation
pushi.e 19
cmp.i.v EQ
bf [59]

:[58]
pushi.e 752
pop.v.i self.sprite_index

:[59]
push.v self.conversation
pushi.e 19
cmp.i.v EQ
bf [61]

:[60]
push.s "obj_torielboss_395"@27338
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[61]
push.v self.conversation
pushi.e 20
cmp.i.v EQ
bf [63]

:[62]
pushi.e 754
pop.v.i self.sprite_index

:[63]
push.v self.conversation
pushi.e 20
cmp.i.v EQ
bf [65]

:[64]
push.s "obj_torielboss_397"@27340
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[65]
push.v self.conversation
pushi.e 21
cmp.i.v EQ
bf [67]

:[66]
pushi.e 756
pop.v.i self.sprite_index

:[67]
push.v self.conversation
pushi.e 21
cmp.i.v EQ
bf [69]

:[68]
push.s "obj_torielboss_399"@27342
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[69]
push.v self.conversation
pushi.e 22
cmp.i.v EQ
bf [71]

:[70]
pushi.e 757
pop.v.i self.sprite_index

:[71]
push.v self.conversation
pushi.e 22
cmp.i.v EQ
bf [73]

:[72]
push.s "obj_torielboss_401"@27344
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[73]
push.v self.conversation
pushi.e 23
cmp.i.v EQ
bf [75]

:[74]
push.s "obj_torielboss_402"@27346
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[75]
push.v self.conversation
pushi.e 24
cmp.i.v EQ
bf [77]

:[76]
push.s "obj_torielboss_403"@27347
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[77]
push.v self.conversation
pushi.e 24
cmp.i.v EQ
bf [79]

:[78]
pushi.e 754
pop.v.i self.sprite_index

:[79]
push.v self.conversation
pushi.e 25
cmp.i.v EQ
bf [81]

:[80]
pushi.e 1
pushi.e -5
pushi.e 27
pop.v.i [array]global.flag
pushi.e 755
pop.v.i self.sprite_index
pushi.e -6
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 99
pop.v.i self.conversation
pushi.e 5
pushi.e -5
pushi.e 45
pop.v.i [array]global.flag
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "TS"@47565
conv.s.v
push.s "Toriel"@237
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.TS
push.v self.TS
pushi.e 1
add.i.v
push.s "TS"@47565
conv.s.v
push.s "Toriel"@237
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
push.s "obj_torielboss_416"@27349
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torielboss_417"@27351
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torielboss_418"@27353
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_torielboss_419"@27355
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_torielboss_420"@27357
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_torielboss_421"@27359
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 99
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.myfight

:[81]
pushi.e 188
conv.i.v
push.v self.y
pushi.e 32
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 3
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 8
pop.v.i global.typer
pushi.e 786
conv.i.v
push.v 188.y
pushi.e 10
add.i.v
push.v 188.x
pushi.e 36
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
b [83]

:[82]
pushi.e 187
conv.i.v
push.v self.ystart
pushi.e 24
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 21
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon

:[83]
pushi.e 8
pop.v.i global.typer
pushi.e 187
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [85]

:[84]
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[85]
b [95]

:[86]
pushi.e 1
pop.v.i self.destroyed
pushi.e 0
pop.v.i global.faceemotion
pushglb.v global.batmusic
call.i caster_free(argc=1)
popz.v
push.v self.dmgwriter
call.i instance_exists(argc=1)
conv.v.b
bf [90]

:[87]
push.v self.dmgwriter
conv.v.i
pushenv [89]

:[88]
call.i instance_destroy(argc=0)
popz.v

:[89]
popenv [88]

:[90]
pushi.e 188
conv.i.v
push.v self.y
pushi.e 36
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 2
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 0
pop.v.i global.msc
push.s "obj_torielboss_445"@27361
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torielboss_446"@27363
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torielboss_447"@27365
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_torielboss_448"@27367
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_torielboss_449"@27369
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_torielboss_450"@27371
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_torielboss_451"@27373
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_torielboss_452"@27375
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_torielboss_453"@27377
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_torielboss_454"@27379
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_torielboss_455"@27381
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_torielboss_456"@27383
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e -5
pushi.e 202
push.v [array]global.flag
pushi.e 20
cmp.i.v GTE
bf [92]

:[91]
pushi.e 4
pop.v.i global.faceemotion
push.s "obj_torielboss_460"@27385
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torielboss_461"@27387
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torielboss_462"@27389
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_torielboss_463"@27391
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_torielboss_464"@27393
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[92]
push.v self.conversation
pushi.e 13
cmp.i.v GT
bf [94]

:[93]
pushi.e 4
pop.v.i global.faceemotion
push.s "obj_torielboss_469"@27395
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torielboss_470"@27397
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torielboss_471"@27399
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_torielboss_472"@27401
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_torielboss_473"@27402
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[94]
pushi.e 11
pop.v.i global.plot
pushi.e 1
pop.v.i self.conversation
push.d 0.2
pop.v.d self.image_speed
pushi.e 12
pop.v.i global.typer
pushi.e 784
conv.i.v
push.v 188.y
pushi.e 10
add.i.v
push.v 188.x
pushi.e 36
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwriter
pushi.e 2
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm

:[95]
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
pushi.e 6
pop.v.i global.border
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.y

:[end]
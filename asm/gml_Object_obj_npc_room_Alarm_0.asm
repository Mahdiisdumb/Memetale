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
pushbltn.v self.room
pushi.e 224
cmp.i.v EQ
bf [9]

:[1]
push.v self.x
pushi.e -10
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
add.v.i
cmp.v.v LTE
bf [5]

:[2]
pushi.e -5
pushi.e 114
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 268
pop.v.i global.msc
b [5]

:[4]
pushi.e 272
pop.v.i global.msc

:[5]
push.v self.x
pushi.e -10
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
add.v.i
cmp.v.v GTE
bf [9]

:[6]
pushi.e -5
pushi.e 115
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 270
pop.v.i global.msc
b [9]

:[8]
pushi.e 272
pop.v.i global.msc

:[9]
pushbltn.v self.room
pushi.e 225
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_npc_room_271"@19188
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_272"@19190
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[11]
pushbltn.v self.room
pushi.e 223
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_npc_room_277"@19192
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[13]
pushbltn.v self.room
pushi.e 83
cmp.i.v EQ
bf [18]

:[14]
push.s "obj_npc_room_282"@19193
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [16]

:[15]
push.s "obj_npc_room_283"@19194
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[16]
push.v 1160.v
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_npc_room_284"@19195
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
pushbltn.v self.room
pushi.e 89
cmp.i.v EQ
bf [20]

:[19]
pushi.e 246
pop.v.i global.msc

:[20]
pushbltn.v self.room
pushi.e 85
cmp.i.v EQ
bf [22]

:[21]
pushi.e 248
pop.v.i global.msc

:[22]
pushbltn.v self.room
pushi.e 94
cmp.i.v EQ
bf [25]

:[23]
push.s "obj_npc_room_291"@19197
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_292"@19198
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
bf [25]

:[24]
push.s "obj_npc_room_295"@19200
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[25]
pushbltn.v self.room
pushi.e 95
cmp.i.v EQ
bf [32]

:[26]
push.s "obj_npc_room_300"@19202
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_301"@19204
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_302"@19206
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_303"@19208
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_room_304"@19209
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_npc_room_305"@19211
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.s "obj_npc_room_308"@19213
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
push.s "obj_npc_room_313"@19215
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_314"@19217
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[30]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_npc_room_319"@19219
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_320"@19221
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[32]
pushbltn.v self.room
pushi.e 96
cmp.i.v EQ
bf [34]

:[33]
pushi.e 250
pop.v.i global.msc

:[34]
pushbltn.v self.room
pushi.e 98
cmp.i.v EQ
bf [36]

:[35]
pushi.e 252
pop.v.i global.msc

:[36]
push.v self.sprite_index
pushi.e 1720
cmp.i.v EQ
bf [38]

:[37]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_npc_room_334"@19223
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_335"@19224
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_336"@19226
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_337"@19228
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_room_338"@19230
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_npc_room_339"@19231
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_npc_room_340"@19233
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_npc_room_341"@19234
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_npc_room_342"@19235
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_npc_room_343"@19236
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_npc_room_344"@19238
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_npc_room_345"@19239
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_npc_room_346"@19240
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_npc_room_347"@19241
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_npc_room_348"@19243
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_npc_room_349"@19244
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_npc_room_350"@19245
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_npc_room_351"@19246
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_npc_room_352"@19248
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_npc_room_353"@19249
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_npc_room_354"@19251
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_npc_room_355"@19252
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_npc_room_356"@19254
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg

:[38]
pushbltn.v self.room
pushi.e 304
cmp.i.v EQ
bf [40]

:[39]
pushi.e 580
pop.v.i global.msc

:[40]
pushbltn.v self.room
pushi.e 117
cmp.i.v EQ
bf [45]

:[41]
push.s "obj_npc_room_368"@19256
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_369"@19258
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
bf [43]

:[42]
push.s "obj_npc_room_372"@19260
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_373"@19262
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[43]
call.i scr_murderlv(argc=0)
pushi.e 9
cmp.i.v GTE
bf [45]

:[44]
push.s "obj_npc_room_377"@19264
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_378"@19266
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[45]
pushbltn.v self.room
pushi.e 122
cmp.i.v EQ
bf [48]

:[46]
push.s "obj_npc_room_384"@19268
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_385"@19270
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
bf [48]

:[47]
push.s "obj_npc_room_388"@19271
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_389"@19273
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[48]
pushbltn.v self.room
pushi.e 149
cmp.i.v EQ
bf [62]

:[49]
push.s "obj_npc_room_406"@19275
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_407"@19277
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [51]

:[50]
push.s "obj_npc_room_409"@19279
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[51]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
push.s "obj_npc_room_417"@19281
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_418"@19283
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[53]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
push.s "obj_npc_room_423"@19285
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_424"@19287
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[55]
push.v self.id
pushi.e 1
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
cmp.v.v EQ
bf [62]

:[56]
push.s "obj_npc_room_430"@19289
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_431"@19291
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [58]

:[57]
push.s "obj_npc_room_434"@19293
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[58]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
push.s "obj_npc_room_436"@19295
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
push.s "obj_npc_room_440"@19297
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
pushbltn.v self.room
pushi.e 151
cmp.i.v EQ
bf [76]

:[63]
push.s "obj_npc_room_451"@19299
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_452"@19301
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [65]

:[64]
push.s "obj_npc_room_454"@19303
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[65]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
push.s "obj_npc_room_458"@19305
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_459"@19307
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[67]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [69]

:[68]
push.s "obj_npc_room_464"@19309
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_465"@19311
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[69]
push.v self.id
pushi.e 1
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
cmp.v.v EQ
bf [76]

:[70]
push.s "obj_npc_room_470"@19313
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_471"@19315
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [72]

:[71]
push.s "obj_npc_room_474"@19317
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[72]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.s "obj_npc_room_478"@19319
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_479"@19321
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[74]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
push.s "obj_npc_room_484"@19323
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_485"@19325
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[76]
pushbltn.v self.room
pushi.e 146
cmp.i.v EQ
bf [78]

:[77]
pushi.e 260
pop.v.i global.msc

:[78]
pushbltn.v self.room
pushi.e 161
cmp.i.v EQ
bf [80]

:[79]
pushi.e 262
pop.v.i global.msc

:[80]
pushbltn.v self.room
pushi.e 164
cmp.i.v EQ
bf [83]

:[81]
push.s "obj_npc_room_508"@19327
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_509"@19329
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
bf [83]

:[82]
push.s "obj_npc_room_513"@19331
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[83]
pushbltn.v self.room
pushi.e 118
cmp.i.v EQ
bf [86]

:[84]
pushi.e 5
pop.v.i global.facechoice
pushi.e 9
pop.v.i global.faceemotion
pushi.e 37
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_npc_room_523"@19333
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_524"@19335
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [86]

:[85]
push.s "obj_npc_room_527"@19337
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[86]
pushbltn.v self.room
pushi.e 170
cmp.i.v EQ
bf [93]

:[87]
push.s "obj_npc_room_534"@19339
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_535"@19341
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_536"@19343
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_537"@19345
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [89]

:[88]
push.s "obj_npc_room_540"@19347
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[89]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [91]

:[90]
push.s "obj_npc_room_545"@19349
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_546"@19351
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[91]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [93]

:[92]
push.s "obj_npc_room_551"@19352
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[93]
pushbltn.v self.room
pushi.e 206
cmp.i.v EQ
bf [95]

:[94]
pushi.e 264
pop.v.i global.msc

:[95]
pushbltn.v self.room
pushi.e 207
cmp.i.v EQ
bf [97]

:[96]
pushi.e 266
pop.v.i global.msc

:[97]
pushbltn.v self.room
pushi.e 238
cmp.i.v EQ
bf [99]

:[98]
push.s "obj_npc_room_568"@19354
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[99]
pushbltn.v self.room
pushi.e 139
cmp.i.v EQ
bf [103]

:[100]
push.v self.y
pushi.e 70
cmp.i.v LT
bf [103]

:[101]
push.s "obj_npc_room_580"@19355
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [103]

:[102]
push.s "obj_npc_room_582"@19357
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[103]
pushbltn.v self.room
pushi.e 251
cmp.i.v EQ
bf [105]

:[104]
push.s "obj_npc_room_588"@19359
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[105]
pushbltn.v self.room
pushi.e 78
cmp.i.v EQ
bf [107]

:[106]
push.s "obj_npc_room_593"@19361
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_594"@19363
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[107]
pushbltn.v self.room
pushi.e 181
cmp.i.v EQ
bf [109]

:[108]
push.s "obj_npc_room_599"@19365
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[109]
pushbltn.v self.room
pushi.e 48
cmp.i.v EQ
bf [111]

:[110]
push.s "obj_npc_room_604"@19367
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[111]
pushbltn.v self.room
pushi.e 119
cmp.i.v EQ
bf [119]

:[112]
pushi.e 27
pop.v.i global.typer
pushi.e 8
pop.v.i global.facechoice
pushi.e -5
pushi.e 198
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [114]

:[113]
push.s "obj_npc_room_615"@19369
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_616"@19371
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_617"@19373
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_618"@19375
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_room_619"@19377
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_npc_room_620"@19379
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_npc_room_621"@19381
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_npc_room_622"@19383
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_npc_room_623"@19385
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_npc_room_624"@19387
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_npc_room_625"@19389
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_npc_room_626"@19391
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_npc_room_627"@19393
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg

:[114]
pushi.e -5
pushi.e 198
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [116]

:[115]
push.s "obj_npc_room_631"@19395
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_632"@19397
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_633"@19399
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_634"@19401
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_npc_room_635"@19403
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_npc_room_636"@19405
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_npc_room_638"@19407
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_npc_room_640"@19409
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_npc_room_641"@19410
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_npc_room_642"@19411
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_npc_room_644"@19413
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_npc_room_645"@19415
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_npc_room_646"@19417
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg

:[116]
pushi.e -5
pushi.e 198
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [118]

:[117]
push.s "obj_npc_room_651"@19419
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_652"@19421
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_653"@19423
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[118]
pushi.e -5
pushi.e 198
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[119]
pushbltn.v self.room
pushi.e 266
cmp.i.v EQ
bf [121]

:[120]
push.s "obj_npc_room_662"@19425
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_663"@19427
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[121]
pushbltn.v self.room
pushi.e 184
cmp.i.v EQ
bf [148]

:[122]
push.s "obj_npc_room_669"@19429
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_670"@19431
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
bf [124]

:[123]
push.s "obj_npc_room_674"@19433
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[124]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
push.s "obj_npc_room_679"@19435
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_680"@19437
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_681"@19439
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[126]
push.v self.x
pushi.e 120
cmp.i.v LT
bf [131]

:[127]
push.s "obj_npc_room_686"@19441
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_687"@19443
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_688"@19445
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
bf [129]

:[128]
push.s "obj_npc_room_692"@19447
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_693"@19449
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_694"@19451
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[129]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [131]

:[130]
push.s "obj_npc_room_699"@19453
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_700"@19455
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[131]
push.v self.y
pushi.e 120
cmp.i.v GT
bf [148]

:[132]
push.v self.x
pushi.e 600
cmp.i.v GT
bf [134]

:[133]
push.v self.x
pushi.e 660
cmp.i.v LT
b [135]

:[134]
push.e 0

:[135]
bf [140]

:[136]
push.s "obj_npc_room_709"@19457
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_710"@19459
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_711"@19461
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
bf [138]

:[137]
push.s "obj_npc_room_715"@19463
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_716"@19465
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[138]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [140]

:[139]
push.s "obj_npc_room_721"@19467
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_722"@19469
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[140]
push.v self.x
pushi.e 510
cmp.i.v GT
bf [142]

:[141]
push.v self.x
pushi.e 540
cmp.i.v LT
b [143]

:[142]
push.e 0

:[143]
bf [148]

:[144]
push.s "obj_npc_room_728"@19471
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_729"@19473
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_730"@19475
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
bf [146]

:[145]
push.s "obj_npc_room_734"@19477
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_735"@19479
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[146]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [148]

:[147]
push.s "obj_npc_room_740"@19481
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_741"@19483
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_742"@19485
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[148]
pushbltn.v self.room
pushi.e 178
cmp.i.v EQ
bf [153]

:[149]
push.s "obj_npc_room_751"@19487
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_752"@19489
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
bf [151]

:[150]
push.s "obj_npc_room_756"@19491
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_757"@19493
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[151]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [153]

:[152]
push.s "obj_npc_room_762"@19495
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[153]
pushbltn.v self.room
pushi.e 183
cmp.i.v EQ
bf [158]

:[154]
push.s "obj_npc_room_769"@19497
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_770"@19499
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_771"@19501
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
bf [156]

:[155]
push.s "obj_npc_room_775"@19503
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_776"@19505
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[156]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [158]

:[157]
push.s "obj_npc_room_781"@19507
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_782"@19509
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_783"@19511
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_npc_room_784"@19513
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[158]
pushbltn.v self.room
pushi.e 158
cmp.i.v EQ
bf [166]

:[159]
push.v self.x
pushi.e 170
cmp.i.v GT
bf [165]

:[160]
push.s "obj_npc_room_792"@19515
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_793"@19517
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_794"@19519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1024
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [162]

:[161]
push.s "obj_npc_room_798"@19520
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_799"@19522
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_800"@19524
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[162]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [164]

:[163]
push.s "obj_npc_room_805"@19526
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_npc_room_806"@19528
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_npc_room_807"@19530
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[164]
b [166]

:[165]
push.s "obj_npc_room_812"@19532
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[166]
pushbltn.v self.room
pushi.e 128
cmp.i.v EQ
bf [168]

:[167]
push.s "obj_npc_room_817"@19534
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[168]
pushbltn.v self.room
pushi.e 113
cmp.i.v EQ
bf [173]

:[169]
pushi.e -5
pushi.e 296
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [171]

:[170]
pushi.e 952
pop.v.i global.msc

:[171]
pushi.e -5
pushi.e 296
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [173]

:[172]
pushi.e 960
pop.v.i global.msc

:[173]
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
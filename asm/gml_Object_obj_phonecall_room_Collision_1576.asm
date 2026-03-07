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
pushbltn.v self.room
pushi.e 196
cmp.i.v EQ
bf [6]

:[5]
pushglb.v global.plot
pushi.e 185
cmp.i.v LT
b [7]

:[6]
push.e 0

:[7]
bf [10]

:[8]
pushi.e 185
pop.v.i global.plot
pushi.e 1
pushi.e -5
pushi.e 416
pop.v.i [array]global.flag
push.s "obj_phonecall_room_161"@21362
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_162"@21363
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_163"@21365
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_164"@21367
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_165"@21369
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_166"@21371
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_167"@21373
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_168"@21375
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_phonecall_room_169"@21377
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_phonecall_room_170"@21378
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_phonecall_room_171"@21379
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.donotcall

:[10]
pushbltn.v self.room
pushi.e 195
cmp.i.v EQ
bf [12]

:[11]
pushglb.v global.plot
pushi.e 183
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [16]

:[14]
pushi.e 183
pop.v.i global.plot
pushi.e 10
pop.v.i 1256.con
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.i self.donotcall

:[16]
pushbltn.v self.room
pushi.e 193
cmp.i.v EQ
bf [19]

:[17]
pushi.e -5
pushi.e 416
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.v self.x
pushi.e 140
cmp.i.v GT
b [20]

:[19]
push.e 0

:[20]
bf [23]

:[21]
pushi.e 1
pushi.e -5
pushi.e 416
pop.v.i [array]global.flag
push.s "obj_phonecall_room_190"@21380
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_191"@21381
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_192"@21383
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_193"@21384
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_194"@21385
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1
pop.v.i self.donotcall

:[23]
pushbltn.v self.room
pushi.e 193
cmp.i.v EQ
bf [26]

:[24]
pushglb.v global.plot
pushi.e 182
cmp.i.v LT
bf [26]

:[25]
push.v self.x
pushi.e 140
cmp.i.v LT
b [27]

:[26]
push.e 0

:[27]
bf [30]

:[28]
pushi.e 182
pop.v.i global.plot
push.s "obj_phonecall_room_202"@21386
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_203"@21387
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_204"@21389
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_205"@21391
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_206"@21393
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_207"@21394
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_phonecall_room_208"@21395
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i self.donotcall

:[30]
pushbltn.v self.room
pushi.e 192
cmp.i.v EQ
bf [32]

:[31]
pushglb.v global.plot
pushi.e 180
cmp.i.v LT
b [33]

:[32]
push.e 0

:[33]
bf [36]

:[34]
pushi.e 180
pop.v.i global.plot
push.s "obj_phonecall_room_218"@21396
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_219"@21397
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_220"@21399
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_221"@21401
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_222"@21403
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_223"@21405
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_phonecall_room_224"@21407
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_phonecall_room_225"@21408
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_phonecall_room_226"@21409
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1
pop.v.i self.donotcall

:[36]
pushbltn.v self.room
pushi.e 190
cmp.i.v EQ
bf [38]

:[37]
pushi.e -5
pushi.e 415
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [46]

:[40]
push.s "obj_phonecall_room_234"@21410
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_235"@21411
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_236"@21413
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_237"@21414
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_238"@21416
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_239"@21418
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_phonecall_room_240"@21419
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_phonecall_room_241"@21420
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e -5
pushi.e 414
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_phonecall_room_245"@21421
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_246"@21422
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_247"@21424
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_248"@21426
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_249"@21427
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_250"@21429
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_phonecall_room_251"@21430
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_phonecall_room_252"@21431
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[42]
pushglb.v global.plot
pushi.e 178
cmp.i.v GT
bf [44]

:[43]
push.s "obj_phonecall_room_259"@21432
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_260"@21433
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_261"@21435
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_262"@21437
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_263"@21438
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_264"@21439
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[44]
pushi.e 1
pushi.e -5
pushi.e 415
pop.v.i [array]global.flag
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
pushi.e 1
pop.v.i self.donotcall

:[46]
pushbltn.v self.room
pushi.e 189
cmp.i.v EQ
bf [48]

:[47]
pushglb.v global.plot
pushi.e 177
cmp.i.v LT
b [49]

:[48]
push.e 0

:[49]
bf [52]

:[50]
pushi.e 177
pop.v.i global.plot
push.s "obj_phonecall_room_275"@21440
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_276"@21441
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_277"@21443
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_278"@21445
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_279"@21446
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_280"@21447
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
pushi.e 1
pop.v.i self.donotcall

:[52]
pushbltn.v self.room
pushi.e 172
cmp.i.v EQ
bf [58]

:[53]
pushi.e -5
pushi.e 369
push.v [array]global.flag
pushi.e 26
cmp.i.v LT
bf [57]

:[54]
pushi.e 26
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag
pushi.e 837
pop.v.i global.msc
push.s "obj_phonecall_room_290"@21449
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1
pop.v.i self.donotcall

:[56]
b [58]

:[57]
pushi.e 1
pop.v.i self.donotcall

:[58]
pushbltn.v self.room
pushi.e 171
cmp.i.v EQ
bf [64]

:[59]
pushglb.v global.plot
pushi.e 163
cmp.i.v LT
bf [63]

:[60]
pushi.e 163
pop.v.i global.plot
push.s "obj_phonecall_room_302"@21450
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_303"@21451
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_304"@21453
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_305"@21455
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_306"@21457
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_307"@21459
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_phonecall_room_308"@21460
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_phonecall_room_309"@21462
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_phonecall_room_310"@21464
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_phonecall_room_311"@21466
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_phonecall_room_312"@21468
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_phonecall_room_313"@21470
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_phonecall_room_314"@21472
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_phonecall_room_315"@21473
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_phonecall_room_316"@21475
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_phonecall_room_317"@21477
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_phonecall_room_318"@21479
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_phonecall_room_319"@21481
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_phonecall_room_320"@21482
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_phonecall_room_321"@21483
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
pushi.e 1
pop.v.i self.donotcall

:[62]
b [64]

:[63]
pushi.e 1
pop.v.i self.donotcall

:[64]
pushbltn.v self.room
pushi.e 167
cmp.i.v EQ
bf [70]

:[65]
pushglb.v global.plot
pushi.e 162
cmp.i.v LT
bf [69]

:[66]
pushi.e 162
pop.v.i global.plot
pushi.e 684
pop.v.i global.msc
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
pushi.e 1
pop.v.i self.donotcall

:[68]
b [70]

:[69]
pushi.e 1
pop.v.i self.donotcall

:[70]
pushbltn.v self.room
pushi.e 163
cmp.i.v EQ
bf [76]

:[71]
pushglb.v global.plot
pushi.e 143
cmp.i.v LT
bf [75]

:[72]
pushi.e 0
pop.v.i global.msc
pushi.e 143
pop.v.i global.plot
push.s "obj_phonecall_room_353"@21484
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_354"@21485
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_355"@21487
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_356"@21489
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_357"@21491
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_358"@21492
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_phonecall_room_359"@21493
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
pushi.e 1
pop.v.i self.donotcall

:[74]
b [76]

:[75]
pushi.e 1
pop.v.i self.donotcall

:[76]
pushbltn.v self.room
pushi.e 155
cmp.i.v EQ
bf [78]

:[77]
pushglb.v global.plot
pushi.e 137
cmp.i.v LT
b [79]

:[78]
push.e 0

:[79]
bf [85]

:[80]
pushglb.v global.plot
pushi.e 137
cmp.i.v LT
bf [82]

:[81]
pushi.e 0
pop.v.i global.msc
push.s "obj_phonecall_room_372"@21494
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_373"@21495
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_374"@21497
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_375"@21499
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_376"@21501
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_377"@21503
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_phonecall_room_378"@21505
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_phonecall_room_379"@21507
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_phonecall_room_380"@21508
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_phonecall_room_381"@21509
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 137
pop.v.i global.plot
b [83]

:[82]
pushi.e 1
pop.v.i self.donotcall

:[83]
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
pushi.e 1
pop.v.i self.donotcall

:[85]
pushbltn.v self.room
pushi.e 153
cmp.i.v EQ
bf [87]

:[86]
pushglb.v global.plot
push.d 133.5
cmp.d.v LT
b [88]

:[87]
push.e 0

:[88]
bf [91]

:[89]
push.d 133.5
pop.v.d global.plot
push.s "obj_phonecall_room_397"@21510
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_398"@21511
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_399"@21513
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_400"@21515
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_401"@21517
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_402"@21519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_phonecall_room_403"@21521
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_phonecall_room_404"@21522
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_phonecall_room_405"@21523
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [91]

:[90]
pushi.e 1
pop.v.i self.donotcall

:[91]
pushbltn.v self.room
pushi.e 149
cmp.i.v EQ
bf [93]

:[92]
pushi.e -5
pushi.e 373
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [99]

:[95]
push.s "obj_phonecall_room_411"@21524
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_412"@21525
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_413"@21527
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_414"@21529
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_415"@21531
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_416"@21533
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_phonecall_room_417"@21535
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_phonecall_room_418"@21536
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_phonecall_room_419"@21537
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e -5
pushi.e 372
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
push.s "obj_phonecall_room_423"@21538
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_424"@21539
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_425"@21541
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_426"@21543
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_427"@21545
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_428"@21546
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_phonecall_room_429"@21547
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[97]
pushi.e 1
pushi.e -5
pushi.e 373
pop.v.i [array]global.flag
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [99]

:[98]
pushi.e 1
pop.v.i self.donotcall

:[99]
pushbltn.v self.room
pushi.e 148
cmp.i.v EQ
bf [101]

:[100]
pushglb.v global.plot
pushi.e 132
cmp.i.v LT
b [102]

:[101]
push.e 0

:[102]
bf [105]

:[103]
push.s "obj_phonecall_room_464"@21548
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_465"@21549
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_466"@21551
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_467"@21553
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_468"@21555
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_469"@21557
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_phonecall_room_470"@21558
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_phonecall_room_471"@21559
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 132
pop.v.i global.plot
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
pushi.e 1
pop.v.i self.donotcall

:[105]
pushbltn.v self.room
pushi.e 147
cmp.i.v EQ
bf [107]

:[106]
pushglb.v global.plot
pushi.e 131
cmp.i.v LT
b [108]

:[107]
push.e 0

:[108]
bf [111]

:[109]
push.s "obj_phonecall_room_498"@21560
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_499"@21561
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_500"@21563
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_501"@21565
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_502"@21567
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_503"@21569
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_phonecall_room_504"@21571
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_phonecall_room_505"@21573
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_phonecall_room_506"@21574
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_phonecall_room_507"@21576
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_phonecall_room_508"@21577
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_phonecall_room_509"@21578
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 131
pop.v.i global.plot
pushi.e 0
pushi.e -5
pushi.e 462
pop.v.i [array]global.flag
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [111]

:[110]
pushi.e 1
pop.v.i self.donotcall

:[111]
pushbltn.v self.room
pushi.e 145
cmp.i.v EQ
bf [113]

:[112]
pushglb.v global.plot
pushi.e 130
cmp.i.v LT
b [114]

:[113]
push.e 0

:[114]
bf [117]

:[115]
push.s "obj_phonecall_room_521"@21580
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_522"@21582
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_523"@21584
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 130
pop.v.i global.plot
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [117]

:[116]
pushi.e 1
pop.v.i self.donotcall

:[117]
pushbltn.v self.room
pushi.e 88
cmp.i.v EQ
bf [119]

:[118]
pushglb.v global.plot
pushi.e 107
cmp.i.v LT
b [120]

:[119]
push.e 0

:[120]
bf [123]

:[121]
pushi.e 107
pop.v.i global.plot
pushi.e 1341
conv.i.v
pushi.e 340
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 553
pop.v.i global.msc
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [123]

:[122]
pushi.e 1
pop.v.i self.donotcall

:[123]
pushbltn.v self.room
pushi.e 97
cmp.i.v EQ
bf [125]

:[124]
pushi.e -5
pushi.e 354
push.v [array]global.flag
pushi.e 1
cmp.i.v LT
b [126]

:[125]
push.e 0

:[126]
bf [129]

:[127]
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
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [129]

:[128]
pushi.e 1
pop.v.i self.donotcall

:[129]
pushbltn.v self.room
pushi.e 136
cmp.i.v EQ
bf [131]

:[130]
pushi.e -5
pushi.e 354
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
b [132]

:[131]
push.e 0

:[132]
bf [137]

:[133]
pushi.e 2
pushi.e -5
pushi.e 354
pop.v.i [array]global.flag
pushi.e 633
pop.v.i global.msc
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [135]

:[134]
pushi.e 1
pop.v.i self.donotcall

:[135]
pushi.e 1120
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [137]

:[136]
pushi.e 20
pop.v.i 1120.con

:[137]
pushbltn.v self.room
pushi.e 115
cmp.i.v EQ
bf [139]

:[138]
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 10
cmp.i.v EQ
b [140]

:[139]
push.e 0

:[140]
bf [144]

:[141]
push.s "obj_phonecall_room_569"@21585
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_phonecall_room_571"@21587
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_572"@21589
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_573"@21591
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_574"@21593
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_phonecall_room_575"@21595
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_phonecall_room_576"@21597
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_phonecall_room_577"@21599
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_phonecall_room_578"@21601
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_phonecall_room_579"@21603
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_phonecall_room_580"@21605
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_phonecall_room_581"@21607
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_phonecall_room_582"@21609
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_phonecall_room_583"@21611
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_phonecall_room_584"@21612
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_phonecall_room_585"@21613
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [143]

:[142]
pushi.e 1
pop.v.i self.donotcall

:[143]
pushi.e 0
pushi.e -5
pushi.e 492
pop.v.i [array]global.flag
pushi.e 11
pushi.e -5
pushi.e 493
pop.v.i [array]global.flag

:[144]
pushbltn.v self.room
pushi.e 162
cmp.i.v EQ
bf [146]

:[145]
pushglb.v global.plot
pushi.e 139
cmp.i.v LT
b [147]

:[146]
push.e 0

:[147]
bf [150]

:[148]
push.s "obj_phonecall_room_593"@21614
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_phonecall_room_594"@21616
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_phonecall_room_595"@21618
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_phonecall_room_596"@21620
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_phonecall_room_597"@21622
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_phonecall_room_598"@21624
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_phonecall_room_599"@21626
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_phonecall_room_600"@21627
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_phonecall_room_601"@21628
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 139
pop.v.i global.plot
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [150]

:[149]
pushi.e 1
pop.v.i self.donotcall

:[150]
push.v self.donotcall
pushi.e 0
cmp.i.v EQ
bf [152]

:[151]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v

:[152]
push.v self.donotcall
pushi.e 0
cmp.i.v EQ
bf [end]

:[153]
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
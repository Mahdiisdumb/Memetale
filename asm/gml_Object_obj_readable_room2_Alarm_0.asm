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
push.s "obj_readable_room2_60"@22480
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 36
cmp.i.v EQ
bf [3]

:[1]
push.s "obj_readable_room2_63"@22482
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
push.s "obj_readable_room2_67"@22484
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
pushbltn.v self.room
pushi.e 224
cmp.i.v EQ
bf [6]

:[4]
push.s "obj_readable_room2_72"@22486
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [6]

:[5]
push.s "obj_readable_room2_75"@22488
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
pushbltn.v self.room
pushi.e 33
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_readable_room2_80"@22490
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_81"@22492
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room2_82"@22494
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room2_83"@22496
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room2_84"@22498
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room2_85"@22500
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[8]
pushbltn.v self.room
pushi.e 223
cmp.i.v EQ
bf [11]

:[9]
push.s "obj_readable_room2_90"@22502
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_91"@22504
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [11]

:[10]
push.s "obj_readable_room2_94"@22506
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
pushbltn.v self.room
pushi.e 221
cmp.i.v EQ
bf [14]

:[12]
push.s "obj_readable_room2_100"@22508
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_101"@22510
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [14]

:[13]
push.s "obj_readable_room2_105"@22511
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[14]
pushbltn.v self.room
pushi.e 222
cmp.i.v EQ
bf [16]

:[15]
push.s "obj_readable_room2_111"@22513
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[16]
pushbltn.v self.room
pushi.e 32
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_readable_room2_114"@22515
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
pushbltn.v self.room
pushi.e 220
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_readable_room2_115"@22517
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
pushbltn.v self.room
pushi.e 235
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_readable_room2_119"@22519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[22]
pushbltn.v self.room
pushi.e 35
cmp.i.v EQ
bf [25]

:[23]
push.s "obj_readable_room2_124"@22521
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.x
pushi.e 90
cmp.i.v GT
bf [25]

:[24]
push.s "obj_readable_room2_127"@22523
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_128"@22525
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room2_129"@22527
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 50
pop.v.i [array]global.flag

:[25]
pushbltn.v self.room
pushi.e 34
cmp.i.v EQ
bf [28]

:[26]
push.s "obj_readable_room2_135"@22529
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 50
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.s "obj_readable_room2_136"@22531
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
pushbltn.v self.room
pushi.e 37
cmp.i.v EQ
bf [33]

:[29]
push.s "obj_readable_room2_140"@22533
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 103
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [31]

:[30]
push.s "obj_readable_room2_141"@22535
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[31]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
push.s "obj_readable_room2_144"@22537
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[33]
pushbltn.v self.room
pushi.e 74
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_readable_room2_149"@22539
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_150"@22541
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room2_151"@22543
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room2_152"@22545
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[35]
pushbltn.v self.room
pushi.e 265
cmp.i.v EQ
bf [37]

:[36]
push.s "obj_readable_room2_164"@22547
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[37]
pushbltn.v self.room
pushi.e 44
cmp.i.v EQ
bf [39]

:[38]
push.s "obj_readable_room2_166"@22548
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[39]
pushbltn.v self.room
pushi.e 53
cmp.i.v EQ
bf [63]

:[40]
pushi.e 1020
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [61]

:[41]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [59]

:[42]
push.v 1020.image_index
pushi.e 0
cmp.i.v EQ
bf [46]

:[43]
pushi.e -5
pushi.e 387
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_readable_room2_178"@22550
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_179"@22552
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room2_180"@22554
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v global.gold
pushi.e 50
add.i.v
pop.v.v global.gold
pushi.e 1
pushi.e -5
pushi.e 387
pop.v.i [array]global.flag
b [46]

:[45]
push.s "obj_readable_room2_186"@22556
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_187"@22558
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v global.gold
pushi.e 10
add.i.v
pop.v.v global.gold

:[46]
push.v 1020.image_index
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_readable_room2_194"@22560
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_195"@22562
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v global.gold
pushi.e 5
add.i.v
pop.v.v global.gold

:[48]
push.v 1020.image_index
pushi.e 2
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_readable_room2_201"@22564
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_202"@22566
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v global.gold
pushi.e 3
add.i.v
pop.v.v global.gold

:[50]
push.v 1020.image_index
pushi.e 3
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_readable_room2_208"@22568
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_209"@22570
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v global.gold
pushi.e 2
add.i.v
pop.v.v global.gold

:[52]
push.v 1020.image_index
pushi.e 4
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_readable_room2_215"@22572
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_216"@22574
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v global.gold
pushi.e 1
add.i.v
pop.v.v global.gold

:[54]
push.v 1020.image_index
pushi.e 5
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_readable_room2_222"@22576
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_223"@22577
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v global.gold
pushi.e 2
add.i.v
pop.v.v global.gold

:[56]
push.v 1020.image_index
pushi.e 6
cmp.i.v EQ
bf [58]

:[57]
push.s "obj_readable_room2_229"@22579
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_230"@22581
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room2_231"@22583
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v global.gold
pushi.e 4
add.i.v
pop.v.v global.gold

:[58]
b [60]

:[59]
push.s "obj_readable_room2_238"@22585
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
b [63]

:[61]
push.s "obj_readable_room2_245"@22587
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 203
push.v [array]global.flag
pushi.e 16
cmp.i.v GTE
bf [63]

:[62]
push.s "obj_readable_room2_247"@22589
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[63]
pushbltn.v self.room
pushi.e 54
cmp.i.v EQ
bf [65]

:[64]
push.s "obj_readable_room2_252"@22591
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[65]
pushbltn.v self.room
pushi.e 76
cmp.i.v EQ
bf [71]

:[66]
pushi.e 1027
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [68]

:[67]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_readable_room2_259"@22593
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room2_260"@22595
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room2_261"@22597
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room2_262"@22598
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room2_263"@22600
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
b [69]

:[68]
push.s "obj_readable_room2_266"@22602
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[69]
push.v self.read
pushi.e 0
cmp.i.v GT
bf [71]

:[70]
push.s "obj_readable_room2_268"@22603
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[71]
pushbltn.v self.room
pushi.e 77
cmp.i.v EQ
bf [77]

:[72]
pushi.e 1027
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [74]

:[73]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_readable_room2_276"@22605
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room2_277"@22607
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room2_278"@22609
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room2_279"@22611
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room2_280"@22613
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_readable_room2_281"@22615
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_readable_room2_282"@22617
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_readable_room2_283"@22619
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_readable_room2_284"@22621
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_readable_room2_285"@22622
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
b [75]

:[74]
push.s "obj_readable_room2_287"@22624
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[75]
push.v self.read
pushi.e 0
cmp.i.v GT
bf [77]

:[76]
push.s "obj_readable_room2_288"@22625
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[77]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [79]

:[78]
push.s "obj_readable_room2_295"@22627
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_296"@22629
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room2_297"@22631
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[79]
pushbltn.v self.room
pushi.e 101
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_readable_room2_302"@22633
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_303"@22635
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room2_304"@22637
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[81]
pushbltn.v self.room
pushi.e 126
cmp.i.v EQ
bf [83]

:[82]
push.s "obj_readable_room2_310"@22639
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_311"@22641
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room2_312"@22643
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[83]
pushbltn.v self.room
pushi.e 110
cmp.i.v EQ
bf [85]

:[84]
push.s "obj_readable_room2_318"@22645
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_319"@22647
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room2_320"@22649
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[85]
pushbltn.v self.room
pushi.e 123
cmp.i.v EQ
bf [87]

:[86]
push.s "obj_readable_room2_326"@22651
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_327"@22653
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[87]
pushbltn.v self.room
pushi.e 141
cmp.i.v EQ
bf [93]

:[88]
push.s "obj_readable_room2_332"@22655
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 126
cmp.i.v LT
bf [90]

:[89]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v LT
b [91]

:[90]
push.e 0

:[91]
bf [93]

:[92]
push.s "obj_readable_room2_333"@22656
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[93]
pushbltn.v self.room
pushi.e 142
cmp.i.v EQ
bf [95]

:[94]
pushi.e 643
pop.v.i global.msc

:[95]
pushbltn.v self.room
pushi.e 154
cmp.i.v EQ
bf [102]

:[96]
push.s "obj_readable_room2_343"@22658
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 134
cmp.i.v LT
bf [98]

:[97]
push.s "obj_readable_room2_345"@22659
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[98]
pushi.e 1175
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [100]

:[99]
pushi.e 27
pop.v.i global.typer
push.s "obj_readable_room2_353"@22661
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_354"@22663
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[100]
pushglb.v global.plot
pushi.e 134
cmp.i.v EQ
bf [102]

:[101]
pushi.e 5
pop.v.i global.typer
push.s "obj_readable_room2_360"@22665
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[102]
pushbltn.v self.room
pushi.e 118
cmp.i.v EQ
bf [106]

:[103]
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.v self.x
pushi.e 100
cmp.i.v LT
bf [106]

:[104]
push.s "obj_readable_room2_373"@22667
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_374"@22669
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room2_375"@22671
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.read
pushi.e 0
cmp.i.v GT
bf [106]

:[105]
push.s "obj_readable_room2_377"@22673
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[106]
pushbltn.v self.room
pushi.e 170
cmp.i.v EQ
bf [108]

:[107]
push.s "obj_readable_room2_390"@22675
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[108]
pushbltn.v self.room
pushi.e 196
cmp.i.v EQ
bf [110]

:[109]
push.s "obj_readable_room2_395"@22677
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[110]
pushbltn.v self.room
pushi.e 202
cmp.i.v EQ
bf [112]

:[111]
push.s "obj_readable_room2_400"@22679
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[112]
pushbltn.v self.room
pushi.e 245
cmp.i.v EQ
bf [115]

:[113]
push.s "obj_readable_room2_405"@22681
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_406"@22683
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room2_407"@22685
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room2_408"@22687
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room2_409"@22689
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room2_410"@22691
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
bf [115]

:[114]
push.s "obj_readable_room2_412"@22692
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[115]
pushbltn.v self.room
pushi.e 250
cmp.i.v EQ
bf [118]

:[116]
push.s "obj_readable_room2_417"@22694
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_418"@22696
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 485
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [118]

:[117]
push.s "obj_readable_room2_419"@22697
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[118]
pushbltn.v self.room
pushi.e 251
cmp.i.v EQ
bf [120]

:[119]
push.s "obj_readable_room2_424"@22699
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[120]
pushbltn.v self.room
pushi.e 252
cmp.i.v EQ
bf [123]

:[121]
push.s "obj_readable_room2_429"@22701
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_430"@22703
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room2_431"@22705
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room2_432"@22707
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room2_433"@22709
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
bf [123]

:[122]
push.s "obj_readable_room2_434"@22710
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[123]
pushbltn.v self.room
pushi.e 254
cmp.i.v EQ
bf [126]

:[124]
push.s "obj_readable_room2_439"@22712
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_440"@22714
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 485
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
push.s "obj_readable_room2_441"@22715
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[126]
pushbltn.v self.room
pushi.e 257
cmp.i.v EQ
bf [128]

:[127]
push.s "obj_readable_room2_446"@22717
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_447"@22719
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[128]
pushbltn.v self.room
pushi.e 260
cmp.i.v EQ
bf [130]

:[129]
push.s "obj_readable_room2_452"@22721
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_453"@22723
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room2_454"@22725
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room2_455"@22727
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room2_456"@22729
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room2_457"@22731
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[130]
pushbltn.v self.room
pushi.e 258
cmp.i.v EQ
bf [135]

:[131]
push.s "obj_readable_room2_462"@22733
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_463"@22735
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room2_464"@22737
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room2_465"@22739
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room2_466"@22741
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
bf [133]

:[132]
push.s "obj_readable_room2_467"@22742
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[133]
pushi.e -5
pushi.e 490
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [135]

:[134]
push.s "obj_readable_room2_468"@22743
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[135]
pushbltn.v self.room
pushi.e 262
cmp.i.v EQ
bf [138]

:[136]
push.s "obj_readable_room2_473"@22744
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
bf [138]

:[137]
push.s "obj_readable_room2_476"@22746
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_477"@22748
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[138]
pushbltn.v self.room
pushi.e 68
cmp.i.v EQ
bf [150]

:[139]
push.s "obj_readable_room2_483"@22750
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1031
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [141]

:[140]
pushi.e 1028
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [142]

:[141]
push.e 1

:[142]
bf [150]

:[143]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_readable_room2_488"@22752
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1315
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [145]

:[144]
push.s "obj_readable_room2_492"@22754
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room2_493"@22756
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_readable_room2_495"@22758
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_readable_room2_497"@22760
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_readable_room2_498"@22762
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_readable_room2_499"@22764
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 9
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_readable_room2_501"@22766
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg

:[145]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 0
cmp.i.v LT
bf [148]

:[146]
push.s "obj_readable_room2_506"@22768
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1315
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [148]

:[147]
push.s "obj_readable_room2_509"@22770
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_readable_room2_511"@22772
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_readable_room2_513"@22774
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_readable_room2_514"@22776
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_readable_room2_516"@22778
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_readable_room2_517"@22780
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 10
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_readable_room2_519"@22782
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_readable_room2_520"@22784
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 13
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_readable_room2_522"@22786
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg

:[148]
push.v self.read
pushi.e 0
cmp.i.v GT
bf [150]

:[149]
push.s "obj_readable_room2_528"@22788
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[150]
pushbltn.v self.room
pushi.e 73
cmp.i.v EQ
bf [152]

:[151]
push.s "obj_readable_room2_534"@22790
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[152]
pushbltn.v self.room
pushi.e 78
cmp.i.v EQ
bf [154]

:[153]
push.s "obj_readable_room2_539"@22792
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[154]
pushbltn.v self.room
pushi.e 80
cmp.i.v EQ
bf [156]

:[155]
push.s "obj_readable_room2_544"@22794
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[156]
pushbltn.v self.room
pushi.e 184
cmp.i.v EQ
bf [158]

:[157]
push.s "obj_readable_room2_549"@22796
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[158]
pushbltn.v self.room
pushi.e 186
cmp.i.v EQ
bf [160]

:[159]
push.s "obj_readable_room2_554"@22798
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_555"@22800
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[160]
pushbltn.v self.room
pushi.e 128
cmp.i.v EQ
bf [163]

:[161]
push.s "obj_readable_room2_560"@22802
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
bf [163]

:[162]
push.s "obj_readable_room2_563"@22804
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[163]
pushbltn.v self.room
pushi.e 95
cmp.i.v EQ
bf [165]

:[164]
push.s "obj_readable_room2_569"@22806
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room2_570"@22808
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[165]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read

:[end]
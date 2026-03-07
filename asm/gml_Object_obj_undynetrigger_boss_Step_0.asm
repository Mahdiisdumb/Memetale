.localvar 0 arguments

:[0]
pushi.e 1131
pushenv [150]

:[1]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[2]
push.v 1576.y
pushi.e 600
cmp.i.v LT
bf [5]

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [10]

:[7]
push.v 1576.y
pop.v.v self.remembery
push.v 1576.y
pop.v.v self.rememberyyy
push.v 1576.x
pushi.e 128
cmp.i.v LT
bf [9]

:[8]
pushi.e 128
pop.v.i 1576.x

:[9]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushglb.v global.currentsong
call.i caster_get_volume(argc=1)
pop.v.v self.vol
pushi.e 1119
conv.i.v
pushi.e 135
conv.i.v
pushi.e 137
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.undyne
push.v self.undyne
conv.v.i
push.v [stacktop]self.usprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 2
pop.v.i self.con
pushi.e 33
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [16]

:[13]
push.v self.vol
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
push.v self.vol
push.d 0.034
sub.d.v
pop.v.v self.vol

:[15]
push.v self.vol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[16]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [19]

:[17]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 4
sub.i.v
pop.i.v [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 80
cmp.i.v LT
bf [19]

:[18]
pushi.e 4
pop.v.i self.con

:[19]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [21]

:[20]
pushi.e 5
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[21]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
pop.v.i global.facechoice
pushi.e 37
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_undynetrigger_boss_157"@29468
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_158"@29470
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_159"@29472
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_160"@29474
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_161"@29476
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_162"@29478
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_163"@29480
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_164"@29482
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_165"@29484
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 1
push.v self.g
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 7
pop.v.i self.con

:[23]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [25]

:[24]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [26]

:[25]
push.e 0

:[26]
bf [37]

:[27]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [29]

:[28]
push.v self.undyne
conv.v.i
push.v [stacktop]self.rsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[29]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [31]

:[30]
push.v self.undyne
conv.v.i
push.v [stacktop]self.dsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[31]
push.v 784.stringno
pushi.e 6
cmp.i.v EQ
bf [33]

:[32]
push.v self.undyne
conv.v.i
push.v [stacktop]self.lsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[33]
push.v 784.stringno
pushi.e 7
cmp.i.v EQ
bf [35]

:[34]
push.v self.undyne
conv.v.i
push.v [stacktop]self.dsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[35]
push.v 784.stringno
pushi.e 8
cmp.i.v EQ
bf [37]

:[36]
push.v self.undyne
conv.v.i
push.v [stacktop]self.lsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[37]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [39]

:[38]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [40]

:[39]
push.e 0

:[40]
bf [44]

:[41]
pushi.e 8
pop.v.i self.con
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
pushi.e 49
pop.v.i self.con

:[43]
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[44]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [46]

:[45]
push.v self.undyne
conv.v.i
push.v [stacktop]self.dsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.s "obj_undynetrigger_boss_190"@29485
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_191"@29487
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 1
push.v self.g
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 10
pop.v.i self.con

:[46]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [48]

:[47]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
push.s "obj_undynetrigger_boss_199"@29489
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 11
pop.v.i self.con

:[51]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [53]

:[52]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
push.s "obj_undynetrigger_boss_206"@29491
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 12
pop.v.i self.con

:[56]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [58]

:[57]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
push.s "obj_undynetrigger_boss_213"@29493
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 13
pop.v.i self.con

:[61]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [63]

:[62]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
push.s "obj_undynetrigger_boss_220"@29495
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_angle
pushi.e 14
pop.v.i self.con

:[66]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [68]

:[67]
pushi.e 15
pop.v.i self.con
pushi.e 1365
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.white
pushi.e 1087
push.v self.white
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.white
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 200
push.v self.white
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 200
push.v self.white
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.white
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.white
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 0
pop.v.i self.alp

:[68]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [71]

:[69]
push.v self.alp
push.d 0.02
add.d.v
pop.v.v self.alp
push.v self.alp
push.v self.white
conv.v.i
pop.v.v [stacktop]self.image_alpha
push.v self.alp
pushi.e 1
cmp.i.v GTE
bf [71]

:[70]
pushi.e 16
pop.v.i self.con

:[71]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [73]

:[72]
pushi.e 17
pop.v.i self.con
push.v self.undyne
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 3
add.i.v
pop.i.v [stacktop]self.x
pushi.e 1524
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
pop.v.i self.fakedrawer
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.view_visible
pushi.e 240
pushi.e -1
pushi.e 1
pop.v.i [array]self.view_hview
pushi.e 320
pushi.e -1
pushi.e 1
pop.v.i [array]self.view_wview
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.view_xview
pushi.e 60
pushi.e -1
pushi.e 1
pop.v.i [array]self.view_yview
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 0
pushi.e -5
pushi.e 18
pop.v.i [array]global.flag
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 60
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview
pushi.e 240
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_hview
pushi.e 320
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_wview
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[73]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [75]

:[74]
pushi.e 19
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[75]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [79]

:[76]
push.v self.alp
pushi.e 0
cmp.i.v GT
bf [78]

:[77]
push.v self.alp
push.d 0.05
sub.d.v
pop.v.v self.alp

:[78]
push.v self.alp
push.v self.white
conv.v.i
pop.v.v [stacktop]self.image_alpha

:[79]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [83]

:[80]
push.v self.white
conv.v.i
pushenv [82]

:[81]
call.i instance_destroy(argc=0)
popz.v

:[82]
popenv [81]
pushi.e 21
pop.v.i self.con
pushi.e 0
pop.v.i self.ax
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[83]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [89]

:[84]
push.v self.ax
pushi.e 8
cmp.i.v LT
bf [86]

:[85]
push.v self.ax
push.d 0.2
add.d.v
pop.v.v self.ax

:[86]
push.v self.ax
pushi.e 4
cmp.i.v EQ
bf [88]

:[87]
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v

:[88]
push.v self.ax
call.i floor(argc=1)
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.image_index

:[89]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [91]

:[90]
pushi.e 1511
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 23
pop.v.i self.con
pushi.e 0
pop.v.i 1576.y
pushi.e 0
pop.v.i 1576.visible
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[91]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [131]

:[92]
pushi.e 5
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 37
pop.v.i global.typer
pushi.e 0
pop.v.i self.q
pushglb.v global.kills
pushi.e 0
cmp.i.v GT
bf [94]

:[93]
pushi.e 1
pop.v.i self.q

:[94]
pushglb.v global.kills
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
pushi.e -5
pushi.e 4
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [97]

:[96]
push.e 0

:[97]
bf [99]

:[98]
pushi.e 0
pop.v.i self.q

:[99]
pushglb.v global.kills
pushi.e 0
cmp.i.v EQ
bf [101]

:[100]
pushi.e 0
pop.v.i self.q

:[101]
push.v self.q
pushi.e 0
cmp.i.v EQ
bf [109]

:[102]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "UD"@47569
conv.s.v
push.s "Undyne"@6863
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.ud
call.i ossafe_ini_close(argc=0)
popz.v
push.s "obj_undynetrigger_boss_325"@29497
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_326"@29499
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_327"@29501
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_328"@29503
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_329"@29505
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_330"@29507
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_331"@29509
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 98
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bt [104]

:[103]
pushi.e -5
pushi.e 98
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [105]

:[104]
push.e 1

:[105]
bf [107]

:[106]
push.s "obj_undynetrigger_boss_332"@29511
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[107]
push.s "obj_undynetrigger_boss_335"@29513
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_336"@29515
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_337"@29517
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_338"@29519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_339"@29521
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_340"@29523
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_341"@29525
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_342"@29527
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_343"@29529
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_344"@29531
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_345"@29533
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_346"@29535
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_347"@29537
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.v self.ud
pushi.e 0
cmp.i.v GT
bf [109]

:[108]
push.s "obj_undynetrigger_boss_351"@29539
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_352"@29541
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_353"@29543
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_354"@29545
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_355"@29547
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_356"@29549
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_357"@29551
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_358"@29553
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_359"@29555
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_360"@29557
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_361"@29559
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_362"@29561
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_363"@29563
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg

:[109]
push.v self.q
pushi.e 1
cmp.i.v EQ
bf [130]

:[110]
push.s "obj_undynetrigger_boss_369"@29564
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_370"@29565
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_371"@29567
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_372"@29568
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_373"@29570
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_374"@29572
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_375"@29574
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_376"@29576
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_377"@29578
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_378"@29580
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_379"@29582
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_381"@29584
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_382"@29586
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e -5
pushi.e 81
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [112]

:[111]
push.s "obj_undynetrigger_boss_386"@29588
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_387"@29590
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg

:[112]
pushi.e -5
pushi.e 57
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [114]

:[113]
push.s "obj_undynetrigger_boss_392"@29592
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_393"@29593
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg

:[114]
pushi.e -5
pushi.e 52
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [116]

:[115]
push.s "obj_undynetrigger_boss_399"@29595
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_400"@29596
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg

:[116]
pushi.e -5
pushi.e 53
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [118]

:[117]
push.s "obj_undynetrigger_boss_405"@29598
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_406"@29600
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg

:[118]
pushi.e -5
pushi.e 54
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [120]

:[119]
push.s "obj_undynetrigger_boss_412"@29602
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_413"@29603
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg

:[120]
pushi.e -5
pushi.e 55
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [122]

:[121]
push.s "obj_undynetrigger_boss_419"@29605
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_420"@29606
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg

:[122]
pushi.e -5
pushi.e 55
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [126]

:[123]
pushi.e -5
pushi.e 54
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [126]

:[124]
pushi.e -5
pushi.e 53
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
pushi.e -5
pushi.e 52
push.v [array]global.flag
conv.v.b
b [127]

:[126]
push.e 0

:[127]
bf [129]

:[128]
push.s "obj_undynetrigger_boss_425"@29608
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_426"@29610
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg

:[129]
push.s "obj_undynetrigger_boss_429"@29612
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_430"@29614
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_431"@29616
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_432"@29618
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_433"@29620
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_434"@29622
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_435"@29624
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_436"@29626
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_437"@29628
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_438"@29630
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg

:[130]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 1
push.v self.g
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 25
pop.v.i self.con

:[131]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [133]

:[132]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [134]

:[133]
push.e 0

:[134]
bf [141]

:[135]
pushi.e 1
pop.v.i 1576.visible
push.v self.rememberyyy
pop.v.v 1576.y
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 8
add.i.v
pop.i.v [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.yy
cmp.v.v GTE
bf [141]

:[136]
pushi.e 1353
conv.i.v
pushi.e 660
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.save
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 0
pop.v.i global.interact
pushi.e 26
pop.v.i self.con
pushi.e 121
pop.v.i global.plot
push.v self.undyne
call.i instance_exists(argc=1)
conv.v.b
bf [140]

:[137]
push.v self.undyne
conv.v.i
pushenv [139]

:[138]
call.i instance_destroy(argc=0)
popz.v

:[139]
popenv [138]

:[140]
call.i instance_destroy(argc=0)
popz.v

:[141]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [143]

:[142]
push.v self.undyne
conv.v.i
push.v [stacktop]self.usprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.s "obj_undynetrigger_boss_468"@29631
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_469"@29633
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 51
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 1
push.v self.g
conv.v.i
pop.v.i [stacktop]self.side

:[143]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [145]

:[144]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [146]

:[145]
push.e 0

:[146]
bf [148]

:[147]
push.v self.undyne
conv.v.i
push.v [stacktop]self.rsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 52
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[148]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [150]

:[149]
push.v self.undyne
conv.v.i
push.v [stacktop]self.dsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 37
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.facechoice
pushi.e 4
pop.v.i global.faceemotion
push.s "obj_undynetrigger_boss_490"@29635
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_491"@29637
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_492"@29639
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_493"@29641
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_494"@29643
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_495"@29645
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_496"@29647
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_497"@29649
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_498"@29650
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_499"@29652
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_500"@29654
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_501"@29656
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_502"@29658
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_503"@29660
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_504"@29662
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_505"@29664
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_506"@29665
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_507"@29667
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_508"@29669
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss_509"@29671
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 1
push.v self.g
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 25
pop.v.i self.con

:[150]
popenv [1]

:[end]
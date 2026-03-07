.localvar 0 arguments

:[0]
push.v 1576.y
pushi.e 840
cmp.i.v LT
bf [3]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
push.d 0.334
pop.v.d 1576.image_speed
pushi.e -3
pop.v.i 1576.vspeed
pushi.e 1
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i 1576.vspeed
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 1
pop.v.i 1576.cutscene
pushi.e 3
pop.v.i self.con

:[8]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [11]

:[9]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 3
sub.i.v
pop.i.v [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 622
cmp.i.v LTE
bf [11]

:[10]
pushi.e 620
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview
pushi.e 4
pop.v.i self.con

:[11]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [16]

:[12]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "BossMet"@48718
conv.s.v
push.s "Mettaton"@6864
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.already
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e 5
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
pop.v.i self.already

:[14]
push.v self.already
pushi.e 1
cmp.i.v GTE
bf [16]

:[15]
push.d 3.1
pop.v.d self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[16]
push.v self.con
push.d 4.1
cmp.d.v EQ
bf [18]

:[17]
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 833
pop.v.i global.msc
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 4.2
pop.v.d self.con

:[18]
push.v self.con
push.d 4.5
cmp.d.v EQ
bf [20]

:[19]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.d 4.4
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[23]
push.v self.con
push.d 5.4
cmp.d.v EQ
bf [25]

:[24]
pushi.e 1749
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 7
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_mettboss_event_170"@17571
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.skip
push.d 5.5
pop.v.d self.con

:[25]
push.v self.con
push.d 5.5
cmp.d.v EQ
bf [27]

:[26]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 109
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 4.6
pop.v.d self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.con
push.d 5.6
cmp.d.v EQ
bf [32]

:[31]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
push.s "obj_mettboss_event_187"@17573
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 5.7
pop.v.d self.con
pushi.e 500
pop.v.i self.babytimer

:[35]
push.v self.con
push.d 5.7
cmp.d.v EQ
bf [37]

:[36]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 19
pop.v.i self.con

:[40]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [42]

:[41]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [48]

:[44]
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
push.s "obj_mettboss_event_230"@17575
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettboss_event_231"@17577
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettboss_event_232"@17579
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettboss_event_233"@17581
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettboss_event_234"@17583
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettboss_event_235"@17585
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettboss_event_236"@17587
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mettboss_event_237"@17589
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mettboss_event_238"@17591
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mettboss_event_239"@17593
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mettboss_event_240"@17595
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mettboss_event_241"@17597
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mettboss_event_242"@17599
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_mettboss_event_243"@17601
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_mettboss_event_244"@17603
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_mettboss_event_245"@17605
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_mettboss_event_247"@17607
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_mettboss_event_248"@17609
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_mettboss_event_249"@17611
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_mettboss_event_250"@17613
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_mettboss_event_251"@17615
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_mettboss_event_252"@17617
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_mettboss_event_253"@17619
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_mettboss_event_254"@17621
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_mettboss_event_255"@17623
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_mettboss_event_256"@17625
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_mettboss_event_257"@17627
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
push.s "obj_mettboss_event_258"@17629
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_mettboss_event_263"@17631
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettboss_event_264"@17633
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettboss_event_265"@17635
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettboss_event_266"@17637
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettboss_event_267"@17639
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettboss_event_268"@17641
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettboss_event_269"@17643
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[46]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 7
pop.v.i self.con
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
pushi.e 30
pop.v.i self.con

:[48]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [50]

:[49]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
push.s "music/mettafly.ogg"@2714
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mtsong2
pushi.e 1
pop.v.i self.drawblack
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 8
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[53]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [55]

:[54]
pushi.e 17
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 10
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[55]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [57]

:[56]
pushi.e 47
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 6
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_mettboss_event_303"@17645
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettboss_event_304"@17647
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
popz.v
pushi.e 13
pop.v.i self.con

:[57]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [59]

:[58]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.sixtyon
pushi.e 1
pop.v.i self.sixtyflash
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
push.d 0.25
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.image_speed
push.s "obj_mettboss_event_321"@17649
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettboss_event_322"@17651
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
popz.v
pushi.e 14
pop.v.i self.con

:[62]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [64]

:[63]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
pushi.e 0
pop.v.i self.babytimer
pushi.e 1253
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.scr
push.v self.sixty
push.v self.scr
conv.v.i
pop.v.v [stacktop]self.sixty
pushi.e 15
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[67]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [69]

:[68]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
push.v self.mtsong2
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 27
pop.v.i global.typer
push.s "obj_mettboss_event_341"@17653
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettboss_event_342"@17655
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettboss_event_343"@17657
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ss
pushi.e 0
push.v self.ss
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 17
pop.v.i self.con

:[72]
push.v self.con
pushi.e 14
cmp.i.v GT
bf [74]

:[73]
push.v self.murder
pushi.e 0
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
push.v self.babytimer
pushi.e 1
add.i.v
pop.v.v self.babytimer

:[77]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [79]

:[78]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [83]

:[81]
push.v self.babytimer
pushi.e 300
cmp.i.v GT
bf [83]

:[82]
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 18
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[83]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [87]

:[84]
pushi.e 1
pop.v.i global.mercy
pushi.e 80
pop.v.i global.battlegroup
push.v self.skip
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
pushi.e 81
pop.v.i global.battlegroup

:[86]
pushi.e 0
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 20
pop.v.i self.con
pushi.e 33
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[87]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [93]

:[88]
pushi.e 0
pop.v.i global.mercy
pushi.e 0
pop.v.i global.border
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 1253
pushenv [90]

:[89]
pushi.e 6
pop.v.i self.con

:[90]
popenv [89]
push.v self.mett
conv.v.i
pushenv [92]

:[91]
call.i instance_destroy(argc=0)
popz.v

:[92]
popenv [91]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 60
sub.i.v
pop.i.v [array]self.view_yview
pushi.e 1250
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[93]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [95]

:[94]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [102]

:[97]
pushi.e 0
pop.v.i 1576.visible
pushi.e 1132
conv.i.v
push.v 1576.y
push.v 1576.x
call.i scr_marker(argc=3)
pop.v.v self.mc
push.v self.mc
conv.v.i
pushenv [99]

:[98]
pushi.e 1
pop.v.i self.image_index

:[99]
popenv [98]
push.v self.mc
conv.v.i
pushenv [101]

:[100]
push.d -0.5
pop.v.d self.vspeed

:[101]
popenv [100]
pushi.e 31
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[102]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [108]

:[103]
push.v self.mc
conv.v.i
pushenv [105]

:[104]
pushi.e 0
pop.v.i self.image_index

:[105]
popenv [104]
push.v self.mc
conv.v.i
pushenv [107]

:[106]
pushi.e 0
pop.v.i self.vspeed

:[107]
popenv [106]
pushi.e 33
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[108]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [110]

:[109]
push.s "obj_mettboss_event_411"@17659
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettboss_event_412"@17661
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettboss_event_413"@17663
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettboss_event_414"@17665
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettboss_event_415"@17667
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettboss_event_416"@17669
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettboss_event_417"@17671
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mettboss_event_418"@17673
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 35
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[110]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [112]

:[111]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [113]

:[112]
push.e 0

:[113]
bf [119]

:[114]
push.v self.mc
conv.v.i
pushenv [116]

:[115]
pushi.e 1
pop.v.i self.image_index

:[116]
popenv [115]
push.v self.mc
conv.v.i
pushenv [118]

:[117]
push.d -0.5
pop.v.d self.vspeed

:[118]
popenv [117]
pushi.e 36
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[119]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [125]

:[120]
push.v self.mc
conv.v.i
pushenv [122]

:[121]
pushi.e 0
pop.v.i self.image_index

:[122]
popenv [121]
push.v self.mc
conv.v.i
pushenv [124]

:[123]
pushi.e 0
pop.v.i self.vspeed

:[124]
popenv [123]
pushi.e 38
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[125]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [127]

:[126]
push.s "obj_mettboss_event_443"@17675
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettboss_event_444"@17677
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 40
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[127]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [129]

:[128]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [130]

:[129]
push.e 0

:[130]
bf [132]

:[131]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
push.s "music/f_destroyed2.ogg"@2760
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.shkwv
pushi.e 0
pop.v.i self.pt
push.d 0.5
pop.v.d self.vl
push.v self.pt
push.v self.vl
push.v self.shkwv
call.i caster_loop(argc=3)
popz.v
pushi.e 49
pop.v.i self.con
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1087
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.brt
pushi.e 800
push.v self.brt
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 800
push.v self.brt
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.brt
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 0
pop.v.i self.br

:[132]
push.v self.con
pushi.e 49
cmp.i.v EQ
bf [136]

:[133]
push.v self.br
push.d 0.02
add.d.v
pop.v.v self.br
push.v self.br
push.v self.brt
conv.v.i
pop.v.v [stacktop]self.image_alpha
push.v self.pt
push.d 0.02
add.d.v
pop.v.v self.pt
push.v self.vl
push.d 0.01
add.d.v
pop.v.v self.vl
push.v self.vl
pop.v.v self.vol
push.v self.vl
pushi.e 1
cmp.i.v GT
bf [135]

:[134]
pushi.e 2
push.v self.vl
sub.v.i
pop.v.v self.vol

:[135]
push.v self.pt
push.v self.shkwv
call.i caster_set_pitch(argc=2)
popz.v
push.v self.vol
push.v self.shkwv
call.i caster_set_volume(argc=2)
popz.v

:[136]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [138]

:[137]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [139]

:[138]
push.e 0

:[139]
bf [143]

:[140]
push.v self.brt
conv.v.i
pushenv [142]

:[141]
call.i instance_destroy(argc=0)
popz.v

:[142]
popenv [141]
push.v self.shkwv
call.i caster_free(argc=1)
popz.v
pushi.e 1
pop.v.i global.mercy
pushi.e 94
pop.v.i global.battlegroup
pushi.e 0
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 51
pop.v.i self.con
pushi.e 33
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[143]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [153]

:[144]
push.v self.mett
conv.v.i
pushenv [146]

:[145]
pushi.e 0
pop.v.i self.visible

:[146]
popenv [145]
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 1
pop.v.i 1576.visible
push.v self.sixty
conv.v.i
pushenv [148]

:[147]
call.i instance_destroy(argc=0)
popz.v

:[148]
popenv [147]
push.v self.mc
conv.v.i
pushenv [150]

:[149]
call.i instance_destroy(argc=0)
popz.v

:[150]
popenv [149]
pushi.e 1365
pushenv [152]

:[151]
call.i instance_destroy(argc=0)
popz.v

:[152]
popenv [151]
pushi.e 0
pop.v.i global.interact
pushi.e 43
pop.v.i self.con
pushi.e 199
pop.v.i global.plot
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v
exit.i

:[153]
push.v self.sixty
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[154]
push.v self.sixtyon
pushi.e 1
cmp.i.v EQ
bf [157]

:[155]
push.v self.sixty
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v LT
bf [157]

:[156]
push.v self.sixty
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.05
add.d.v
pop.i.v [stacktop]self.image_alpha

:[157]
push.v self.sixtyflash
pushi.e 1
cmp.i.v EQ
bf [end]

:[158]
push.v self.s_siner
pushi.e 1
add.i.v
pop.v.v self.s_siner
push.v self.s_siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
call.i abs(argc=1)
push.i 8421504
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
push.v self.sixty
conv.v.i
pop.v.v [stacktop]self.image_blend

:[end]
.localvar 0 arguments

:[0]
push.v self.dingus
pushi.e 1
add.i.v
pop.v.v self.dingus
pushglb.v global.plot
pushi.e 24
cmp.i.v EQ
bf [2]

:[1]
push.v self.dingus
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 863
conv.i.v
pushi.e 50
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i 863.facing
pushi.e 90
pop.v.i 863.direction

:[5]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 20
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 3
pushi.e -5
pushi.e 45
pop.v.i [array]global.flag
pushi.e 3
pop.v.i self.conversation

:[10]
push.v self.conversation
pushi.e 9
cmp.i.v EQ
bf [12]

:[11]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 0
pop.v.i global.interact
pushi.e 10
pop.v.i self.conversation

:[15]
push.v self.conversation
pushi.e 6
cmp.i.v EQ
bf [17]

:[16]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.v 863.y
pushi.e 10
add.i.v
pop.v.v 863.y
pushi.e 0
pop.v.i 863.image_index
pushi.e 1210
pop.v.i 863.dsprite
pushi.e 1210
pop.v.i 863.sprite_index
pushi.e 0
pop.v.i 1576.visible
push.d 0.2
pop.v.d 863.image_speed
pushi.e 120
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 7
pop.v.i self.conversation

:[20]
pushi.e 863
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[21]
push.v self.conversation
push.d 7.6
cmp.d.v EQ
bf [23]

:[22]
push.v 863.path_position
pushi.e 1
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 30
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.d 7.7
pop.v.d self.conversation

:[26]
push.v self.conversation
push.d 7.5
cmp.d.v EQ
bf [28]

:[27]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [33]

:[30]
pushi.e 863
pushenv [32]

:[31]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 28
conv.i.v
call.i path_start(argc=4)
popz.v

:[32]
popenv [31]
push.d 7.6
pop.v.d self.conversation

:[33]
push.v self.conversation
pushi.e 8
cmp.i.v EQ
bf [35]

:[34]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [40]

:[37]
pushi.e 0
pop.v.i global.seriousbattle
pushi.e 0
pop.v.i global.interact
pushi.e 863
pushenv [39]

:[38]
call.i instance_destroy(argc=0)
popz.v

:[39]
popenv [38]
pushi.e 25
pop.v.i global.plot
call.i instance_destroy(argc=0)
popz.v

:[40]
pushi.e 863
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[41]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [end]

:[42]
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i self.myinteract
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.facechoice
pushi.e 7
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_torieltrigger12_325"@27564
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torieltrigger12_326"@27566
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torieltrigger12_327"@27568
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_torieltrigger12_328"@27570
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_torieltrigger12_329"@27572
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_torieltrigger12_330"@27574
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "TK"@47563
conv.s.v
push.s "Toriel"@237
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.TK
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.TK
pushi.e 0
cmp.i.v GT
bf [44]

:[43]
push.s "obj_torieltrigger12_336"@27576
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_torieltrigger12_337"@27578
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_torieltrigger12_338"@27580
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_torieltrigger12_339"@27582
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_torieltrigger12_340"@27584
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_torieltrigger12_341"@27586
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg

:[44]
pushi.e -5
pushi.e 202
push.v [array]global.flag
pushi.e 11
cmp.i.v GT
bf [46]

:[45]
pushi.e -5
pushi.e 203
push.v [array]global.flag
pushi.e 11
cmp.i.v GT
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
push.s "obj_torieltrigger12_346"@27588
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_torieltrigger12_347"@27590
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[49]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [51]

:[50]
push.s "obj_torieltrigger12_353"@27592
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torieltrigger12_354"@27594
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[51]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 2
pop.v.i self.conversation

:[end]
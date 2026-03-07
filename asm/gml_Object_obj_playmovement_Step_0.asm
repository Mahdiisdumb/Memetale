.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
push.s "obj_playmovement_206"@21632
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
pushi.e 2
pop.v.i self.con
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "O"@49977
conv.s.v
push.s "Mett"@50548
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [10]

:[6]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 3
sub.i.v
pop.i.v [array]self.view_yview
push.v 1576.y
pushi.e 238
cmp.i.v LT
bf [8]

:[7]
push.v 1576.y
push.d 0.5
add.d.v
pop.v.v 1576.y

:[8]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 0
cmp.i.v LTE
bf [10]

:[9]
pushi.e 9
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[10]
push.v self.con
pushi.e 10
cmp.i.v GT
bf [19]

:[11]
push.v 1576.x
push.v 1576.xprevious
cmp.v.v NEQ
bt [13]

:[12]
push.v 1576.y
push.v 1576.yprevious
cmp.v.v NEQ
b [14]

:[13]
push.e 1

:[14]
bf [16]

:[15]
push.v self.mainmove
pushi.e 1
add.i.v
pop.v.v self.mainmove

:[16]
pushglb.v global.facing
push.v self.face2
cmp.v.v NEQ
bf [18]

:[17]
push.v self.frantic
pushi.e 1
add.i.v
pop.v.v self.frantic

:[18]
pushglb.v global.facing
pop.v.v self.face2

:[19]
push.v self.mainmove
pushi.e 100
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1207
conv.i.v
pushi.e 335
conv.i.v
pushi.e 70
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gm
push.s "mett_operacomment_1"@32520
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting
pushi.e 2
push.v self.gm
conv.v.i
pop.v.i [stacktop]self.myfont
push.v self.mainmove
pushi.e 1
add.i.v
pop.v.v self.mainmove

:[21]
push.v self.mainmove
pushi.e 300
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1207
conv.i.v
pushi.e 335
conv.i.v
pushi.e 70
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gm
push.s "mett_operacomment_2"@32522
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting
pushi.e 2
push.v self.gm
conv.v.i
pop.v.i [stacktop]self.myfont
push.v self.mainmove
pushi.e 1
add.i.v
pop.v.v self.mainmove

:[23]
push.v self.mainmove
pushi.e 500
cmp.i.v EQ
bf [33]

:[24]
pushi.e 1207
conv.i.v
pushi.e 335
conv.i.v
pushi.e 70
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gm
push.s "mett_operacomment_3"@32524
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting
push.v self.unfrantic
pushi.e 15
cmp.i.v GT
bf [26]

:[25]
push.s "mett_operacomment_3_unfrantic"@32526
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting

:[26]
push.v self.touch
pushi.e 300
cmp.i.v GT
bf [28]

:[27]
push.s "mett_operacomment_3_touch"@32528
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting

:[28]
push.v self.frantic
pushi.e 100
cmp.i.v GT
bf [30]

:[29]
push.s "mett_operacomment_3_frantic1"@32530
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting

:[30]
push.v self.frantic
pushi.e 200
cmp.i.v GT
bf [32]

:[31]
push.s "mett_operacomment_3_frantic2"@32532
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting

:[32]
pushi.e 2
push.v self.gm
conv.v.i
pop.v.i [stacktop]self.myfont
push.v self.mainmove
pushi.e 1
add.i.v
pop.v.v self.mainmove

:[33]
push.v self.mainmove
pushi.e 700
cmp.i.v EQ
bf [43]

:[34]
pushi.e 1207
conv.i.v
pushi.e 335
conv.i.v
pushi.e 70
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gm
push.s "mett_operacomment_4"@32534
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting
push.v self.unfrantic
pushi.e 20
cmp.i.v GT
bf [36]

:[35]
push.s "mett_operacomment_4_unfrantic"@32536
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting

:[36]
push.v self.touch
pushi.e 400
cmp.i.v GT
bf [38]

:[37]
push.s "mett_operacomment_4_touch"@32538
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting

:[38]
push.v self.frantic
pushi.e 120
cmp.i.v GT
bf [40]

:[39]
push.s "mett_operacomment_4_frantic"@50553
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting

:[40]
push.v self.frantic
pushi.e 300
cmp.i.v GT
bf [42]

:[41]
push.s "mett_operacomment_4_frantic2"@32542
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting

:[42]
pushi.e 2
push.v self.gm
conv.v.i
pop.v.i [stacktop]self.myfont
push.v self.mainmove
pushi.e 1
add.i.v
pop.v.v self.mainmove

:[43]
push.v self.mainmove
pushi.e 900
cmp.i.v EQ
bf [53]

:[44]
pushi.e 1207
conv.i.v
pushi.e 335
conv.i.v
pushi.e 70
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gm
push.s "mett_operacomment_5"@32544
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting
push.v self.unfrantic
pushi.e 25
cmp.i.v GT
bf [46]

:[45]
push.s "mett_operacomment_5_unfrantic"@32546
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting

:[46]
push.v self.touch
pushi.e 500
cmp.i.v GT
bf [48]

:[47]
push.s "mett_operacomment_5_touch"@32548
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting

:[48]
push.v self.frantic
pushi.e 140
cmp.i.v GT
bf [50]

:[49]
push.s "mett_operacomment_5_frantic"@50554
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting

:[50]
push.v self.frantic
pushi.e 400
cmp.i.v GT
bf [52]

:[51]
push.s "mett_operacomment_5_frantic2"@32552
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting

:[52]
pushi.e 2
push.v self.gm
conv.v.i
pop.v.i [stacktop]self.myfont
push.v self.mainmove
pushi.e 1
add.i.v
pop.v.v self.mainmove

:[53]
push.v self.mainmove
pushi.e 1100
cmp.i.v EQ
bf [55]

:[54]
pushi.e 1207
conv.i.v
pushi.e 340
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gm
push.s "mett_operacomment_6"@32554
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting
pushi.e 2
push.v self.gm
conv.v.i
pop.v.i [stacktop]self.myfont
push.v self.mainmove
pushi.e 1
add.i.v
pop.v.v self.mainmove

:[55]
push.v self.mainmove
pushi.e 1300
cmp.i.v EQ
bf [57]

:[56]
pushi.e 1207
conv.i.v
pushi.e 335
conv.i.v
pushi.e 70
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gm
push.s "mett_operacomment_7"@32556
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting
pushi.e 2
push.v self.gm
conv.v.i
pop.v.i [stacktop]self.myfont
push.v self.mainmove
pushi.e 1
add.i.v
pop.v.v self.mainmove

:[57]
push.v self.mainmove
pushi.e 1500
cmp.i.v EQ
bf [59]

:[58]
pushi.e 1207
conv.i.v
pushi.e 335
conv.i.v
pushi.e 70
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gm
push.s "mett_operacomment_8"@32558
conv.s.v
call.i scr_gettext(argc=1)
push.v self.gm
conv.v.i
pop.v.v [stacktop]self.sting
pushi.e 2
push.v self.gm
conv.v.i
pop.v.i [stacktop]self.myfont
push.v self.mainmove
pushi.e 1
add.i.v
pop.v.v self.mainmove

:[59]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [61]

:[60]
pushi.e 280
pop.v.i 1576.y
push.s "music/mettmusical1.ogg"@2704
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.opera1
push.s "music/mettmusical2.ogg"@2705
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.opera2
push.s "music/mettmusical3.ogg"@2706
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.opera3
push.s "music/mettmusical4.ogg"@2707
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.opera4
pushi.e 1209
conv.i.v
pushi.e 112
conv.i.v
pushi.e 144
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mett
pushi.e -45
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.image_angle
push.d 1.5
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 14
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 11
pop.v.i self.con

:[61]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [63]

:[62]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 13
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[63]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [65]

:[64]
pushi.e 1185
conv.i.v
pushi.e 220
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.wall1
pushi.e 1
push.v self.wall1
conv.v.i
pop.v.i [stacktop]self.canttalk
pushi.e 7
push.v self.wall1
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 1185
conv.i.v
pushi.e 220
conv.i.v
pushi.e 300
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.wall2
pushi.e 1
push.v self.wall2
conv.v.i
pop.v.i [stacktop]self.canttalk
pushi.e 7
push.v self.wall2
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.s "obj_playmovement_348"@21634
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
pop.v.v self.di
pushi.e 1
push.v self.di
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 17
pop.v.i self.con

:[65]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [67]

:[66]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e 18
pop.v.i self.con
push.d 2.5
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[70]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [73]

:[71]
push.v self.mett
conv.v.i
push.v [stacktop]self.image_angle
pushi.e 0
cmp.i.v LT
bf [73]

:[72]
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.image_angle
pushi.e 3
add.i.v
pop.i.v [stacktop]self.image_angle

:[73]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [75]

:[74]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 20
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[75]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [79]

:[76]
push.s "obj_playmovement_375"@21636
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.already
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
pushi.e 870
pop.v.i global.msc

:[78]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.di
pushi.e 1
push.v self.di
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 26
pop.v.i self.con

:[79]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [81]

:[80]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
pushi.e 0
pop.v.i global.msc
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.opera1
call.i caster_play(argc=3)
popz.v
pushi.e 1832
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 27
pop.v.i self.con

:[84]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [86]

:[85]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 130
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 29
pop.v.i self.con

:[86]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [88]

:[87]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 1
add.i.v
pop.i.v [array]self.view_yview

:[88]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [90]

:[89]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 31
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[90]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [92]

:[91]
push.d 0.1
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.image_speed
push.d 0.2
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.vspeed
push.d -0.5
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 180
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 33
pop.v.i self.con

:[92]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [96]

:[93]
pushi.e 1210
conv.i.v
push.v self.mett
conv.v.i
push.v [stacktop]self.y
push.v self.mett
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.mett2
push.v self.mett
conv.v.i
pushenv [95]

:[94]
call.i instance_destroy(argc=0)
popz.v

:[95]
popenv [94]
push.v self.mett2
pop.v.v self.mett
pushi.e 8
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 35
pop.v.i self.con

:[96]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [98]

:[97]
pushi.e 0
pop.v.i global.interact
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.opera2
call.i caster_play(argc=3)
popz.v
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
push.d 0.5
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.hspeed
push.d 0.4
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.vspeed
pushi.e 38
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.drawtext

:[98]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [100]

:[99]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 40
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[100]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [102]

:[101]
pushi.e 0
pop.v.i self.drawtext
pushi.e 1
pop.v.i self.drawtext2
pushi.e 1
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
push.d -0.25
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 42
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[102]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [104]

:[103]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 44
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[104]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [106]

:[105]
pushi.e 1
pop.v.i self.drawtext
pushi.e 0
pop.v.i self.drawtext2
push.s "mett_opera1_3"@32468
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.string1
push.s "mett_opera1_4"@32470
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.string2
pushi.e 60
pop.v.i self.strtime1
pushi.e 60
pop.v.i self.strtime2
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
push.d -0.5
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.vspeed
push.d -1.5
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 46
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[106]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [108]

:[107]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 48
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[108]
push.v self.con
pushi.e 49
cmp.i.v EQ
bf [110]

:[109]
pushi.e 1
pop.v.i self.drawtext2
pushi.e 0
pop.v.i self.drawtext
push.d 0.5
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.vspeed
push.d -0.5
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 2
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
pushi.e 50
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[110]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [112]

:[111]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 52
pop.v.i self.con
pushi.e 75
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[112]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [114]

:[113]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.opera2
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i self.drawtext
pushi.e 0
pop.v.i self.drawtext2
push.s "mett_opera1_5"@32472
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.string1
push.s "mett_opera1_6"@32474
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.string2
pushi.e 57
pop.v.i self.strtime1
pushi.e 57
pop.v.i self.strtime2
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
push.d -0.5
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 54
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[114]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [116]

:[115]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 56
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[116]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [118]

:[117]
pushi.e 1
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
pushi.e 1
pop.v.i self.drawtext2
pushi.e 0
pop.v.i self.drawtext
pushi.e 58
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[118]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [120]

:[119]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 60
pop.v.i self.con
pushi.e 75
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[120]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [122]

:[121]
pushi.e 1
pop.v.i self.drawtext
pushi.e 0
pop.v.i self.drawtext2
push.s "mett_opera1_7"@32476
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.string1
push.s "mett_opera1_8"@32478
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.string2
pushi.e 63
pop.v.i self.strtime1
pushi.e 63
pop.v.i self.strtime2
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
push.d -0.25
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 62
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[122]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [124]

:[123]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 64
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[124]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [126]

:[125]
push.d -0.5
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 3
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
pushi.e 1
pop.v.i self.drawtext2
pushi.e 0
pop.v.i self.drawtext
pushi.e 66
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[126]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [128]

:[127]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 68
pop.v.i self.con
pushi.e 1203
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cher
pushi.e 75
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[128]
push.v self.con
pushi.e 69
cmp.i.v EQ
bf [130]

:[129]
pushi.e 1
pop.v.i self.drawtext
pushi.e 0
pop.v.i self.drawtext2
push.s "mett_opera1_9"@32480
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.string1
push.s "mett_opera1_10"@32482
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.string2
pushi.e 60
pop.v.i self.strtime1
pushi.e 60
pop.v.i self.strtime2
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.opera3
call.i caster_play(argc=3)
popz.v
push.d 0.25
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 70
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[130]
push.v self.con
pushi.e 71
cmp.i.v EQ
bf [132]

:[131]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 72
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[132]
push.v self.con
pushi.e 73
cmp.i.v EQ
bf [134]

:[133]
push.d 0.25
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 1
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
pushi.e 1
pop.v.i self.drawtext2
pushi.e 0
pop.v.i self.drawtext
pushi.e 74
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[134]
push.v self.con
pushi.e 75
cmp.i.v EQ
bf [136]

:[135]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 75.5
pop.v.d self.con
pushi.e 75
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[136]
push.v self.con
push.d 76.5
cmp.d.v EQ
bf [138]

:[137]
pushi.e 1
pop.v.i self.drawtext
pushi.e 0
pop.v.i self.drawtext2
push.s "mett_opera1_11"@32484
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.string1
push.s "mett_opera1_12"@32486
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.string2
pushi.e 60
pop.v.i self.strtime1
pushi.e 84
pop.v.i self.strtime2
pushi.e 4
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
push.d 0.25
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 77
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[138]
push.v self.con
pushi.e 78
cmp.i.v EQ
bf [140]

:[139]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 79
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[140]
push.v self.con
pushi.e 80
cmp.i.v EQ
bf [142]

:[141]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d -0.5
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.vspeed
pushi.e 5
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
pushi.e 1
pop.v.i self.drawtext2
pushi.e 0
pop.v.i self.drawtext
pushi.e 81
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[142]
push.v self.con
pushi.e 82
cmp.i.v EQ
bf [144]

:[143]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 83
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[144]
push.v self.con
pushi.e 84
cmp.i.v EQ
bf [146]

:[145]
pushi.e 1
pop.v.i self.drawtext
pushi.e 0
pop.v.i self.drawtext2
push.s "mett_opera1_13"@32488
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.string1
push.s "mett_opera1_14"@32490
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.string2
pushi.e 60
pop.v.i self.strtime1
pushi.e 66
pop.v.i self.strtime2
pushi.e 6
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.opera4
call.i caster_play(argc=3)
popz.v
push.d 0.75
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 85
pop.v.i self.con
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[146]
push.v self.con
pushi.e 86
cmp.i.v EQ
bf [148]

:[147]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 87
pop.v.i self.con
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[148]
push.v self.con
pushi.e 88
cmp.i.v EQ
bf [150]

:[149]
push.d 0.4
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.hspeed
push.d 0.6
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.vspeed
pushi.e 7
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
pushi.e 1
pop.v.i self.drawtext2
pushi.e 0
pop.v.i self.drawtext
pushi.e 89
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[150]
push.v self.con
pushi.e 90
cmp.i.v EQ
bf [152]

:[151]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 91
pop.v.i self.con
pushi.e 75
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[152]
push.v self.con
pushi.e 92
cmp.i.v EQ
bf [154]

:[153]
pushi.e 1
pop.v.i self.drawtext
pushi.e 0
pop.v.i self.drawtext2
push.s "mett_opera1_15"@32492
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.string1
push.s "mett_opera1_16"@32494
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.string2
pushi.e 54
pop.v.i self.strtime1
pushi.e 90
pop.v.i self.strtime2
pushi.e 8
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
push.d -0.5
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 93
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[154]
push.v self.con
pushi.e 94
cmp.i.v EQ
bf [158]

:[155]
push.v self.cher
conv.v.i
pushenv [157]

:[156]
call.i instance_destroy(argc=0)
popz.v

:[157]
popenv [156]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 95
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[158]
push.v self.con
pushi.e 96
cmp.i.v EQ
bf [160]

:[159]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 9
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
pushi.e 1
pop.v.i self.drawtext2
pushi.e 0
pop.v.i self.drawtext
pushi.e 97
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[160]
push.v self.con
pushi.e 98
cmp.i.v EQ
bf [162]

:[161]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 99
pop.v.i self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[162]
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [164]

:[163]
pushi.e 1365
conv.i.v
pushi.e 150
conv.i.v
pushi.e 90
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.comet
pushi.e 1829
push.v self.comet
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.comet
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.comet
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 0
pop.v.i self.drawtext2
pushi.e 105
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[164]
push.v self.con
pushi.e 105
cmp.i.v EQ
bf [170]

:[165]
push.v self.comet
call.i instance_exists(argc=1)
conv.v.b
bf [170]

:[166]
push.v self.comet
conv.v.i
push.v [stacktop]self.image_index
pushi.e 8
cmp.i.v GT
bf [170]

:[167]
push.v self.comet
conv.v.i
pushenv [169]

:[168]
call.i instance_destroy(argc=0)
popz.v

:[169]
popenv [168]

:[170]
push.v self.con
pushi.e 106
cmp.i.v EQ
bf [174]

:[171]
push.v self.opera1
call.i caster_stop(argc=1)
popz.v
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
pop.v.i global.interact
push.s "obj_playmovement_791"@21638
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_playmovement_792"@21640
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.skip
pushi.e 1
cmp.i.v EQ
bf [173]

:[172]
push.s "obj_playmovement_795"@21642
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_playmovement_796"@21644
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_playmovement_797"@21646
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_playmovement_798"@21648
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[173]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 120
pop.v.i self.con

:[174]
push.v self.con
pushi.e 120
cmp.i.v EQ
bf [176]

:[175]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [177]

:[176]
push.e 0

:[177]
bf [183]

:[178]
pushi.e 1
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.mett
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
pushi.e 19
add.i.v
cmp.v.v LT
bf [180]

:[179]
pushi.e -1
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed

:[180]
push.v self.skip
pushi.e 1
cmp.i.v EQ
bf [182]

:[181]
pushi.e -3
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed

:[182]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 10
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
pushi.e 121
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[183]
push.v self.con
pushi.e 122
cmp.i.v EQ
bf [185]

:[184]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 11
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
pushi.e 123
pop.v.i self.con
push.s "obj_playmovement_821"@21650
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

:[185]
push.v self.con
pushi.e 123
cmp.i.v EQ
bf [187]

:[186]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [188]

:[187]
push.e 0

:[188]
bf [190]

:[189]
pushi.e 12
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
pushi.e 1365
conv.i.v
push.v 1576.y
pushi.e 10
add.i.v
push.v 1576.x
pushi.e 4
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blackbox
pushi.e 1084
push.v self.blackbox
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.blackbox
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 12
push.v self.blackbox
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 14
push.v self.blackbox
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.i 1000000
push.v self.blackbox
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.blackbox
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 124
pop.v.i self.con

:[190]
push.v self.con
pushi.e 125
cmp.i.v EQ
bf [192]

:[191]
pushi.e 1
pop.v.i global.phasing
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 126
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[192]
push.v self.con
pushi.e 126
cmp.i.v EQ
bf [194]

:[193]
push.v 1576.y
pushi.e 3
add.i.v
pop.v.v 1576.y
push.v 1576.image_alpha
push.d 0.05
sub.d.v
pop.v.v 1576.image_alpha

:[194]
push.v self.con
pushi.e 127
cmp.i.v EQ
bf [196]

:[195]
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 12
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 128
pop.v.i self.con
pushi.e 167
pop.v.i global.plot

:[196]
push.v self.con
pushi.e 240
cmp.i.v EQ
bf [198]

:[197]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [199]

:[198]
push.e 0

:[199]
bf [201]

:[200]
pushi.e 1
pop.v.i self.skip
pushi.e 241
pop.v.i self.con

:[201]
push.v self.con
pushi.e 241
cmp.i.v EQ
bf [203]

:[202]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [204]

:[203]
push.e 0

:[204]
bf [206]

:[205]
pushi.e 0
pop.v.i global.msc
pushi.e 3
conv.i.v
push.d 0.5
conv.d.v
push.v self.opera1
call.i caster_play(argc=3)
popz.v
pushi.e 1832
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.5
push.v self.mett
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 4
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 242
pop.v.i self.con

:[206]
push.v self.con
pushi.e 243
cmp.i.v EQ
bf [208]

:[207]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 5
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 32
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 244
pop.v.i self.con

:[208]
push.v self.con
pushi.e 244
cmp.i.v EQ
bf [210]

:[209]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 4
add.i.v
pop.i.v [array]self.view_yview

:[210]
push.v self.con
pushi.e 245
cmp.i.v EQ
bf [end]

:[211]
pushi.e 1210
conv.i.v
push.v self.mett
conv.v.i
push.v [stacktop]self.y
push.v self.mett
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.mett2
push.v self.mett
conv.v.i
pushenv [213]

:[212]
call.i instance_destroy(argc=0)
popz.v

:[213]
popenv [212]
push.v self.mett2
pop.v.v self.mett
pushi.e 8
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.arm
pushi.e 106
pop.v.i self.con

:[end]
.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1117
conv.i.v
push.v 1576.y
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.mkid
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.1
pop.v.d self.con
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushglb.v global.currentsong
call.i caster_get_volume(argc=1)
pop.v.v self.vol
push.v self.vol
pop.v.v self.vol2

:[2]
push.v self.con
push.d 1.1
cmp.d.v EQ
bf [4]

:[3]
push.d 0.2
pop.v.d self.con
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[4]
push.v self.con
push.d 1.2
cmp.d.v EQ
bf [6]

:[5]
push.d 1.3
pop.v.d self.con
push.s "obj_monsterkidtrigger7_124"@18415
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v

:[6]
push.v self.con
push.d 1.3
cmp.d.v EQ
bf [8]

:[7]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 2
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[11]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [18]

:[15]
push.v self.vol
pushi.e 0
cmp.i.v GT
bf [17]

:[16]
push.v self.vol
push.d 0.02
sub.d.v
pop.v.v self.vol

:[17]
push.v self.vol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
pushi.e -1
push.l 0
conv.l.i
dup.i 1
push.v [array]self.view_xview
pushi.e 2
sub.i.v
pop.i.v [array]self.view_xview

:[18]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [21]

:[19]
pushi.e 3
pop.v.i global.facing
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
push.d 0.2
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 4
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 13
push.v [array]global.tempvalue
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 13
pop.v.i self.con
push.d 0.25
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 3
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[21]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 6
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[23]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.2
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 8
pop.v.i self.con
pushi.e 130
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [27]

:[26]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 10
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[27]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [29]

:[28]
push.v self.mkid
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 11
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[29]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [31]

:[30]
push.v self.mkid
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 13
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[31]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [36]

:[32]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.mkid
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 623
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 15
pop.v.i self.con
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [35]

:[33]
pushi.e 150
pop.v.i self.con
pushi.e 0
pop.v.i global.msc
push.s "obj_monsterkidtrigger7_214"@18417
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_215"@18419
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_216"@18421
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_217"@18422
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_218"@18424
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_219"@18425
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_220"@18427
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_221"@18429
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e -5
pushi.e 13
push.v [array]global.tempvalue
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_monsterkidtrigger7_225"@18431
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_226"@18433
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 157
pop.v.i self.con

:[35]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[36]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [38]

:[37]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 16
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[41]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [43]

:[42]
pushi.e -1
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 18
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 0.2
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed

:[43]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [45]

:[44]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 20
pop.v.i self.con

:[45]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [47]

:[46]
push.v self.mkid
conv.v.i
push.v [stacktop]self.lsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e -3
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 0.5
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
push.d 20.1
pop.v.d self.con

:[47]
push.v self.con
push.d 21.1
cmp.d.v EQ
bf [49]

:[48]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 1480
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
pop.v.i self.mkiddex
pushi.e 22
pop.v.i self.con
pushi.e 18
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[49]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [55]

:[50]
push.v self.mkiddex
push.d 0.25
add.d.v
pop.v.v self.mkiddex
push.v self.mkiddex
pushi.e 2
cmp.i.v GTE
bf [52]

:[51]
pushi.e 0
pop.v.i self.mkiddex

:[52]
push.v self.mkiddex
pushi.e 1
cmp.i.v LT
bf [54]

:[53]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
b [55]

:[54]
pushi.e 1
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index

:[55]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [57]

:[56]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.mkid
conv.v.i
push.v [stacktop]self.usprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e -1
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 2
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 24
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[57]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [59]

:[58]
push.v self.mkid
conv.v.i
push.v [stacktop]self.usprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 26
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[59]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [61]

:[60]
push.s "obj_monsterkidtrigger7_309"@18435
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1346
conv.i.v
push.v self.mkid
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.mkid
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.interact
push.d 0.5
push.v self.interact
conv.v.i
pop.v.d [stacktop]self.image_xscale
push.v self.interact
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 5
add.i.v
pop.i.v [stacktop]self.x
call.i scr_regulartext(argc=0)
popz.v
pushi.e 28
pop.v.i self.con

:[61]
push.v self.con
pushi.e 28
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
pushi.e 1119
conv.i.v
pushi.e 82
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.undyne
push.v self.undyne
conv.v.i
push.v [stacktop]self.rsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 29
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[66]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [68]

:[67]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 31
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[68]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [70]

:[69]
pushi.e 1531
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 33
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[70]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [72]

:[71]
push.v self.undyne
conv.v.i
push.v [stacktop]self.rsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
pop.v.i global.interact
pushi.e 35
pop.v.i self.con
pushi.e 1
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 808
conv.i.v
push.v 1576.y
pushi.e 10
add.i.v
pushi.e -1
push.l 0
conv.l.i
push.v [array]self.view_xview
pushi.e 20
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.doorb
pushi.e 807
conv.i.v
push.v 1576.y
pushi.e 10
add.i.v
pushi.e -1
push.l 0
conv.l.i
push.v [array]self.view_xview
pushi.e -1
push.l 0
conv.l.i
push.v [array]self.view_wview
add.v.v
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.doora
pushi.e 0
pop.v.i self.undynetimer
pushi.e 0
pop.v.i self.finaltimer
pushi.e 0
pop.v.i self.mkidtalk
pushi.e 0
pop.v.i self.charge
push.v 1576.x
pop.v.v self.samex

:[72]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [109]

:[73]
pushi.e 0
pop.v.i self.ll
push.v self.finaltimer
pushi.e 1
add.i.v
pop.v.v self.finaltimer
push.v self.undynetimer
pushi.e 1
add.i.v
pop.v.v self.undynetimer
push.v self.undynetimer
pushi.e 60
cmp.i.v GT
bf [75]

:[74]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed

:[75]
push.v self.undynetimer
pushi.e 75
cmp.i.v GT
bf [77]

:[76]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
pop.v.i self.undynetimer

:[77]
push.v self.finaltimer
pushi.e 150
cmp.i.v GT
bf [81]

:[78]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [81]

:[79]
push.v self.mkidtalk
pushi.e 0
cmp.i.v EQ
bf [81]

:[80]
push.v 1576.x
push.v self.samex
sub.v.v
call.i abs(argc=1)
pushi.e 10
cmp.i.v LT
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
pushi.e 1
pop.v.i self.mkidtalk
push.s "obj_monsterkidtrigger7_379"@18437
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 1
pop.v.i global.interact

:[84]
push.v self.mkidtalk
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
pushi.e 0
pop.v.i global.interact
pushi.e 2
pop.v.i self.mkidtalk

:[89]
push.v self.finaltimer
pushi.e 500
cmp.i.v GT
bf [91]

:[90]
pushi.e 1
pop.v.i self.ll

:[91]
push.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 40
add.i.v
cmp.v.v LT
bf [93]

:[92]
pushi.e 1
pop.v.i self.ll
pushi.e 1
pop.v.i self.charge

:[93]
pushi.e 0
pop.v.i self.able
push.v self.ll
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
pushi.e 1
pop.v.i self.able

:[98]
push.v self.ll
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
push.v self.mkidtalk
pushi.e 1
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [103]

:[102]
pushi.e 1
pop.v.i self.able

:[103]
push.v self.able
pushi.e 1
cmp.i.v EQ
bf [109]

:[104]
pushi.e 780
pushenv [106]

:[105]
call.i instance_destroy(argc=0)
popz.v

:[106]
popenv [105]
pushi.e 784
pushenv [108]

:[107]
call.i instance_destroy(argc=0)
popz.v

:[108]
popenv [107]
pushi.e 50
pop.v.i self.con
pushi.e 1
pop.v.i global.interact

:[109]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [111]

:[110]
push.v self.undyne
conv.v.i
push.v [stacktop]self.dsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 0.25
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
push.s "obj_monsterkidtrigger7_417"@18439
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 51
pop.v.i self.con

:[111]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [113]

:[112]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [114]

:[113]
push.e 0

:[114]
bf [116]

:[115]
push.d 0.5
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.vspeed
push.d 50.1
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[116]
push.v self.con
push.d 51.1
cmp.d.v EQ
bf [118]

:[117]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 50.2
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[118]
push.v self.con
push.d 51.2
cmp.d.v EQ
bf [120]

:[119]
pushi.e 1339
conv.i.v
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
pushi.e 15
sub.i.v
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 4
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 54
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[120]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [124]

:[121]
push.v self.blcon
conv.v.i
pushenv [123]

:[122]
call.i instance_destroy(argc=0)
popz.v

:[123]
popenv [122]
pushi.e 1518
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 56
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[124]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [126]

:[125]
pushi.e 1519
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 14
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -8
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 0.6
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.gravity
pushi.e 270
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.gravity_direction
push.d 0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 58
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[126]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [128]

:[127]
pushi.e 12
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 60
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[128]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [130]

:[129]
pushi.e 16
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 62
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[130]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [132]

:[131]
pushi.e 47
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 69
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[132]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [136]

:[133]
pushi.e 0
pop.v.i global.facing
push.s "obj_monsterkidtrigger7_490"@18441
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_491"@18443
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_492"@18445
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_493"@18447
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_494"@18449
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.charge
pushi.e 1
cmp.i.v EQ
bf [135]

:[134]
push.s "obj_monsterkidtrigger7_495"@18451
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[135]
push.s "obj_monsterkidtrigger7_496"@18453
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_497"@18455
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_498"@18457
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_499"@18458
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_500"@18460
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_501"@18462
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 71
pop.v.i self.con

:[136]
push.v self.con
pushi.e 71
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
bf [141]

:[140]
pushi.e 2
pushi.e -5
pushi.e 98
pop.v.i [array]global.flag
pushi.e 72
pop.v.i self.con

:[141]
push.v self.con
pushi.e 72
cmp.i.v EQ
bf [143]

:[142]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [144]

:[143]
push.e 0

:[144]
bf [151]

:[145]
pushi.e 73
pop.v.i self.con
push.v 1576.x
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v 1576.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i round(argc=1)
pop.v.v self.idealxview
push.v self.idealxview
pushbltn.v self.room_width
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
sub.v.v
cmp.v.v GTE
bf [147]

:[146]
pushbltn.v self.room_width
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
sub.v.v
pushi.e 2
sub.i.v
pop.v.v self.idealxview

:[147]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.idealxview
cmp.v.v GT
bf [149]

:[148]
pushi.e 0
pop.v.i self.xdir
b [150]

:[149]
pushi.e 1
pop.v.i self.xdir

:[150]
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[151]
push.v self.con
pushi.e 74
cmp.i.v EQ
bf [163]

:[152]
push.v self.xdir
pushi.e 1
cmp.i.v EQ
bf [154]

:[153]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 4
add.i.v
pop.i.v [array]self.view_xview
b [155]

:[154]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 4
sub.i.v
pop.i.v [array]self.view_xview

:[155]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.idealxview
sub.v.v
call.i abs(argc=1)
pushi.e 5
cmp.i.v LTE
bf [163]

:[156]
push.v self.mkid
conv.v.i
pushenv [158]

:[157]
call.i instance_destroy(argc=0)
popz.v

:[158]
popenv [157]
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 0
pop.v.i 1576.cutscene
push.v self.doora
conv.v.i
pushenv [160]

:[159]
call.i instance_destroy(argc=0)
popz.v

:[160]
popenv [159]
push.v self.doorb
conv.v.i
pushenv [162]

:[161]
call.i instance_destroy(argc=0)
popz.v

:[162]
popenv [161]
pushi.e 120
pop.v.i global.plot
pushglb.v global.currentsong
call.i caster_free(argc=1)
popz.v
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[163]
push.v self.con
pushi.e 80
cmp.i.v EQ
bf [167]

:[164]
push.v self.interact
conv.v.i
pushenv [166]

:[165]
call.i instance_destroy(argc=0)
popz.v

:[166]
popenv [165]
pushi.e 1
pop.v.i global.interact
pushi.e 81
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[167]
push.v self.con
pushi.e 82
cmp.i.v EQ
bf [175]

:[168]
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 20
add.i.v
cmp.v.v GT
bf [170]

:[169]
pushi.e -1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.12
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed

:[170]
push.v self.mkid
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
cmp.v.v LTE
bf [172]

:[171]
push.d -0.8
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.hspeed

:[172]
push.v self.mkid
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
cmp.v.v GT
bf [174]

:[173]
push.d 0.8
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.hspeed

:[174]
pushi.e -1
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 83
pop.v.i self.con
pushi.e 28
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[175]
push.v self.con
pushi.e 84
cmp.i.v EQ
bf [180]

:[176]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.mkid
conv.v.i
push.v [stacktop]self.x
call.i round(argc=1)
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.x
push.v 1576.x
push.v self.mkid
conv.v.i
push.v [stacktop]self.x
cmp.v.v GT
bf [178]

:[177]
push.v self.mkid
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
b [179]

:[178]
push.v self.mkid
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[179]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 85
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[180]
push.v self.con
pushi.e 86
cmp.i.v EQ
bf [182]

:[181]
push.d 0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.hspeed
push.d 0.25
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1339
conv.i.v
push.v self.mkid
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.mkid
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 87
pop.v.i self.con
pushi.e 16
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[182]
push.v self.con
pushi.e 88
cmp.i.v EQ
bf [186]

:[183]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.blcon
conv.v.i
pushenv [185]

:[184]
call.i instance_destroy(argc=0)
popz.v

:[185]
popenv [184]
push.v self.mkid
conv.v.i
push.v [stacktop]self.lsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 89
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[186]
push.v self.con
pushi.e 90
cmp.i.v EQ
bf [191]

:[187]
push.v self.mkid
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
cmp.v.v GT
bf [189]

:[188]
pushi.e -5
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
b [190]

:[189]
push.d -0.5
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.hspeed

:[190]
push.d 0.25
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 91
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[191]
push.v self.con
pushi.e 92
cmp.i.v EQ
bf [193]

:[192]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 93
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[193]
push.v self.con
pushi.e 94
cmp.i.v EQ
bf [195]

:[194]
push.v self.mkid
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.25
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
push.s "obj_monsterkidtrigger7_643"@18464
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_644"@18466
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_645"@18468
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 95
pop.v.i self.con

:[195]
push.v self.con
pushi.e 95
cmp.i.v EQ
bf [197]

:[196]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [198]

:[197]
push.e 0

:[198]
bf [200]

:[199]
pushi.e 96
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[200]
push.v self.con
pushi.e 97
cmp.i.v EQ
bf [202]

:[201]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
push.d -0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.hspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 98
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[202]
push.v self.con
pushi.e 99
cmp.i.v EQ
bf [204]

:[203]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 98.1
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[204]
push.v self.con
push.d 99.1
cmp.d.v EQ
bf [206]

:[205]
push.d -0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.hspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 98.2
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[206]
push.v self.con
push.d 99.2
cmp.d.v EQ
bf [208]

:[207]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 100
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[208]
push.v self.con
pushi.e 101
cmp.i.v EQ
bf [210]

:[209]
push.v self.undyne
conv.v.i
push.v [stacktop]self.lsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e -2
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 102
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[210]
push.v self.con
pushi.e 103
cmp.i.v EQ
bf [214]

:[211]
push.v self.undyne
conv.v.i
pushenv [213]

:[212]
call.i instance_destroy(argc=0)
popz.v

:[213]
popenv [212]
pushi.e 104
pop.v.i self.con
push.v self.mkid
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[214]
push.v self.con
pushi.e 105
cmp.i.v EQ
bf [216]

:[215]
push.s "obj_monsterkidtrigger7_714"@18470
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_715"@18472
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_716"@18474
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_717"@18476
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_718"@18478
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_719"@18480
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 106
pop.v.i self.con
call.i scr_regulartext(argc=0)
popz.v

:[216]
push.v self.con
pushi.e 106
cmp.i.v EQ
bf [218]

:[217]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [219]

:[218]
push.e 0

:[219]
bf [221]

:[220]
pushi.e 107
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[221]
push.v self.con
pushi.e 108
cmp.i.v EQ
bf [223]

:[222]
push.v self.mkid
conv.v.i
push.v [stacktop]self.lsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.25
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e -1
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 109
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[223]
push.v self.con
pushi.e 110
cmp.i.v EQ
bf [225]

:[224]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 111
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[225]
push.v self.con
pushi.e 112
cmp.i.v EQ
bf [227]

:[226]
push.v self.mkid
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 113
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[227]
push.v self.con
pushi.e 114
cmp.i.v EQ
bf [229]

:[228]
push.s "obj_monsterkidtrigger7_757"@18482
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 115
pop.v.i self.con

:[229]
push.v self.con
pushi.e 115
cmp.i.v EQ
bf [231]

:[230]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [232]

:[231]
push.e 0

:[232]
bf [237]

:[233]
pushi.e -4
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.5
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.mkid
conv.v.i
push.v [stacktop]self.lsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 116
pop.v.i self.con
push.v 1576.x
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v 1576.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i round(argc=1)
pop.v.v self.idealxview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.idealxview
cmp.v.v GT
bf [235]

:[234]
pushi.e 0
pop.v.i self.xdir
b [236]

:[235]
pushi.e 1
pop.v.i self.xdir

:[236]
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[237]
push.v self.con
pushi.e 117
cmp.i.v EQ
bf [249]

:[238]
push.v self.xdir
pushi.e 1
cmp.i.v EQ
bf [240]

:[239]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 2
add.i.v
pop.i.v [array]self.view_xview
b [241]

:[240]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 2
sub.i.v
pop.i.v [array]self.view_xview

:[241]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.idealxview
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LTE
bf [249]

:[242]
push.v self.mkid
conv.v.i
pushenv [244]

:[243]
call.i instance_destroy(argc=0)
popz.v

:[244]
popenv [243]
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 0
pop.v.i 1576.cutscene
push.v self.doora
conv.v.i
pushenv [246]

:[245]
call.i instance_destroy(argc=0)
popz.v

:[246]
popenv [245]
push.v self.doorb
conv.v.i
pushenv [248]

:[247]
call.i instance_destroy(argc=0)
popz.v

:[248]
popenv [247]
pushi.e 120
pop.v.i global.plot
pushi.e 1
pushi.e -5
pushi.e 98
pop.v.i [array]global.flag
pushglb.v global.currentsong
call.i caster_free(argc=1)
popz.v
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[249]
push.v self.con
pushi.e 150
cmp.i.v EQ
bf [251]

:[250]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [252]

:[251]
push.e 0

:[252]
bf [255]

:[253]
push.v 784.stringno
pushi.e 6
cmp.i.v EQ
bf [255]

:[254]
pushi.e 2
pop.v.i global.facing

:[255]
push.v self.con
pushi.e 150
cmp.i.v EQ
bf [257]

:[256]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [258]

:[257]
push.e 0

:[258]
bf [260]

:[259]
pushi.e 3
pop.v.i global.facing
pushi.e -2
pop.v.i 1576.hspeed
pushi.e 1
pop.v.i 1576.moving
push.d 0.25
pop.v.d 1576.image_speed
pushi.e 151
pop.v.i self.con
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[260]
push.v self.con
pushi.e 152
cmp.i.v EQ
bf [262]

:[261]
pushi.e -2
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1487
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 153
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[262]
push.v self.con
pushi.e 154
cmp.i.v EQ
bf [264]

:[263]
pushi.e 0
pop.v.i 1576.hspeed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 1489
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 155
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[264]
push.v self.con
pushi.e 156
cmp.i.v EQ
bf [266]

:[265]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
push.s "obj_monsterkidtrigger7_836"@18484
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_837"@18486
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_838"@18488
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_839"@18489
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_840"@18491
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_841"@18493
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_842"@18495
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_843"@18497
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_844"@18499
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
popz.v
pushi.e 157
pop.v.i self.con

:[266]
push.v self.con
pushi.e 157
cmp.i.v EQ
bf [268]

:[267]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [269]

:[268]
push.e 0

:[269]
bf [274]

:[270]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [272]

:[271]
pushi.e 1486
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[272]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [274]

:[273]
pushi.e 1489
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[274]
push.v self.con
pushi.e 157
cmp.i.v EQ
bf [276]

:[275]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [277]

:[276]
push.e 0

:[277]
bf [279]

:[278]
pushi.e 1489
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 91
pop.v.i global.battlegroup
pushi.e 1
pop.v.i global.seriousbattle
pushi.e 1
pop.v.i global.mercy
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 158
pop.v.i self.con
pushi.e 32
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[279]
push.v self.con
pushi.e 159
cmp.i.v EQ
bf [281]

:[280]
pushi.e 0
pop.v.i global.seriousbattle
pushi.e 0
pop.v.i global.mercy
pushi.e 1
pop.v.i global.interact
pushi.e 160
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[281]
push.v self.con
pushi.e 160
cmp.i.v EQ
bf [287]

:[282]
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
push.d 160.1
pop.v.d self.con
pushi.e 1
pop.v.i global.interact
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [286]

:[283]
push.v self.mkid
conv.v.i
pushenv [285]

:[284]
call.i instance_destroy(argc=0)
popz.v

:[285]
popenv [284]
pushi.e 170
pop.v.i self.con
pushi.e -1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[286]
pushi.e 1
pop.v.i global.interact

:[287]
push.v self.con
push.d 160.1
cmp.d.v EQ
bf [289]

:[288]
pushi.e 1
pop.v.i global.interact

:[289]
push.v self.con
push.d 161.1
cmp.d.v EQ
bf [291]

:[290]
pushi.e 1
pop.v.i global.interact
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
push.s "obj_monsterkidtrigger7_901"@18501
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger7_902"@18503
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
pushi.e 162
pop.v.i self.con

:[291]
push.v self.con
pushi.e 162
cmp.i.v EQ
bf [293]

:[292]
pushi.e 1
pop.v.i global.interact

:[293]
push.v self.con
pushi.e 162
cmp.i.v EQ
bf [295]

:[294]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [296]

:[295]
push.e 0

:[296]
bf [298]

:[297]
pushi.e -4
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.5
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.mkid
conv.v.i
push.v [stacktop]self.lsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 163
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[298]
push.v self.con
pushi.e 164
cmp.i.v EQ
bf [300]

:[299]
pushi.e 170
pop.v.i self.con

:[300]
push.v self.con
pushi.e 170
cmp.i.v EQ
bf [end]

:[301]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushglb.v global.plot
pushi.e 120
cmp.i.v LT
bf [303]

:[302]
pushi.e 120
pop.v.i global.plot

:[303]
pushi.e 171
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]
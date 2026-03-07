.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_undynedate_inside_120"@29110
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_121"@29112
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
pushi.e 3
pop.v.i self.con

:[4]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [10]

:[8]
pushi.e 1427
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.papyrus
conv.v.i
push.v [stacktop]self.image_index
pushi.e 4
cmp.i.v GTE
bf [10]

:[9]
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 4
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 4
pop.v.i self.con

:[10]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [12]

:[11]
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
push.s "obj_undynedate_inside_143"@29114
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
pushi.e 5
pop.v.i self.con

:[12]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [14]

:[13]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
push.v self.undyne
conv.v.i
push.v [stacktop]self.dsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.25
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 6
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[17]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [19]

:[18]
pushi.e 5
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 6.1
pop.v.d self.con
push.v self.undyne
conv.v.i
push.v [stacktop]self.usprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e -3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[19]
push.v self.con
push.d 7.1
cmp.d.v EQ
bf [21]

:[20]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.undyne
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
push.s "obj_undynedate_inside_177"@29116
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
pushi.e 10
pop.v.i self.con

:[21]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [23]

:[22]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.d 0.25
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.undyne
conv.v.i
push.v [stacktop]self.usprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e -3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 9.1
pop.v.d self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[26]
push.v self.con
push.d 10.1
cmp.d.v EQ
bf [28]

:[27]
push.v self.undyne
conv.v.i
push.v [stacktop]self.lsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i 1058.drawerdown
push.d 9.2
pop.v.d self.con
pushi.e 18
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[28]
push.v self.con
push.d 10.2
cmp.d.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i 1058.image_index
push.d 9.3
pop.v.d self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.con
push.d 10.3
cmp.d.v EQ
bf [32]

:[31]
push.d 9.4
pop.v.d self.con
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 3
pop.v.i 1058.drawerdown
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[32]
push.v self.con
push.d 10.4
cmp.d.v EQ
bf [34]

:[33]
push.v self.undyne
conv.v.i
push.v [stacktop]self.dsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 0.25
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 9.5
pop.v.d self.con

:[34]
push.v self.con
push.d 10.5
cmp.d.v EQ
bf [36]

:[35]
push.v self.undyne
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 37
pop.v.i global.typer
push.s "obj_undynedate_inside_236"@29118
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
pushi.e 12
pop.v.i self.con

:[36]
push.v self.con
pushi.e 12
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
bf [43]

:[40]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_undynedate_inside_250"@29120
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_251"@29122
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_252"@29124
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
popz.v
pushi.e 13
pop.v.i self.con
push.v self.papyrus
conv.v.i
pushenv [42]

:[41]
push.v 1070.y
pushi.e 10
add.i.v
push.v 1070.x
pushi.e 63
add.i.v
call.i scr_getideal(argc=2)
popz.v

:[42]
popenv [41]

:[43]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [45]

:[44]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 14
pop.v.i self.con

:[48]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [52]

:[49]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.5
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.papyrus
conv.v.i
pushenv [51]

:[50]
pushi.e 14
conv.i.v
call.i scr_moveideal(argc=1)
popz.v

:[51]
popenv [50]

:[52]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [56]

:[53]
pushi.e 3
pop.v.i global.facing
push.v self.undyne
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1073
conv.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.y
pushi.e 42
add.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.papyrus2
push.v self.papyrus
conv.v.i
pushenv [55]

:[54]
call.i instance_destroy(argc=0)
popz.v

:[55]
popenv [54]
push.v self.papyrus2
pop.v.v self.papyrus
pushi.e 16
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[56]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [58]

:[57]
pushi.e 2
pop.v.i global.facing
push.v self.undyne
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 18
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[58]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [60]

:[59]
pushi.e 703
pop.v.i global.msc
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 20
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[60]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [62]

:[61]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [63]

:[62]
push.e 0

:[63]
bf [67]

:[64]
push.v self.papyrus
conv.v.i
pushenv [66]

:[65]
call.i instance_destroy(argc=0)
popz.v

:[66]
popenv [65]
pushi.e 1034
conv.i.v
pushi.e 150
conv.i.v
pushi.e -30
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.papyrus
push.i 900000
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.d
push.v self.papyrus
conv.v.i
push.v [stacktop]self.rsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 4
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 41
pop.v.i self.con
push.d 0.25
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed

:[67]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [70]

:[68]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
pushi.e 10
cmp.i.v GT
bf [70]

:[69]
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 42
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[70]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [72]

:[71]
pushi.e 3
pop.v.i global.facing
push.v self.undyne
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 4
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 19
pop.v.i global.typer
push.s "obj_undynedate_inside_335"@29126
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_336"@29128
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_337"@29130
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_338"@29132
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_339"@29134
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 44
pop.v.i self.con

:[72]
push.v self.con
pushi.e 44
cmp.i.v EQ
bf [74]

:[73]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
pushi.e 45
pop.v.i self.con
pushi.e -2
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_undynedate_inside_351"@29136
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_352"@29138
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

:[77]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [79]

:[78]
push.v self.papyrus
conv.v.i
dup.i 0
push.v [stacktop]self.image_angle
pushi.e 6
sub.i.v
pop.i.v [stacktop]self.image_angle

:[79]
push.v self.con
pushi.e 45
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
pushi.e 1
pop.v.i global.faceemotion
pushi.e 2
pop.v.i global.facing
push.v self.undyne
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.s "obj_undynedate_inside_367"@29140
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_368"@29142
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_369"@29144
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_370"@29146
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_371"@29148
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_372"@29150
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_373"@29152
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_374"@29154
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_375"@29156
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_376"@29158
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_377"@29160
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_378"@29162
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_379"@29163
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_380"@29164
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 50
pop.v.i self.con

:[84]
push.v self.con
pushi.e 50
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
bf [93]

:[88]
pushi.e 1360
conv.i.v
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.undyne2
pushi.e 1498
push.v self.undyne2
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.undyne
conv.v.i
pushenv [90]

:[89]
call.i instance_destroy(argc=0)
popz.v

:[90]
popenv [89]
push.v self.undyne2
pop.v.v self.undyne
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.interact
push.v self.papyrus
conv.v.i
pushenv [92]

:[91]
call.i instance_destroy(argc=0)
popz.v

:[92]
popenv [91]
pushi.e 51
pop.v.i self.con
push.s "music/date.ogg"@2841
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[93]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [99]

:[94]
push.v 1576.y
pushi.e 200
cmp.i.v GT
bf [96]

:[95]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [97]

:[96]
push.e 0

:[97]
bf [99]

:[98]
pushi.e 2
pop.v.i global.facing
pushi.e 0
pop.v.i global.msc
pushi.e 196
pop.v.i 1576.y
pushi.e 1
pop.v.i global.interact
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 9
pop.v.i global.faceemotion
push.s "obj_undynedate_inside_415"@29166
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_416"@29168
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
pushi.e 52
pop.v.i self.con

:[99]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [101]

:[100]
pushi.e 2
pop.v.i global.facing
pushi.e 196
pop.v.i 1576.y

:[101]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [103]

:[102]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
pushi.e 51
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[106]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [109]

:[107]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [109]

:[108]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [110]

:[109]
push.e 0

:[110]
bf [116]

:[111]
pushi.e 1
pop.v.i global.interact
push.v 1354.sprite_index
push.v 1354.y
push.v 1354.x
call.i scr_marker(argc=3)
pop.v.v self.chair
push.i 500000
push.v self.chair
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1354
pushenv [113]

:[112]
call.i instance_destroy(argc=0)
popz.v

:[113]
popenv [112]
pushi.e 61
pop.v.i self.con
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i global.facing
push.v self.chair
pop.v.v 1576.chair
pushi.e 1
pop.v.i global.phasing
pushi.e 1576
pushenv [115]

:[114]
push.v self.chair
conv.v.i
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.chair
conv.v.i
push.v [stacktop]self.x
call.i scr_getideal(argc=2)
popz.v

:[115]
popenv [114]
push.d 0.25
pop.v.d 1576.image_speed

:[116]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [120]

:[117]
pushi.e 1576
pushenv [119]

:[118]
pushi.e 12
conv.i.v
call.i scr_moveideal(argc=1)
popz.v

:[119]
popenv [118]

:[120]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [122]

:[121]
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 63
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[122]
push.v self.con
pushi.e 64
cmp.i.v EQ
bf [124]

:[123]
pushi.e 0
pop.v.i global.msc
pushi.e 1
pop.v.i global.interact
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 9
pop.v.i global.faceemotion
push.s "obj_undynedate_inside_471"@29170
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_472"@29172
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
pushi.e 65
pop.v.i self.con

:[124]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [126]

:[125]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [127]

:[126]
push.e 0

:[127]
bf [131]

:[128]
pushi.e 1063
conv.i.v
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.undyne2
push.v self.undyne
conv.v.i
pushenv [130]

:[129]
call.i instance_destroy(argc=0)
popz.v

:[130]
popenv [129]
push.v self.undyne2
pop.v.v self.undyne
pushi.e -3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 66
pop.v.i self.con
pushi.e 13
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[131]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [133]

:[132]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 68
pop.v.i self.con
pushi.e 37
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[133]
push.v self.con
pushi.e 69
cmp.i.v EQ
bf [135]

:[134]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.undyne
conv.v.i
push.v [stacktop]self.usprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 70
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.again

:[135]
push.v self.con
pushi.e 71
cmp.i.v EQ
bf [137]

:[136]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e -3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 11
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 72
pop.v.i self.con

:[137]
push.v self.con
pushi.e 73
cmp.i.v EQ
bf [149]

:[138]
push.v self.undyne
conv.v.i
pushenv [140]

:[139]
push.s "u"@2917
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[140]
popenv [139]
pushi.e 1375
conv.i.v
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
call.i scr_marker(argc=3)
pop.v.v self.g
push.i 500000
push.v self.g
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.again
pushi.e 0
cmp.i.v EQ
bf [142]

:[141]
pushi.e 1605
push.v self.g
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.g
pop.v.v self.teabox

:[142]
push.v self.again
pushi.e 1
cmp.i.v EQ
bf [144]

:[143]
pushi.e 1594
push.v self.g
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.g
pop.v.v self.hotchocolate

:[144]
push.v self.again
pushi.e 2
cmp.i.v EQ
bf [146]

:[145]
pushi.e 1595
push.v self.g
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.g
pop.v.v self.soda

:[146]
push.v self.again
pushi.e 3
cmp.i.v EQ
bf [148]

:[147]
pushi.e 1606
push.v self.g
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.g
pop.v.v self.sugar

:[148]
pushi.e 74
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[149]
push.v self.con
pushi.e 75
cmp.i.v EQ
bf [154]

:[150]
push.v self.again
pushi.e 3
cmp.i.v LT
bf [152]

:[151]
pushi.e 71
pop.v.i self.con
b [153]

:[152]
pushi.e 76
pop.v.i self.con

:[153]
push.v self.again
pushi.e 1
add.i.v
pop.v.v self.again

:[154]
push.v self.con
pushi.e 76
cmp.i.v EQ
bf [156]

:[155]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e -3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 77
pop.v.i self.con
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[156]
push.v self.con
pushi.e 78
cmp.i.v EQ
bf [158]

:[157]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 79
pop.v.i self.con
pushi.e 14
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[158]
push.v self.con
pushi.e 80
cmp.i.v EQ
bf [162]

:[159]
pushi.e 5
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.undyne
conv.v.i
pushenv [161]

:[160]
push.s "d"@3518
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[161]
popenv [160]
push.s "obj_undynedate_inside_561"@29174
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
pushi.e 81
pop.v.i self.con

:[162]
push.v self.con
pushi.e 81
cmp.i.v EQ
bf [164]

:[163]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [165]

:[164]
push.e 0

:[165]
bf [167]

:[166]
pushi.e 82
pop.v.i self.con
push.v 1576.x
pop.v.v self.mcxp
push.v 1576.y
pop.v.v self.mcyp
pushi.e 0
pop.v.i global.interact
pushi.e 1
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag

:[167]
push.v self.con
pushi.e 82
cmp.i.v EQ
bf [175]

:[168]
push.v 1576.x
push.v self.mcxp
cmp.v.v NEQ
bt [170]

:[169]
push.v 1576.y
push.v self.mcyp
cmp.v.v NEQ
b [171]

:[170]
push.e 1

:[171]
bf [175]

:[172]
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
push.v self.mcxp
pop.v.v 1576.x
push.v self.mcyp
pop.v.v 1576.y
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.visible
push.v self.table
conv.v.i
pushenv [174]

:[173]
push.i 300000
pop.v.i self.depth

:[174]
popenv [173]
pushi.e 1071
conv.i.v
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.tspear
pushi.e 83
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[175]
push.v self.con
pushi.e 84
cmp.i.v EQ
bf [179]

:[176]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
push.v self.tspear
conv.v.i
pushenv [178]

:[177]
call.i instance_destroy(argc=0)
popz.v

:[178]
popenv [177]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 1593
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i global.faceemotion
pushi.e 5
pop.v.i global.facechoice
pushi.e 1
pushi.e -5
pushi.e 390
pop.v.i [array]global.flag
push.s "obj_undynedate_inside_604"@29176
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_605"@29178
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_606"@29179
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
popz.v
push.d 84.1
pop.v.d self.con

:[179]
push.v self.con
push.d 84.1
cmp.d.v EQ
bf [181]

:[180]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [182]

:[181]
push.e 0

:[182]
bf [184]

:[183]
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
push.s "obj_undynedate_inside_614"@29181
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_615"@29183
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
pushi.e 85
pop.v.i self.con

:[184]
push.v self.con
pushi.e 85
cmp.i.v EQ
bf [186]

:[185]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [187]

:[186]
push.e 0

:[187]
bf [189]

:[188]
pushi.e 1
pop.v.i 1072.part
pushi.e 86
pop.v.i self.con

:[189]
push.v self.con
pushi.e 88
cmp.i.v EQ
bf [191]

:[190]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [192]

:[191]
push.e 0

:[192]
bf [194]

:[193]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 88.1
pop.v.d self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[194]
push.v self.con
push.d 89.1
cmp.d.v EQ
bf [196]

:[195]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.v self.undyne
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.s "obj_undynedate_inside_643"@29185
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_644"@29187
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_645"@29189
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_646"@29191
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_647"@29193
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_648"@29195
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_649"@29197
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_650"@29199
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_651"@29201
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_652"@29203
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_653"@29205
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_654"@29207
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_655"@29209
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_656"@29211
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_657"@29213
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_658"@29215
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "music/musicbox.ogg"@2648
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.8
conv.d.v
push.d 0.8
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 90
pop.v.i self.con

:[196]
push.v self.con
pushi.e 90
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
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.d
push.v self.table
conv.v.i
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.i global.faceemotion
push.v self.undyne
conv.v.i
push.v [stacktop]self.rsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.25
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_index
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 91
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[201]
push.v self.con
pushi.e 92
cmp.i.v EQ
bf [205]

:[202]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v self.undyne
conv.v.i
pushenv [204]

:[203]
push.s "r"@715
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[204]
popenv [203]
pushi.e 93
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[205]
push.v self.con
pushi.e 94
cmp.i.v EQ
bf [211]

:[206]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.d
push.v self.undyne
conv.v.i
pushenv [208]

:[207]
push.s "d"@3518
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[208]
popenv [207]
push.v self.undyne
conv.v.i
pushenv [210]

:[209]
pushi.e 1
pop.v.i self.npcdir

:[210]
popenv [209]
pushi.e 1
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.facechoice
pushi.e 37
pop.v.i global.typer
push.s "obj_undynedate_inside_696"@29217
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_697"@29219
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_698"@29221
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_699"@29223
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_700"@29225
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ggg
pushi.e 1
push.v self.ggg
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 95
pop.v.i self.con

:[211]
push.v self.con
pushi.e 95
cmp.i.v EQ
bf [213]

:[212]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [214]

:[213]
push.e 0

:[214]
bf [218]

:[215]
pushi.e 92
pushenv [217]

:[216]
call.i instance_destroy(argc=0)
popz.v

:[217]
popenv [216]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "music/undynetruetheme.ogg"@2853
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
push.d 0.9
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1493
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 96
pop.v.i self.con

:[218]
push.v self.con
pushi.e 96
cmp.i.v EQ
bf [223]

:[219]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 3
cmp.i.v GTE
bf [221]

:[220]
pushi.e -10
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed

:[221]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 4
cmp.i.v GTE
bf [223]

:[222]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 97
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[223]
push.v self.con
pushi.e 98
cmp.i.v EQ
bf [225]

:[224]
pushi.e 80
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 10
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 99
pop.v.i self.con

:[225]
push.v self.con
pushi.e 99
cmp.i.v EQ
bf [238]

:[226]
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
pushi.e 5
cmp.i.v GTE
bf [236]

:[227]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 10
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
call.i scr_shake(argc=3)
popz.v
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 1074
conv.i.v
push.v self.teabox
conv.v.i
push.v [stacktop]self.y
push.v self.teabox
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.teabox2
pushi.e 1605
push.v self.teabox2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1568
push.v self.teabox2
conv.v.i
pop.v.i [stacktop]self.breaksprite
pushi.e 1
push.v self.teabox2
conv.v.i
pop.v.i [stacktop]self.myh
pushi.e 4
push.v self.teabox2
conv.v.i
pop.v.i [stacktop]self.mya
push.v self.teabox
conv.v.i
pushenv [229]

:[228]
call.i instance_destroy(argc=0)
popz.v

:[229]
popenv [228]
pushi.e 1074
conv.i.v
push.v self.sugar
conv.v.i
push.v [stacktop]self.y
push.v self.sugar
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.sugar2
pushi.e 1606
push.v self.sugar2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1569
push.v self.sugar2
conv.v.i
pop.v.i [stacktop]self.breaksprite
pushi.e 3
push.v self.sugar2
conv.v.i
pop.v.i [stacktop]self.myh
push.v self.sugar
conv.v.i
pushenv [231]

:[230]
call.i instance_destroy(argc=0)
popz.v

:[231]
popenv [230]
pushi.e 1074
conv.i.v
push.v self.soda
conv.v.i
push.v [stacktop]self.y
push.v self.soda
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.soda2
pushi.e 1595
push.v self.soda2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1570
push.v self.soda2
conv.v.i
pop.v.i [stacktop]self.breaksprite
pushi.e -4
push.v self.soda2
conv.v.i
pop.v.i [stacktop]self.mya
pushi.e -1
push.v self.soda2
conv.v.i
pop.v.i [stacktop]self.myh
pushi.e -2
push.v self.soda2
conv.v.i
pop.v.i [stacktop]self.myv
push.v self.soda
conv.v.i
pushenv [233]

:[232]
call.i instance_destroy(argc=0)
popz.v

:[233]
popenv [232]
pushi.e 1074
conv.i.v
push.v self.hotchocolate
conv.v.i
push.v [stacktop]self.y
push.v self.hotchocolate
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.hotchocolate2
pushi.e 1594
push.v self.hotchocolate2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1594
push.v self.hotchocolate2
conv.v.i
pop.v.i [stacktop]self.breaksprite
pushi.e -1
push.v self.hotchocolate2
conv.v.i
pop.v.i [stacktop]self.myh
pushi.e 3
push.v self.hotchocolate2
conv.v.i
pop.v.i [stacktop]self.mya
push.v self.hotchocolate
conv.v.i
pushenv [235]

:[234]
call.i instance_destroy(argc=0)
popz.v

:[235]
popenv [234]

:[236]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 0
cmp.i.v EQ
bf [238]

:[237]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 100
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[238]
push.v self.con
pushi.e 101
cmp.i.v EQ
bf [240]

:[239]
pushi.e 1492
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 5
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 102
pop.v.i self.con

:[240]
push.v self.con
pushi.e 102
cmp.i.v EQ
bf [245]

:[241]
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 180
cmp.i.v GT
bf [243]

:[242]
push.v self.undyne
conv.v.i
dup.i 0
push.v [stacktop]self.hspeed
push.d 0.5
sub.d.v
pop.i.v [stacktop]self.hspeed

:[243]
push.v self.undyne
conv.v.i
push.v [stacktop]self.hspeed
pushi.e 0
cmp.i.v EQ
bf [245]

:[244]
pushi.e 103
pop.v.i self.con

:[245]
push.v self.con
pushi.e 103
cmp.i.v EQ
bf [249]

:[246]
push.v self.undyne
conv.v.i
pushenv [248]

:[247]
push.s "d"@3518
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[248]
popenv [247]
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_undynedate_inside_833"@29227
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_834"@29229
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_835"@29231
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_836"@29233
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_837"@29235
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.de
pushi.e 1
push.v self.de
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 104
pop.v.i self.con

:[249]
push.v self.con
pushi.e 104
cmp.i.v EQ
bf [251]

:[250]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [252]

:[251]
push.e 0

:[252]
bf [254]

:[253]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1493
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 106
pop.v.i self.con

:[254]
push.v self.con
pushi.e 106
cmp.i.v EQ
bf [259]

:[255]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 3
cmp.i.v GTE
bf [257]

:[256]
pushi.e -15
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed

:[257]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 4
cmp.i.v GTE
bf [259]

:[258]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 107
pop.v.i self.con
pushi.e 7
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[259]
push.v self.con
pushi.e 108
cmp.i.v EQ
bf [261]

:[260]
push.v 1576.x
pushi.e 18
sub.i.v
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.x
pushi.e 15
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 109
pop.v.i self.con

:[261]
push.v self.con
pushi.e 109
cmp.i.v EQ
bf [266]

:[262]
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v 1576.y
pushi.e 40
sub.i.v
cmp.v.v GTE
bf [264]

:[263]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
push.v 1576.y
pushi.e 25
sub.i.v
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
call.i scr_shake(argc=3)
popz.v
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed

:[264]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 0
cmp.i.v EQ
bf [266]

:[265]
pushi.e 3
pop.v.i global.facing
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 110
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[266]
push.v self.con
pushi.e 111
cmp.i.v EQ
bf [268]

:[267]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.undyne
conv.v.i
push.v [stacktop]self.rsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 112
pop.v.i self.con
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[268]
push.v self.con
pushi.e 113
cmp.i.v EQ
bf [270]

:[269]
pushi.e 0
pop.v.i 1576.visible
pushi.e 1591
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 114
pop.v.i self.con
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[270]
push.v self.con
pushi.e 115
cmp.i.v EQ
bf [275]

:[271]
push.d 0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 2
cmp.i.v EQ
bf [273]

:[272]
pushi.e 47
conv.i.v
call.i snd_play(argc=1)
popz.v

:[273]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 5
cmp.i.v GTE
bf [275]

:[274]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 116
pop.v.i self.con
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[275]
push.v self.con
pushi.e 117
cmp.i.v EQ
bf [277]

:[276]
pushi.e 6
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 118
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[277]
push.v self.con
pushi.e 119
cmp.i.v EQ
bf [279]

:[278]
pushi.e 7
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e -17
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 1.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.gravity
pushi.e 120
pop.v.i self.con
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed

:[279]
push.v self.con
pushi.e 120
cmp.i.v EQ
bf [285]

:[280]
push.v self.undyne
conv.v.i
push.v [stacktop]self.vspeed
pushi.e 1
cmp.i.v GT
bf [282]

:[281]
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
pushi.e 30
cmp.i.v GT
b [283]

:[282]
push.e 0

:[283]
bf [285]

:[284]
pushi.e 35
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.gravity
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 6
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
call.i scr_shake(argc=3)
popz.v
pushi.e 121
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[285]
push.v self.con
pushi.e 122
cmp.i.v EQ
bf [290]

:[286]
push.d -0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 2
cmp.i.v EQ
bf [288]

:[287]
pushi.e 2
pop.v.i global.facing
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.d -0.05
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed

:[288]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 1
cmp.i.v LT
bf [290]

:[289]
push.v self.undyne
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 20
add.i.v
pop.v.v 1576.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
pushi.e 24
add.i.v
pop.v.v 1576.y
pushi.e 2
pop.v.i global.facing
pushi.e 1
pop.v.i 1576.visible
push.v self.undyne
conv.v.i
push.v [stacktop]self.usprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 123
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[290]
push.v self.con
pushi.e 124
cmp.i.v EQ
bf [292]

:[291]
push.v self.undyne
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.direction
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 3
pop.v.i global.facing
pushi.e 0
pop.v.i global.faceemotion
pushi.e 5
pop.v.i global.facechoice
push.s "obj_undynedate_inside_1000"@29237
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1001"@29239
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
pushi.e 125
pop.v.i self.con

:[292]
push.v self.con
pushi.e 125
cmp.i.v EQ
bf [294]

:[293]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [295]

:[294]
push.e 0

:[295]
bf [297]

:[296]
pushi.e -2
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 126
pop.v.i self.con
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[297]
push.v self.con
pushi.e 127
cmp.i.v EQ
bf [303]

:[298]
push.v self.undyne
conv.v.i
pushenv [300]

:[299]
push.s "d"@3518
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[300]
popenv [299]
push.v self.undyne
conv.v.i
pushenv [302]

:[301]
pushi.e 1
pop.v.i self.fun

:[302]
popenv [301]
pushi.e 1587
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 128
pop.v.i self.con

:[303]
push.v self.con
pushi.e 128
cmp.i.v EQ
bf [308]

:[304]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 11
cmp.i.v EQ
bf [306]

:[305]
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shake(argc=3)
popz.v

:[306]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 12
cmp.i.v GTE
bf [308]

:[307]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1590
conv.i.v
pushi.e -20
conv.i.v
pushi.e 195
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.veg
push.i 500000
push.v self.veg
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 6
push.v self.veg
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 129
pop.v.i self.con

:[308]
push.v self.con
pushi.e 129
cmp.i.v EQ
bf [313]

:[309]
push.v self.veg
conv.v.i
push.v [stacktop]self.y
pushi.e 41
cmp.i.v GTE
bf [313]

:[310]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 47
push.v self.veg
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 0
push.v self.veg
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.undyne
conv.v.i
pushenv [312]

:[311]
push.s "r"@715
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[312]
popenv [311]
push.v self.undyne
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 130
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[313]
push.v self.con
pushi.e 131
cmp.i.v EQ
bf [315]

:[314]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 2
pop.v.i global.facing
push.v self.undyne
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
pop.v.i global.faceemotion
pushi.e 710
pop.v.i global.msc
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 132
pop.v.i self.con

:[315]
push.v self.con
pushi.e 140
cmp.i.v EQ
bf [317]

:[316]
pushi.e 1
push.v self.veg
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 141
pop.v.i self.con

:[317]
push.v self.con
pushi.e 141
cmp.i.v EQ
bf [319]

:[318]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [320]

:[319]
push.e 0

:[320]
bf [322]

:[321]
pushi.e 2
pop.v.i global.facing
push.v self.undyne
conv.v.i
push.v [stacktop]self.utsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 142
pop.v.i self.con
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[322]
push.v self.con
pushi.e 143
cmp.i.v EQ
bf [324]

:[323]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 1589
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.334
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 144
pop.v.i self.con

:[324]
push.v self.con
pushi.e 144
cmp.i.v EQ
bf [327]

:[325]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 7
cmp.i.v GTE
bf [327]

:[326]
pushi.e 147
pop.v.i self.con

:[327]
push.v self.con
pushi.e 148
cmp.i.v EQ
bf [329]

:[328]
pushi.e 2
push.v self.veg
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 149
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[329]
push.v self.con
pushi.e 147
cmp.i.v EQ
bf [331]

:[330]
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shake(argc=3)
popz.v
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 14
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 148
pop.v.i self.con

:[331]
push.v self.con
pushi.e 149
cmp.i.v EQ
bf [334]

:[332]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 8
cmp.i.v GTE
bf [334]

:[333]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed

:[334]
push.v self.con
pushi.e 150
cmp.i.v EQ
bf [336]

:[335]
pushi.e 1508
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1120
pop.v.i 1576.lsprite
pushi.e 9
pop.v.i global.faceemotion
pushi.e 3
pop.v.i global.facing
pushi.e 0
pop.v.i global.msc
pushi.e 2
pushi.e -5
pushi.e 390
pop.v.i [array]global.flag
push.s "obj_undynedate_inside_1128"@29241
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1129"@29243
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
pushi.e 151
pop.v.i self.con

:[336]
push.v self.con
pushi.e 151
cmp.i.v EQ
bf [338]

:[337]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [339]

:[338]
push.e 0

:[339]
bf [345]

:[340]
pushi.e 0
pushi.e -5
pushi.e 390
pop.v.i [array]global.flag
push.v self.undyne
conv.v.i
pushenv [342]

:[341]
push.s "d"@3518
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[342]
popenv [341]
push.v self.undyne
conv.v.i
pushenv [344]

:[343]
pushi.e 1
pop.v.i self.fun

:[344]
popenv [343]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 1588
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 152
pop.v.i self.con

:[345]
push.v self.con
pushi.e 152
cmp.i.v EQ
bf [350]

:[346]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 11
cmp.i.v EQ
bf [348]

:[347]
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i scr_shake(argc=3)
popz.v

:[348]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 12
cmp.i.v GTE
bf [350]

:[349]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1583
conv.i.v
pushi.e -20
conv.i.v
pushi.e 140
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.pot
pushi.e 6
push.v self.pot
conv.v.i
pop.v.i [stacktop]self.vspeed
push.i 500000
push.v self.pot
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1582
conv.i.v
pushi.e -20
conv.i.v
pushi.e 160
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.box
pushi.e 6
push.v self.box
conv.v.i
pop.v.i [stacktop]self.vspeed
push.i 500000
push.v self.box
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 154
pop.v.i self.con

:[350]
push.v self.con
pushi.e 154
cmp.i.v EQ
bf [355]

:[351]
push.v self.pot
conv.v.i
push.v [stacktop]self.y
pushi.e 38
cmp.i.v GTE
bf [355]

:[352]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 44
push.v self.pot
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 40
push.v self.box
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 0
push.v self.pot
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.box
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.undyne
conv.v.i
pushenv [354]

:[353]
push.s "d"@3518
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[354]
popenv [353]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 155
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[355]
push.v self.con
pushi.e 156
cmp.i.v EQ
bf [357]

:[356]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [358]

:[357]
push.e 0

:[358]
bf [360]

:[359]
pushi.e 3
pop.v.i global.facing
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e -7
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -6
pop.v.i 1576.hspeed
push.d 0.334
pop.v.d 1576.image_speed
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 158
pop.v.i self.con

:[360]
push.v self.con
pushi.e 159
cmp.i.v EQ
bf [364]

:[361]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
pop.v.i 1576.hspeed
pushi.e 0
pop.v.i 1576.image_speed
push.v self.undyne
conv.v.i
pushenv [363]

:[362]
push.s "u"@2917
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[363]
popenv [362]
pushi.e 160
pop.v.i self.con
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[364]
push.v self.con
pushi.e 161
cmp.i.v EQ
bf [366]

:[365]
push.v self.undyne
conv.v.i
push.v [stacktop]self.utsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
pop.v.i global.facing
pushi.e 162
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[366]
push.v self.con
pushi.e 163
cmp.i.v EQ
bf [368]

:[367]
pushi.e 164
pop.v.i self.con
pushi.e 712
pop.v.i global.msc
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[368]
push.v self.con
pushi.e 199
cmp.i.v EQ
bf [372]

:[369]
push.v self.box
conv.v.i
pushenv [371]

:[370]
pushi.e 0
pop.v.i self.visible

:[371]
popenv [370]
pushi.e 200
pop.v.i self.con

:[372]
push.v self.con
pushi.e 200
cmp.i.v EQ
bf [374]

:[373]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [375]

:[374]
push.e 0

:[375]
bf [377]

:[376]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_undynedate_inside_1235"@29245
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1236"@29247
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1237"@29249
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1238"@29251
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 201
pop.v.i self.con
push.v self.undyne
conv.v.i
push.v [stacktop]self.utsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
pop.v.i global.facing

:[377]
push.v self.con
pushi.e 201
cmp.i.v EQ
bf [379]

:[378]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [380]

:[379]
push.e 0

:[380]
bf [382]

:[381]
pushi.e 1059
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.pp
push.v self.pot
push.v self.pp
conv.v.i
pop.v.v [stacktop]self.pot
pushi.e 202
pop.v.i self.con

:[382]
push.v self.con
pushi.e 210
cmp.i.v EQ
bf [384]

:[383]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [385]

:[384]
push.e 0

:[385]
bf [387]

:[386]
pushi.e 211
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[387]
push.v self.con
pushi.e 212
cmp.i.v EQ
bf [389]

:[388]
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1539
conv.i.v
pushi.e -35
conv.i.v
push.v self.pot
conv.v.i
push.v [stacktop]self.x
pushi.e 10
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.spear2
pushi.e 270
push.v self.spear2
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 12
push.v self.spear2
conv.v.i
pop.v.i [stacktop]self.vspeed
push.i 900000
push.v self.spear2
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 0
pop.v.i self.ssine
pushi.e 213
pop.v.i self.con
pushi.e 0
pop.v.i self.stab

:[389]
push.v self.con
pushi.e 213
cmp.i.v EQ
bf [412]

:[390]
push.v self.ssine
pushi.e 1
add.i.v
pop.v.v self.ssine
push.v self.spear2
conv.v.i
push.v [stacktop]self.xstart
push.v self.ssine
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
push.v self.spear2
conv.v.i
pop.v.v [stacktop]self.x
push.v self.spear2
conv.v.i
push.v [stacktop]self.vspeed
pushi.e 0
cmp.i.v GT
bf [392]

:[391]
push.v self.spear2
conv.v.i
push.v [stacktop]self.y
push.v self.pot
conv.v.i
push.v [stacktop]self.y
pushi.e 17
sub.i.v
cmp.v.v GT
b [393]

:[392]
push.e 0

:[393]
bf [405]

:[394]
pushi.e -12
push.v self.spear2
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 14
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [396]

:[395]
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shake(argc=3)
popz.v

:[396]
push.v self.stab
pushi.e 1
add.i.v
pop.v.v self.stab
push.v self.stab
pushi.e 2
cmp.i.v GTE
bf [405]

:[397]
pushi.e 1584
push.v self.pot
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.stab
pushi.e 5
cmp.i.v LT
bf [399]

:[398]
pushi.e 0
push.v self.pot
conv.v.i
pop.v.i [stacktop]self.image_index

:[399]
push.v self.stab
pushi.e 5
cmp.i.v EQ
bf [401]

:[400]
pushi.e 1
push.v self.pot
conv.v.i
pop.v.i [stacktop]self.image_index

:[401]
push.v self.stab
pushi.e 7
cmp.i.v EQ
bf [403]

:[402]
pushi.e 2
push.v self.pot
conv.v.i
pop.v.i [stacktop]self.image_index

:[403]
push.v self.stab
pushi.e 10
cmp.i.v EQ
bf [405]

:[404]
pushi.e 3
push.v self.pot
conv.v.i
pop.v.i [stacktop]self.image_index

:[405]
push.v self.spear2
conv.v.i
push.v [stacktop]self.vspeed
pushi.e 0
cmp.i.v LT
bf [407]

:[406]
push.v self.spear2
conv.v.i
push.v [stacktop]self.y
push.v self.pot
conv.v.i
push.v [stacktop]self.y
pushi.e 50
sub.i.v
cmp.v.v LT
b [408]

:[407]
push.e 0

:[408]
bf [410]

:[409]
pushi.e 15
push.v self.spear2
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v

:[410]
push.v self.stab
pushi.e 10
cmp.i.v GT
bf [412]

:[411]
pushi.e 214
pop.v.i self.con

:[412]
push.v self.con
pushi.e 214
cmp.i.v EQ
bf [417]

:[413]
pushi.e 0
push.v self.spear2
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.spear2
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.05
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.spear2
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.08
cmp.d.v LT
bf [417]

:[414]
push.v self.spear2
conv.v.i
pushenv [416]

:[415]
call.i instance_destroy(argc=0)
popz.v

:[416]
popenv [415]
pushi.e 215
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[417]
push.v self.con
pushi.e 216
cmp.i.v EQ
bf [419]

:[418]
pushi.e 5
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
pushi.e 6
pop.v.i global.faceemotion
push.s "obj_undynedate_inside_1326"@29253
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1328"@29255
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1329"@29257
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1330"@29259
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1331"@29261
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1332"@29263
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 217
pop.v.i self.con

:[419]
push.v self.con
pushi.e 217
cmp.i.v EQ
bf [421]

:[420]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [422]

:[421]
push.e 0

:[422]
bf [426]

:[423]
pushi.e 1062
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ph
pushi.e 1061
conv.i.v
push.v self.pot
conv.v.i
push.v [stacktop]self.y
pushi.e 3
add.i.v
push.v self.pot
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.pot2
push.v self.pot
conv.v.i
pushenv [425]

:[424]
call.i instance_destroy(argc=0)
popz.v

:[425]
popenv [424]
push.v self.pot2
pop.v.v self.pot
push.v self.pot
push.v self.ph
conv.v.i
pop.v.v [stacktop]self.pot
pushi.e 218
pop.v.i self.con

:[426]
push.v self.con
pushi.e 250
cmp.i.v EQ
bf [428]

:[427]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [429]

:[428]
push.e 0

:[429]
bf [431]

:[430]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 44
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 114
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.wht
pushi.e 251
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[431]
push.v self.con
pushi.e 252
cmp.i.v EQ
bf [433]

:[432]
pushi.e 1365
conv.i.v
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 2
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blk
push.v self.wht
conv.v.i
push.v [stacktop]self.depth
pushi.e 2
sub.i.v
push.v self.blk
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 0
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 1
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1084
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 200
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 200
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 253
pop.v.i self.con

:[433]
push.v self.con
pushi.e 253
cmp.i.v EQ
bf [436]

:[434]
push.v self.blk
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.02
add.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.blk
conv.v.i
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [436]

:[435]
pushi.e 254
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[436]
push.v self.con
pushi.e 255
cmp.i.v EQ
bf [444]

:[437]
push.s "music/deeploop2.ogg"@2710
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 0
pop.v.i self.vol
pushi.e 1585
conv.i.v
push.v self.pot
conv.v.i
push.v [stacktop]self.y
pushi.e 2
add.i.v
push.v self.pot
conv.v.i
push.v [stacktop]self.x
call.i scr_marker(argc=3)
pop.v.v self.potb
push.d 0.5
push.v self.potb
conv.v.i
pop.v.d [stacktop]self.image_speed
push.i 300000
push.v self.potb
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.pot
conv.v.i
pushenv [439]

:[438]
call.i instance_destroy(argc=0)
popz.v

:[439]
popenv [438]
pushi.e 128
pushi.e -1
pushi.e 0
pop.v.i [array]self.background_blend
pushi.e 1226
conv.i.v
pushi.e 140
conv.i.v
pushi.e 60
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.f
push.d 0.6
push.v self.f
conv.v.i
pop.v.d [stacktop]self.image_speed
push.i 400000
push.v self.f
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1226
conv.i.v
pushi.e 40
conv.i.v
pushi.e 80
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.f
push.d 0.5
push.v self.f
conv.v.i
pop.v.d [stacktop]self.image_speed
push.i 400000
push.v self.f
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1226
conv.i.v
pushi.e 40
conv.i.v
pushi.e 200
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.f
push.d 0.4
push.v self.f
conv.v.i
pop.v.d [stacktop]self.image_speed
push.i 400000
push.v self.f
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1226
conv.i.v
pushi.e 100
conv.i.v
pushi.e 220
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.f
push.d 0.6
push.v self.f
conv.v.i
pop.v.d [stacktop]self.image_speed
push.i 400000
push.v self.f
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1226
conv.i.v
pushi.e 160
conv.i.v
pushi.e 180
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.f
push.d 0.7
push.v self.f
conv.v.i
pop.v.d [stacktop]self.image_speed
push.i 400000
push.v self.f
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 128
push.v self.table
conv.v.i
pop.v.i [stacktop]self.image_blend
pushi.e 128
push.v self.piano
conv.v.i
pop.v.i [stacktop]self.image_blend
pushi.e 128
push.v self.sword
conv.v.i
pop.v.i [stacktop]self.image_blend
pushi.e 128
pop.v.i 1074.image_blend
pushi.e 1064
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [441]

:[440]
pushi.e 128
pop.v.i 1064.image_blend

:[441]
pushi.e 128
pop.v.i 1070.image_blend
pushi.e 128
pop.v.i 1069.image_blend
pushi.e 128
pop.v.i 1068.image_blend
pushi.e 128
pop.v.i 1058.image_blend
push.v self.wht
conv.v.i
pushenv [443]

:[442]
call.i instance_destroy(argc=0)
popz.v

:[443]
popenv [442]
pushi.e 256
pop.v.i self.con

:[444]
push.v self.con
pushi.e 256
cmp.i.v EQ
bf [449]

:[445]
push.v self.vol
push.d 0.02
add.d.v
pop.v.v self.vol
push.v self.vol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
push.v self.blk
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.02
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.blk
conv.v.i
push.v [stacktop]self.image_alpha
push.d 0.03
cmp.d.v LT
bf [449]

:[446]
push.v self.blk
conv.v.i
pushenv [448]

:[447]
call.i instance_destroy(argc=0)
popz.v

:[448]
popenv [447]
pushi.e 257
pop.v.i self.con

:[449]
push.v self.con
pushi.e 257
cmp.i.v EQ
bf [451]

:[450]
pushi.e 258
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[451]
push.v self.con
pushi.e 259
cmp.i.v EQ
bf [453]

:[452]
pushi.e 1121
pop.v.i 1576.lsprite
pushi.e 1509
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 3
pop.v.i global.facing
pushi.e 5
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
pushi.e 9
pop.v.i global.faceemotion
push.s "obj_undynedate_inside_1444"@29265
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1445"@29267
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
pushi.e 260
pop.v.i self.con

:[453]
push.v self.con
pushi.e 260
cmp.i.v EQ
bf [455]

:[454]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [456]

:[455]
push.e 0

:[456]
bf [458]

:[457]
push.v self.undyne
conv.v.i
push.v [stacktop]self.utsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
pop.v.i global.facing
pushi.e 261
pop.v.i self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[458]
push.v self.con
pushi.e 262
cmp.i.v EQ
bf [460]

:[459]
pushi.e 1509
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 3
pop.v.i global.facing
pushi.e 5
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
pushi.e 9
pop.v.i global.faceemotion
push.s "obj_undynedate_inside_1465"@29269
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1466"@29270
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
pushi.e 263
pop.v.i self.con

:[460]
push.v self.con
pushi.e 263
cmp.i.v EQ
bf [462]

:[461]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [463]

:[462]
push.e 0

:[463]
bf [465]

:[464]
pushi.e 1503
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 7
pop.v.i global.faceemotion
push.s "obj_undynedate_inside_1475"@29272
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1476"@29274
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1477"@29276
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1478"@29278
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1479"@29280
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1480"@29282
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1481"@29284
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1482"@29286
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 264
pop.v.i self.con

:[465]
push.v self.con
pushi.e 264
cmp.i.v EQ
bf [467]

:[466]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [468]

:[467]
push.e 0

:[468]
bf [470]

:[469]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
push.s "obj_undynedate_inside_1490"@29288
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
pushi.e 265
pop.v.i self.con

:[470]
push.v self.con
pushi.e 265
cmp.i.v EQ
bf [472]

:[471]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [473]

:[472]
push.e 0

:[473]
bf [475]

:[474]
pushi.e 1
pop.v.i global.mercy
pushi.e 58
pop.v.i global.battlegroup
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 266
pop.v.i self.con

:[475]
push.v self.con
pushi.e 266
cmp.i.v EQ
bf [477]

:[476]
pushi.e 143
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [478]

:[477]
push.e 0

:[478]
bf [480]

:[479]
pushi.e 267
pop.v.i self.con
pushi.e 0
pop.v.i self.room_persistent
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[480]
push.v self.con
pushi.e 268
cmp.i.v EQ
bf [482]

:[481]
pushi.e 0
pop.v.i self.room_persistent
pushi.e 0
pop.v.i global.phasing
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.mercy
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 117
conv.i.v
call.i room_goto(argc=1)
popz.v

:[482]
push.v self.con
pushi.e 300
cmp.i.v EQ
bf [484]

:[483]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [485]

:[484]
push.e 0

:[485]
bf [487]

:[486]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 301
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[487]
push.v self.con
pushi.e 302
cmp.i.v EQ
bf [489]

:[488]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e -3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 17
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 303
pop.v.i self.con

:[489]
push.v self.con
pushi.e 304
cmp.i.v EQ
bf [491]

:[490]
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 305
pop.v.i self.con
pushi.e 32
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[491]
push.v self.con
pushi.e 306
cmp.i.v EQ
bf [495]

:[492]
push.v self.undyne
conv.v.i
pushenv [494]

:[493]
push.s "u"@2917
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[494]
popenv [493]
pushi.e 307
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[495]
push.v self.con
pushi.e 308
cmp.i.v EQ
bf [497]

:[496]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e -3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 32
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 309
pop.v.i self.con

:[497]
push.v self.con
pushi.e 310
cmp.i.v EQ
bf [501]

:[498]
push.v self.undyne
conv.v.i
pushenv [500]

:[499]
push.s "u"@2917
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[500]
popenv [499]
pushi.e 311
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[501]
push.v self.con
pushi.e 312
cmp.i.v EQ
bf [503]

:[502]
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 313
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[503]
push.v self.con
pushi.e 314
cmp.i.v EQ
bf [505]

:[504]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 315
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[505]
push.v self.con
pushi.e 316
cmp.i.v EQ
bf [507]

:[506]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 317
pop.v.i self.con
pushi.e 14
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[507]
push.v self.con
pushi.e 318
cmp.i.v EQ
bf [511]

:[508]
push.v self.undyne
conv.v.i
pushenv [510]

:[509]
push.s "u"@2917
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[510]
popenv [509]
pushi.e 319
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[511]
push.v self.con
pushi.e 320
cmp.i.v EQ
bf [515]

:[512]
pushi.e 321
pop.v.i self.con
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1574
conv.i.v
pushi.e 49
conv.i.v
pushi.e 167
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.teapot
pushi.e 0
push.v self.teapot
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.teapot
conv.v.i
pushenv [514]

:[513]
push.v 1063.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[514]
popenv [513]
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[515]
push.v self.con
pushi.e 322
cmp.i.v EQ
bf [517]

:[516]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 323
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[517]
push.v self.con
pushi.e 324
cmp.i.v EQ
bf [521]

:[518]
pushi.e 325
pop.v.i self.con
push.v self.undyne
conv.v.i
pushenv [520]

:[519]
push.s "d"@3518
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[520]
popenv [519]
pushi.e 9
pop.v.i global.faceemotion
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[521]
push.v self.con
pushi.e 326
cmp.i.v EQ
bf [523]

:[522]
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 9
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_undynedate_inside_1641"@29290
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 327
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dg
pushi.e 1
push.v self.dg
conv.v.i
pop.v.i [stacktop]self.side

:[523]
push.v self.con
pushi.e 327
cmp.i.v EQ
bf [525]

:[524]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [526]

:[525]
push.e 0

:[526]
bf [530]

:[527]
pushi.e 0
pop.v.i global.faceemotion
push.v self.undyne
conv.v.i
pushenv [529]

:[528]
push.s "u"@2917
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[529]
popenv [528]
pushi.e 328
pop.v.i self.con
pushi.e 180
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[530]
push.v self.con
pushi.e 329
cmp.i.v EQ
bf [532]

:[531]
pushi.e 1
push.v self.teapot
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 48
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 330
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[532]
push.v self.con
pushi.e 331
cmp.i.v EQ
bf [536]

:[533]
push.v self.undyne
conv.v.i
pushenv [535]

:[534]
push.s "d"@3518
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[535]
popenv [534]
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 9
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_undynedate_inside_1671"@29292
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 332
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dg
pushi.e 1
push.v self.dg
conv.v.i
pop.v.i [stacktop]self.side

:[536]
push.v self.con
pushi.e 332
cmp.i.v EQ
bf [538]

:[537]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [539]

:[538]
push.e 0

:[539]
bf [541]

:[540]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e -3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 334
pop.v.i self.con
pushi.e 14
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[541]
push.v self.con
pushi.e 335
cmp.i.v EQ
bf [545]

:[542]
push.v self.undyne
conv.v.i
pushenv [544]

:[543]
push.s "u"@2917
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[544]
popenv [543]
pushi.e 337
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[545]
push.v self.con
pushi.e 338
cmp.i.v EQ
bf [547]

:[546]
pushi.e 0
push.v self.teacup
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 339
pop.v.i self.con
pushi.e 17
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[547]
push.v self.con
pushi.e 340
cmp.i.v EQ
bf [551]

:[548]
push.v self.undyne
conv.v.i
pushenv [550]

:[549]
push.s "u"@2917
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[550]
popenv [549]
pushi.e 341
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[551]
push.v self.con
pushi.e 342
cmp.i.v EQ
bf [553]

:[552]
pushi.e 0
push.v self.teapot
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.teapot
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 343
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[553]
push.v self.con
pushi.e 344
cmp.i.v EQ
bf [555]

:[554]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 345
pop.v.i self.con
pushi.e 28
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[555]
push.v self.con
pushi.e 346
cmp.i.v EQ
bf [557]

:[556]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 347
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[557]
push.v self.con
pushi.e 348
cmp.i.v EQ
bf [561]

:[558]
push.v self.undyne
conv.v.i
pushenv [560]

:[559]
push.s "u"@2917
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[560]
popenv [559]
pushi.e 349
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[561]
push.v self.con
pushi.e 350
cmp.i.v EQ
bf [563]

:[562]
push.v 1576.x
pushi.e 6
sub.i.v
push.v self.teacup
conv.v.i
pop.v.v [stacktop]self.x
push.v 1576.y
pushi.e 5
add.i.v
push.v self.teacup
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 1
push.v self.teacup
conv.v.i
pop.v.i [stacktop]self.visible
push.v self.undyne
conv.v.i
push.v [stacktop]self.depth
pushi.e 10
add.i.v
push.v self.teacup
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 351
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[563]
push.v self.con
pushi.e 352
cmp.i.v EQ
bf [567]

:[564]
push.v self.undyne
conv.v.i
pushenv [566]

:[565]
push.s "r"@715
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[566]
popenv [565]
pushi.e 1507
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_undynedate_inside_1771"@29294
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.d 352.5
pop.v.d self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[567]
push.v self.con
push.d 352.5
cmp.d.v EQ
bf [569]

:[568]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [570]

:[569]
push.e 0

:[570]
bf [572]

:[571]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e -3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 353
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[572]
push.v self.con
pushi.e 354
cmp.i.v EQ
bf [574]

:[573]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 355
pop.v.i self.con
pushi.e 16
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[574]
push.v self.con
pushi.e 356
cmp.i.v EQ
bf [576]

:[575]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 357
pop.v.i self.con
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.d
push.v self.table
conv.v.i
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.depth

:[576]
push.v self.con
pushi.e 358
cmp.i.v EQ
bf [580]

:[577]
push.v self.undyne
conv.v.i
pushenv [579]

:[578]
push.s "d"@3518
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[579]
popenv [578]
pushi.e 359
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[580]
push.v self.con
pushi.e 360
cmp.i.v EQ
bf [582]

:[581]
pushi.e 1496
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.undyne
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 15
add.i.v
pop.i.v [stacktop]self.y
pushi.e 361
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[582]
push.v self.con
pushi.e 362
cmp.i.v EQ
bf [584]

:[583]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 9
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_undynedate_inside_1833"@29296
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 363
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[584]
push.v self.con
pushi.e 363
cmp.i.v EQ
bf [586]

:[585]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [587]

:[586]
push.e 0

:[587]
bf [589]

:[588]
pushi.e 364
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[589]
push.v self.con
pushi.e 365
cmp.i.v EQ
bf [591]

:[590]
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_undynedate_inside_1850"@29298
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1851"@29299
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1852"@29301
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1853"@29303
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 4
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_undynedate_inside_1855"@29305
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1856"@29307
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 366
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[591]
push.v self.con
pushi.e 366
cmp.i.v EQ
bf [593]

:[592]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [594]

:[593]
push.e 0

:[594]
bf [596]

:[595]
push.d 366.1
pop.v.d self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[596]
push.v self.con
push.d 367.1
cmp.d.v EQ
bf [598]

:[597]
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_undynedate_inside_1873"@29309
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1874"@29311
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1875"@29313
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1876"@29315
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1877"@29317
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1878"@29319
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1879"@29321
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1880"@29323
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 367
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[598]
push.v self.con
pushi.e 367
cmp.i.v EQ
bf [600]

:[599]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [601]

:[600]
push.e 0

:[601]
bf [603]

:[602]
pushi.e 368
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[603]
push.v self.con
pushi.e 369
cmp.i.v EQ
bf [605]

:[604]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [606]

:[605]
push.e 0

:[606]
bf [608]

:[607]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_undynedate_inside_1898"@29324
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1899"@29325
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1900"@29326
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1901"@29327
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1902"@29328
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1903"@29329
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1904"@29330
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1905"@29331
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1906"@29332
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1907"@29333
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1908"@29334
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1909"@29335
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1910"@29336
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1911"@29338
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1912"@29340
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1913"@29342
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1914"@29344
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "music/musicbox.ogg"@2648
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.8
conv.d.v
push.d 0.8
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 370
pop.v.i self.con

:[608]
push.v self.con
pushi.e 370
cmp.i.v EQ
bf [610]

:[609]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [611]

:[610]
push.e 0

:[611]
bf [613]

:[612]
pushi.e 371
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[613]
push.v self.con
pushi.e 372
cmp.i.v EQ
bf [615]

:[614]
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_undynedate_inside_1935"@29346
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1936"@29348
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1937"@29350
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1938"@29352
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1939"@29354
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1940"@29356
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1941"@29358
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1942"@29360
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1943"@29362
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1944"@29364
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1945"@29366
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1946"@29368
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1947"@29370
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1948"@29372
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1949"@29374
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1950"@29376
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 373
pop.v.i self.con

:[615]
push.v self.con
pushi.e 373
cmp.i.v EQ
bf [617]

:[616]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [618]

:[617]
push.e 0

:[618]
bf [620]

:[619]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 375
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[620]
push.v self.con
pushi.e 376
cmp.i.v EQ
bf [622]

:[621]
pushi.e 1339
conv.i.v
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.bcbc
pushi.e 377
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[622]
push.v self.con
pushi.e 378
cmp.i.v EQ
bf [626]

:[623]
push.v self.bcbc
conv.v.i
pushenv [625]

:[624]
call.i instance_destroy(argc=0)
popz.v

:[625]
popenv [624]
pushi.e 379
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[626]
push.v self.con
pushi.e 380
cmp.i.v EQ
bf [628]

:[627]
push.s "obj_undynedate_inside_1978"@29378
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1979"@29380
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_inside_1980"@29382
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 381
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[628]
push.v self.con
pushi.e 381
cmp.i.v EQ
bf [630]

:[629]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [631]

:[630]
push.e 0

:[631]
bf [633]

:[632]
push.v self.undyne
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 15
sub.i.v
pop.i.v [stacktop]self.y
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e -3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 383
pop.v.i self.con
pushi.e 17
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[633]
push.v self.con
pushi.e 384
cmp.i.v EQ
bf [637]

:[634]
push.v self.undyne
conv.v.i
pushenv [636]

:[635]
push.s "l"@3021
conv.s.v
call.i scr_npc_halt(argc=1)
popz.v

:[636]
popenv [635]
pushi.e 385
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[637]
push.v self.con
pushi.e 386
cmp.i.v EQ
bf [end]

:[638]
pushi.e 94
pop.v.i self.con

:[end]
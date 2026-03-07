.localvar 0 arguments

:[0]
push.v self.con
pushi.e 5
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
bf [6]

:[4]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.y
pushi.e 50
add.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
pushi.e 20
add.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.y
pushi.e 40
add.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
pushi.e 10
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [6]

:[5]
pushi.e 2
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e 6
pop.v.i self.con
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.dir
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.fun
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[6]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [8]

:[7]
pushi.e 7
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1427
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i scr_papface(argc=2)
popz.v
pushi.e 0
pop.v.i global.msc
push.s "obj_undynedate_outside_155"@29384
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_outside_156"@29386
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
pushi.e 9
pop.v.i self.con

:[10]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [12]

:[11]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [16]

:[14]
push.d 0.2
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.papyrus
conv.v.i
push.v [stacktop]self.image_index
pushi.e 4
cmp.i.v GTE
bf [16]

:[15]
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 10
pop.v.i self.con

:[16]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_undynedate_outside_173"@29388
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
pushi.e 11
pop.v.i self.con

:[18]
push.v self.con
pushi.e 11
cmp.i.v EQ
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
bf [24]

:[22]
push.d -0.2
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.papyrus
conv.v.i
push.v [stacktop]self.image_index
pushi.e 1
cmp.i.v LT
bf [24]

:[23]
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 12
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[24]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1415
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 17
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 14
pop.v.i self.con

:[26]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [28]

:[27]
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
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 16
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[28]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [30]

:[29]
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v
pushi.e 18
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1063
conv.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.y
pushi.e 35
sub.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.undyne
push.v self.undyne
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.d
push.i 900001
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 130
conv.i.v
call.i caster_play(argc=3)
popz.v
pushi.e 20
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[32]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [37]

:[33]
push.v self.door
conv.v.i
pushenv [36]

:[34]
push.v self.image_index
push.d 7.6
cmp.d.v LT
bf [36]

:[35]
push.v self.image_index
push.d 0.2
add.d.v
pop.v.v self.image_index

:[36]
popenv [34]

:[37]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [39]

:[38]
pushi.e 5
pop.v.i global.facechoice
pushi.e 37
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_undynedate_outside_241"@29390
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_outside_243"@29392
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_undynedate_outside_245"@29394
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undynedate_outside_246"@29396
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.beedly
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 22
pop.v.i self.con

:[39]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [41]

:[40]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushi.e -4
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
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
pushi.e 23
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[44]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [46]

:[45]
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 25
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[46]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [48]

:[47]
pushi.e 5
pop.v.i global.facechoice
pushi.e 37
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_undynedate_outside_276"@29398
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynedate_outside_277"@29399
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undynedate_outside_278"@29401
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_undynedate_outside_280"@29402
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_undynedate_outside_282"@29404
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 27
pop.v.i self.con

:[48]
push.v self.con
pushi.e 27
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
pushi.e 28
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[53]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [55]

:[54]
push.v self.undyne
conv.v.i
push.v [stacktop]self.usprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.undyne
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.1
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.papyrus
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 4
add.i.v
pop.i.v [stacktop]self.x
push.v self.papyrus
conv.v.i
dup.i 0
push.v [stacktop]self.y
push.d 0.5
sub.d.v
pop.i.v [stacktop]self.y
push.v self.papyrus
conv.v.i
push.v [stacktop]self.rsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.25
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed

:[55]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [57]

:[56]
push.d 0.5
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 30
pop.v.i self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[57]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [59]

:[58]
push.d 0.5
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.papyrus
conv.v.i
push.v [stacktop]self.rsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 32
pop.v.i self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[59]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [61]

:[60]
push.d 0.5
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.papyrus
conv.v.i
push.v [stacktop]self.lsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 34
pop.v.i self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[61]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [63]

:[62]
push.d 0.5
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e -3
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 36
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[63]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [65]

:[64]
push.v self.papyrus
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.12
sub.d.v
pop.i.v [stacktop]self.image_alpha

:[65]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [71]

:[66]
pushi.e 807
conv.i.v
pushi.e 83
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v self.papyrus
conv.v.i
pushenv [68]

:[67]
call.i instance_destroy(argc=0)
popz.v

:[68]
popenv [67]
push.v self.undyne
conv.v.i
pushenv [70]

:[69]
call.i instance_destroy(argc=0)
popz.v

:[70]
popenv [69]
pushi.e 0
pop.v.i global.interact
pushi.e 38
pop.v.i self.con

:[71]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [77]

:[72]
push.v 1576.y
pushi.e 180
cmp.i.v GT
bf [74]

:[73]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
pushi.e 5
pop.v.i global.typer
pushi.e 175
pop.v.i 1576.y
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_undynedate_outside_364"@29406
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
push.s "obj_undynedate_outside_366"@29408
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
pushi.e 1
pop.v.i global.interact
pushi.e 39
pop.v.i self.con

:[77]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [79]

:[78]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
pushi.e 175
pop.v.i 1576.y

:[82]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [84]

:[83]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [85]

:[84]
push.e 0

:[85]
bf [end]

:[86]
pushi.e 38
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[end]
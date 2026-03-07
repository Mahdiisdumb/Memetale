.localvar 0 arguments

:[0]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[1]
push.v 1576.x
push.v self.x
cmp.v.v GT
bf [3]

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [10]

:[5]
pushi.e 2
pop.v.i self.con
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.musfade
push.d 0.01
push.v self.musfade
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 1048
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[6]
pushi.e 1048
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]

:[9]
pushi.e 1119
conv.i.v
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 420
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.undyne
pushi.e 1546
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.rsprite
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.direction
push.v self.undyne
conv.v.i
push.v [stacktop]self.rsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[10]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [17]

:[11]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [14]

:[12]
push.v 1576.x
push.v self.x
pushi.e 320
sub.i.v
cmp.v.v LT
bf [14]

:[13]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.d 1.5
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.curview
pushi.e 1
pop.v.i 1576.cutscene

:[17]
push.v self.con
push.d 2.5
cmp.d.v EQ
bf [19]

:[18]
pushi.e 3
pop.v.i self.con

:[19]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [22]

:[20]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 1
sub.i.v
pop.i.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.curview
pushi.e 50
sub.i.v
cmp.v.v LT
bf [22]

:[21]
push.d 3.1
pop.v.d self.con
pushi.e 140
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[22]
push.v self.con
push.d 3.1
cmp.d.v EQ
bf [24]

:[23]
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.1
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed

:[24]
push.v self.con
push.d 4.1
cmp.d.v EQ
bf [26]

:[25]
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
pushi.e 5
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[26]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [28]

:[27]
pushi.e 7
pop.v.i self.con
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[28]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [32]

:[29]
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.rr
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [31]

:[30]
pushi.e 1365
conv.i.v
pushi.e -223
push.v self.rr
pushi.e 3
mul.i.v
add.v.i
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 170
push.v self.rr
pushi.e 6
mul.i.v
add.v.i
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.ar
pushi.e 1
push.v self.ar
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1539
push.v self.ar
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -90
push.v self.ar
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 24
push.v self.ar
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d -0.3
push.v self.ar
conv.v.i
pop.v.d [stacktop]self.friction
push.v self.rr
pushi.e 1
add.i.v
pop.v.v self.rr
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [30]

:[31]
popz.i
pushi.e 9
pop.v.i self.con

:[32]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [35]

:[33]
push.v self.ar
conv.v.i
push.v [stacktop]self.y
push.v 1576.y
cmp.v.v GT
bf [35]

:[34]
pushi.e 14
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shake(argc=3)
popz.v
pushi.e 10
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[35]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [37]

:[36]
pushi.e 1
pop.v.i global.phasing
pushi.e 12
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.dir
pushi.e 1
pop.v.i self.int
pushi.e 1
pop.v.i self.tspeed
push.d 0.2
pop.v.d self.tgrav

:[37]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [42]

:[38]
push.v self.dir
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
push.v self.int
call.i random(argc=1)
push.v self.int
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.memx
push.v self.int
call.i random(argc=1)
push.v self.int
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.memy
push.v self.int
push.d 0.08
add.d.v
pop.v.v self.int
pushi.e 1
pop.v.i self.dir
b [41]

:[40]
push.v self.memx
neg.v
pop.v.v self.memx
push.v self.memy
neg.v
pop.v.v self.memy
pushi.e 0
pop.v.i self.dir

:[41]
push.v 1576.x
push.v self.memx
add.v.v
pop.v.v 1576.x
push.v 1576.y
push.v self.memy
add.v.v
pop.v.v 1576.y
push.v self.memy
push.v self.memx
push.i 1000010
conv.i.v
call.i tile_layer_shift(argc=3)
popz.v

:[42]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [44]

:[43]
pushi.e 14
pop.v.i self.con
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[44]
push.v self.con
pushi.e 14
cmp.i.v EQ
bt [46]

:[45]
push.v self.con
pushi.e 15
cmp.i.v EQ
b [47]

:[46]
push.e 1

:[47]
bf [49]

:[48]
push.v self.tspeed
push.v self.tgrav
add.v.v
pop.v.v self.tspeed
pushi.e 0
pop.v.i global.border
pushi.e 0
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 16
pop.v.i [array]global.flag
call.i SCR_BORDERSETUP(argc=0)
popz.v
push.v self.tspeed
pushi.e 1
conv.i.v
push.i 1000010
conv.i.v
call.i tile_layer_shift(argc=3)
popz.v
push.v 1576.x
pushi.e 1
add.i.v
pop.v.v 1576.x
push.v 1576.y
push.v self.tspeed
push.d 0.8
sub.d.v
add.v.v
pop.v.v 1576.y
push.v 1576.image_angle
push.d 0.5
sub.d.v
pop.v.v 1576.image_angle
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 2
add.i.v
pop.i.v [array]self.view_yview
pushi.e 151
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.f
push.d 0.001
push.v self.f
conv.v.i
pop.v.d [stacktop]self.tspeed

:[49]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [53]

:[50]
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 151
pushenv [52]

:[51]
call.i instance_destroy(argc=0)
popz.v

:[52]
popenv [51]
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 16
pop.v.i self.con

:[53]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [55]

:[54]
pushi.e 1365
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
pop.v.i [stacktop]self.visible
pushi.e 20
pop.v.i 1576.x
pushi.e 20
pop.v.i 1576.y
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 10
push.v self.g
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1084
push.v self.g
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 100
push.v self.g
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 100
push.v self.g
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.s "music/musicbox.ogg"@2648
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.tempmusic
pushi.e 18
pop.v.i self.con
pushi.e 0
pop.v.i self.tempvol
push.d 0.7
pop.v.d self.temppitch
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[55]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [57]

:[56]
push.d 0.7
conv.d.v
push.v self.tempvol
push.v self.tempmusic
call.i caster_loop(argc=3)
popz.v
pushi.e 35
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
push.s "obj_undyneencounter4_255"@29432
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyneencounter4_256"@29434
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyneencounter4_257"@29436
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undyneencounter4_258"@29438
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undyneencounter4_259"@29439
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undyneencounter4_260"@29441
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undyneencounter4_261"@29443
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 80
conv.i.v
pushi.e 50
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 20
pop.v.i self.con

:[57]
push.v self.con
pushi.e 19
cmp.i.v EQ
bt [59]

:[58]
push.v self.con
pushi.e 20
cmp.i.v EQ
b [60]

:[59]
push.e 1

:[60]
bf [64]

:[61]
push.v self.tempvol
pushi.e 1
cmp.i.v LT
bf [63]

:[62]
push.v self.tempvol
push.d 0.02
add.d.v
pop.v.v self.tempvol

:[63]
push.v self.tempvol
push.v self.tempmusic
call.i caster_set_volume(argc=2)
popz.v

:[64]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [66]

:[65]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushi.e 36
pop.v.i global.typer
push.s "obj_undyneencounter4_275"@29445
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 80
conv.i.v
pushi.e 50
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 151
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.q
push.d 0.01
push.v self.q
conv.v.i
pop.v.d [stacktop]self.tspeed
pushi.e 21
pop.v.i self.con

:[69]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [74]

:[70]
push.v self.tempvol
pushi.e 0
cmp.i.v GT
bf [72]

:[71]
push.v self.tempvol
push.d 0.008
sub.d.v
pop.v.v self.tempvol

:[72]
push.v self.temppitch
push.d 0.004
add.d.v
pop.v.v self.temppitch
push.v self.tempvol
push.v self.tempmusic
call.i caster_set_volume(argc=2)
popz.v
push.v self.temppitch
push.v self.tempmusic
call.i caster_set_pitch(argc=2)
popz.v
push.v self.tempvol
push.d 0.009
cmp.d.v LTE
bf [74]

:[73]
push.v self.tempmusic
call.i caster_free(argc=1)
popz.v
pushi.e 22
pop.v.i self.con

:[74]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [end]

:[75]
call.i room_goto_next(argc=0)
popz.v

:[end]
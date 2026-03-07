.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
call.i scr_npc_anim(argc=0)
popz.v
pushi.e 2
conv.i.v
pushi.e 110
conv.i.v
call.i script_execute(argc=2)
popz.v
pushi.e 0
pop.v.i self.image_alpha
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[1]
pushi.e 1576
conv.i.v
call.i distance_to_object(argc=1)
pop.v.v self.dist
push.v self.dist
pushi.e 60
cmp.i.v LT
bf [5]

:[2]
pushi.e 5
conv.i.d
push.v self.dist
pushi.e 2
add.i.v
div.v.d
pop.v.v self.disto
push.v self.disto
pushi.e 1
cmp.i.v GT
bf [4]

:[3]
pushi.e 1
pop.v.i self.disto

:[4]
push.v self.disto
pop.v.v self.image_alpha

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
pushglb.v global.currentsong
call.i caster_get_volume(argc=1)
pop.v.v self.tempvol

:[7]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [11]

:[8]
pushi.e 1
pop.v.i global.interact
push.v self.tempvol
push.d 0.02
sub.d.v
pop.v.v self.tempvol
push.v self.tempvol
pushi.e 0
cmp.i.v LTE
bf [10]

:[9]
pushi.e 0
pop.v.i self.tempvol
pushi.e 3
pop.v.i self.con
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v

:[10]
push.v self.tempvol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[11]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.i global.interact

:[13]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 1
pop.v.i global.interact
push.s "music/race.ogg"@2852
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.race
pushi.e 4
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[18]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1
pop.v.i global.interact

:[20]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
pop.v.i global.interact
pushi.e 90
pop.v.i self.direction
pushi.e 2
pop.v.i global.facing
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
push.s "obj_napstablook_farm2_270"@18937
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 60
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 6
pop.v.i self.con

:[22]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1
pop.v.i global.interact

:[24]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [26]

:[25]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 0
pop.v.i self.bringback
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.race
call.i caster_loop(argc=3)
popz.v
push.s "obj_napstablook_farm2_284"@18939
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 60
add.i.v
call.i instance_create(argc=3)
popz.v
push.d -0.13
pop.v.d self.defaultspeed
push.v self.defaultspeed
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
pop.v.v [stacktop]self.hspeed
push.d 0.25
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
pop.v.d [stacktop]self.image_speed
push.d -0.18
pushi.e -1
pushi.e 1
push.v [array]self.snail
conv.v.i
pop.v.d [stacktop]self.hspeed
push.d 0.25
pushi.e -1
pushi.e 1
push.v [array]self.snail
conv.v.i
pop.v.d [stacktop]self.image_speed
push.d -0.17
pushi.e -1
pushi.e 2
push.v [array]self.snail
conv.v.i
pop.v.d [stacktop]self.hspeed
push.d 0.25
pushi.e -1
pushi.e 2
push.v [array]self.snail
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 7
pop.v.i self.con

:[29]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [31]

:[30]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [100]

:[33]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [35]

:[34]
push.v self.blcontimer
pushi.e 15
cmp.i.v LTE
b [36]

:[35]
push.e 0

:[36]
bf [44]

:[37]
pushi.e 29
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 29
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.blconyes
pushi.e 1
cmp.i.v EQ
bf [43]

:[38]
push.v self.blcon
conv.v.i
pushenv [40]

:[39]
call.i instance_destroy(argc=0)
popz.v

:[40]
popenv [39]
push.v self.blcon2
conv.v.i
pushenv [42]

:[41]
call.i instance_destroy(argc=0)
popz.v

:[42]
popenv [41]

:[43]
pushi.e 1339
conv.i.v
push.v 1576.y
pushi.e 10
sub.i.v
push.v 1576.x
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 1339
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 0
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.encouragement
pushi.e 1
add.i.v
pop.v.v self.encouragement
pushi.e 1
pop.v.i self.blconyes
pushi.e 11
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.blcontimer

:[44]
push.v self.blcontimer
pushi.e 0
cmp.i.v LTE
bf [46]

:[45]
push.v self.blconyes
pushi.e 1
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [62]

:[48]
push.v self.blcon
conv.v.i
pushenv [50]

:[49]
call.i instance_destroy(argc=0)
popz.v

:[50]
popenv [49]
push.v self.blcon2
conv.v.i
pushenv [52]

:[51]
call.i instance_destroy(argc=0)
popz.v

:[52]
popenv [51]
pushi.e 0
pop.v.i self.blconyes
push.v self.encouragement
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.v self.snailsad
pushi.e 0
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
push.v self.defaultspeed
push.d 0.01
sub.d.v
pop.v.v self.defaultspeed
push.v self.defaultspeed
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
pop.v.v [stacktop]self.hspeed

:[57]
push.v self.encouragement
pushi.e 2
cmp.i.v EQ
bf [59]

:[58]
push.v self.defaultspeed
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
pop.v.v [stacktop]self.hspeed

:[59]
push.v self.encouragement
pushi.e 3
cmp.i.v GTE
bf [61]

:[60]
push.v self.defaultspeed
push.d 0.01
push.v self.encouragement
mul.v.d
add.v.v
pop.v.v self.defaultspeed
push.v self.defaultspeed
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
pop.v.v [stacktop]self.hspeed

:[61]
pushi.e 0
pop.v.i self.encouragement

:[62]
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.hspeed
pushi.e 0
cmp.i.v GT
bt [64]

:[63]
push.v self.encouragement
pushi.e 30
cmp.i.v GT
b [65]

:[64]
push.e 1

:[65]
bf [90]

:[66]
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.hspeed
pushi.e 0
cmp.i.v GT
bt [68]

:[67]
push.v self.encouragement
pushi.e 90
cmp.i.v GT
b [69]

:[68]
push.e 1

:[69]
bf [71]

:[70]
push.d -0.4
pushi.e -1
pushi.e 1
push.v [array]self.snail
conv.v.i
pop.v.d [stacktop]self.hspeed
push.d -0.44
pushi.e -1
pushi.e 2
push.v [array]self.snail
conv.v.i
pop.v.d [stacktop]self.hspeed

:[71]
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.hspeed
pushi.e 0
cmp.i.v GT
bt [73]

:[72]
push.v self.encouragement
pushi.e 70
cmp.i.v GT
b [74]

:[73]
push.e 1

:[74]
bf [77]

:[75]
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.sprite_index
pushi.e 1651
cmp.i.v EQ
bf [77]

:[76]
pushi.e 1652
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[77]
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.hspeed
pushi.e 0
cmp.i.v GT
bt [79]

:[78]
push.v self.encouragement
pushi.e 50
cmp.i.v GT
b [80]

:[79]
push.e 1

:[80]
bf [83]

:[81]
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.sprite_index
pushi.e 1650
cmp.i.v EQ
bf [83]

:[82]
pushi.e 1651
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i self.snailsad

:[83]
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.hspeed
pushi.e 0
cmp.i.v GT
bt [85]

:[84]
push.v self.encouragement
pushi.e 30
cmp.i.v GT
b [86]

:[85]
push.e 1

:[86]
bf [89]

:[87]
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.sprite_index
pushi.e 1649
cmp.i.v EQ
bf [89]

:[88]
pushi.e 1650
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.snailsad

:[89]
pushi.e 0
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.hspeed

:[90]
push.v self.blcontimer
pushi.e 1
sub.i.v
pop.v.v self.blcontimer
push.v self.snailtimer
pushi.e 1
sub.i.v
pop.v.v self.snailtimer
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.x
pushi.e 490
cmp.i.v LT
bf [92]

:[91]
pushi.e 1
pop.v.i self.won

:[92]
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.x
pushi.e 480
cmp.i.v LT
bf [94]

:[93]
pushi.e 8
pop.v.i self.con

:[94]
pushi.e -1
pushi.e 1
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.x
pushi.e 480
cmp.i.v LT
bf [97]

:[95]
pushi.e 8
pop.v.i self.con
push.v self.won
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
pushi.e 2
pop.v.i self.won

:[97]
pushi.e -1
pushi.e 2
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.x
pushi.e 480
cmp.i.v LT
bf [100]

:[98]
pushi.e 8
pop.v.i self.con
push.v self.won
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
pushi.e 2
pop.v.i self.won

:[100]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [102]

:[101]
push.v self.race
call.i caster_free(argc=1)
popz.v
pushi.e 112
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_napstablook_farm2_374"@18941
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 60
add.i.v
call.i instance_create(argc=3)
popz.v
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 0
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
pushi.e -1
pushi.e 1
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
pushi.e -1
pushi.e 2
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
pushi.e -1
pushi.e 1
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
pushi.e -1
pushi.e 2
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 9
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[102]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [106]

:[103]
push.v self.tempvol
push.d 0.02
add.d.v
pop.v.v self.tempvol
push.v self.tempvol
pushi.e 1
cmp.i.v GTE
bf [105]

:[104]
pushi.e 1
pop.v.i self.tempvol
pushi.e 11
pop.v.i self.con

:[105]
push.v self.tempvol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[106]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [115]

:[107]
pushi.e 180
pop.v.i self.direction
pushi.e 1
pop.v.i global.facing
push.v self.won
pushi.e 0
cmp.i.v EQ
bf [110]

:[108]
push.s "obj_napstablook_farm2_402"@18943
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_napstablook_farm2_403"@18945
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_napstablook_farm2_404"@18947
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_napstablook_farm2_405"@18949
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.snailsad
pushi.e 0
cmp.i.v GT
bf [110]

:[109]
push.s "obj_napstablook_farm2_408"@18951
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_napstablook_farm2_409"@18953
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_napstablook_farm2_410"@18955
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[110]
push.v self.won
pushi.e 1
cmp.i.v EQ
bf [112]

:[111]
push.s "obj_napstablook_farm2_415"@18957
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_napstablook_farm2_416"@18959
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_napstablook_farm2_417"@18961
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v global.gold
pushi.e 9
add.i.v
pop.v.v global.gold

:[112]
push.v self.won
pushi.e 2
cmp.i.v EQ
bf [114]

:[113]
push.s "obj_napstablook_farm2_422"@18963
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_napstablook_farm2_423"@18965
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_napstablook_farm2_424"@18967
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_napstablook_farm2_426"@18969
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_napstablook_farm2_427"@18971
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v global.gold
pushi.e 30
add.i.v
pop.v.v global.gold

:[114]
call.i scr_regulartext(argc=0)
popz.v
pushi.e 12
pop.v.i self.con

:[115]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [117]

:[116]
pushi.e 8
pop.v.i self.buffer

:[117]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [119]

:[118]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [120]

:[119]
push.e 0

:[120]
bf [122]

:[121]
pushi.e 1
pop.v.i self.bringback
pushi.e 0
pop.v.i global.interact
pushi.e 13
pop.v.i self.con

:[122]
push.v self.bringback
pushi.e 1
cmp.i.v EQ
bf [end]

:[123]
pushi.e 0
pop.v.i self.there
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.sprite_index
pushi.e 1649
cmp.i.v NEQ
bf [125]

:[124]
pushi.e 1649
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[125]
pushi.e 0
pop.v.i self.i

:[126]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [131]

:[127]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.xstart
cmp.v.v LT
bf [129]

:[128]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.snail
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 4
add.i.v
pop.i.v [stacktop]self.x
push.d 0.334
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.snail
conv.v.i
pop.v.d [stacktop]self.image_speed
b [130]

:[129]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.snail
conv.v.i
push.v [stacktop]self.xstart
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.snail
conv.v.i
pop.v.v [stacktop]self.x
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.there
pushi.e 1
add.i.v
pop.v.v self.there

:[130]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [126]

:[131]
push.v self.there
pushi.e 3
cmp.i.v GTE
bf [end]

:[132]
pushi.e 2
pop.v.i self.bringback

:[end]
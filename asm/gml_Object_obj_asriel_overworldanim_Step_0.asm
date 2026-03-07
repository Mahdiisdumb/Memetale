.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
push.d 0.08
pop.v.d self.image_speed

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i global.msc
pushi.e 3
pop.v.i global.faceemotion
pushi.e 9
pop.v.i global.facechoice
pushi.e 89
pop.v.i global.typer
push.s "obj_asriel_overworldanim_174"@10127
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
bf [9]

:[8]
pushi.e 4
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[9]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [11]

:[10]
push.d 0.1
pop.v.d self.image_speed
pushi.e 2524
pop.v.i self.sprite_index

:[11]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [13]

:[12]
pushi.e 6
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
push.v self.y
pushi.e 2
sub.i.v
pop.v.v self.y
pushi.e 2522
pop.v.i self.sprite_index

:[13]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [17]

:[14]
push.v self.image_index
pushi.e 2
cmp.i.v LT
bf [16]

:[15]
push.v self.image_index
push.d 0.03333333333333333
add.d.v
pop.v.v self.image_index
b [17]

:[16]
pushi.e 2
pop.v.i self.image_index

:[17]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [19]

:[18]
push.d 0.8
conv.d.v
pushi.e 1
conv.i.v
push.v self.musicbox
call.i caster_loop(argc=3)
popz.v
pushi.e 2526
pop.v.i self.sprite_index
pushi.e 800
pop.v.i global.msc
pushi.e 7
pop.v.i global.faceemotion
pushi.e 9
pop.v.i global.facechoice
pushi.e 89
pop.v.i global.typer
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 7.1
pop.v.d self.con
push.v self.musicbox
call.i caster_get_volume(argc=1)
pop.v.v self.mvol

:[19]
push.v self.con
push.d 7.1
cmp.d.v EQ
bf [21]

:[20]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [25]

:[23]
push.v self.mvol
push.d 0.02
sub.d.v
pop.v.v self.mvol
push.v self.mvol
push.v self.musicbox
call.i caster_set_volume(argc=2)
popz.v
push.v self.mvol
push.d -0.5
cmp.d.v LT
bf [25]

:[24]
pushi.e 8
pop.v.i self.con

:[25]
push.v self.con
pushi.e 8
cmp.i.v EQ
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
pushi.e 60
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 9
pop.v.i self.con
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.siner
push.v self.y
pop.v.v self.thisy
pushi.e 0
pop.v.i self.upy
pushi.e 0
pop.v.i self.times

:[30]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [32]

:[31]
pushi.e 10
pop.v.i self.con
pushi.e 420
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.whited
pushi.e -3
pop.v.i self.shaked
pushi.e 1
pop.v.i self.powered

:[32]
push.v self.con
pushi.e 10
cmp.i.v EQ
bt [34]

:[33]
push.v self.con
pushi.e 11
cmp.i.v EQ
b [35]

:[34]
push.e 1

:[35]
bf [40]

:[36]
push.v self.shaked
push.d 0.01
add.d.v
pop.v.v self.shaked
push.v self.shaked
pushi.e 0
cmp.i.v GT
bf [40]

:[37]
push.v self.shaked
pushi.e 1
cmp.i.v LT
bf [39]

:[38]
pushi.e 1
pop.v.i self.shaked

:[39]
pushi.e 0
push.v self.shaked
call.i random(argc=1)
add.v.i
push.v self.shaked
call.i random(argc=1)
sub.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
pushi.e 0
push.v self.shaked
call.i random(argc=1)
add.v.i
push.v self.shaked
call.i random(argc=1)
sub.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview

:[40]
push.v self.powered
pushi.e 1
cmp.i.v EQ
bf [53]

:[41]
pushi.e 2519
pop.v.i self.sprite_index
push.v self.image_index
pushi.e 7
cmp.i.v LT
bf [43]

:[42]
push.v self.image_index
push.d 0.03
add.d.v
pop.v.v self.image_index

:[43]
push.v self.image_index
pushi.e 7
cmp.i.v GTE
bf [49]

:[44]
push.v self.image_index
push.d 0.2
add.d.v
pop.v.v self.image_index
push.v self.image_index
push.d 8.8
cmp.d.v GTE
bf [46]

:[45]
push.v self.times
pushi.e 1
add.i.v
pop.v.v self.times
pushi.e 7
pop.v.i self.image_index

:[46]
push.v self.times
pushi.e 6
cmp.i.v GT
bf [49]

:[47]
push.v self.emerge
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
pushi.e 1
pop.v.i self.emerge

:[49]
push.v self.image_index
pushi.e 5
cmp.i.v GTE
bf [53]

:[50]
push.v self.upy
pushi.e 10
cmp.i.v LT
bf [52]

:[51]
push.v self.upy
push.d 0.25
add.d.v
pop.v.v self.upy

:[52]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.thisy
push.v self.upy
sub.v.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
sub.v.v
pop.v.v self.y

:[53]
push.v self.emerge
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
pushi.e 1689
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 3
add.i.v
call.i instance_create(argc=3)
pop.v.v self.m
pushi.e 1
push.v self.m
conv.v.i
pop.v.i [stacktop]self.spec
pushi.e 6
push.v self.m
conv.v.i
pushi.e 0
pop.v.i [array]self.rno
pushi.e 10
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.emerge

:[55]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [57]

:[56]
pushi.e 1134
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.x
pushi.e 60
add.i.v
push.v self.mc
conv.v.i
pop.v.v [stacktop]self.x
push.v self.thisy
pushi.e 2
sub.i.v
push.v self.mc
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 2520
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 21
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[57]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [59]

:[58]
pushi.e 23
pop.v.i self.con

:[59]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [65]

:[60]
push.v self.image_index
push.d 0.05
add.d.v
pop.v.v self.image_index
push.v self.y
push.v self.thisy
cmp.v.v LT
bf [62]

:[61]
push.v self.y
push.d 0.2
add.d.v
pop.v.v self.y
b [63]

:[62]
push.v self.thisy
pop.v.v self.y

:[63]
push.v self.image_index
pushi.e 10
cmp.i.v GTE
bf [65]

:[64]
pushi.e 24
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[65]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [67]

:[66]
pushi.e 2532
pop.v.i self.sprite_index
pushi.e 26
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[67]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [69]

:[68]
pushi.e 2521
pop.v.i self.sprite_index
push.d 27.1
pop.v.d self.con
pushi.e 803
pop.v.i global.msc
pushi.e 7
pop.v.i global.faceemotion
pushi.e 9
pop.v.i global.facechoice
pushi.e 89
pop.v.i global.typer
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dl
pushi.e 0
push.v self.dl
conv.v.i
pop.v.i [stacktop]self.side

:[69]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [71]

:[70]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
pushi.e 2521
pop.v.i self.sprite_index
push.v self.x
pushi.e 60
add.i.v
push.v self.mc
conv.v.i
pop.v.v [stacktop]self.x
push.v self.thisy
pushi.e 2
sub.i.v
push.v self.mc
conv.v.i
pop.v.v [stacktop]self.y
push.v self.depth
pushi.e 1
sub.i.v
push.v self.mc
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 29
pop.v.i self.con

:[74]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [77]

:[75]
push.v self.mc
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.x
push.v self.mc
conv.v.i
dup.i 0
push.v [stacktop]self.image_index
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_index
push.v self.mc
conv.v.i
push.v [stacktop]self.x
push.v self.x
pushi.e 2
add.i.v
cmp.v.v LTE
bf [77]

:[76]
push.v self.x
pushi.e 2
add.i.v
push.v self.mc
conv.v.i
pop.v.v [stacktop]self.x
pushi.e 30
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[77]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [79]

:[78]
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 0
pop.v.i self.image_index
pushi.e 2518
pop.v.i self.sprite_index
pushi.e 32
pop.v.i self.con

:[79]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [82]

:[80]
push.v self.image_index
push.d 0.2
add.d.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 4
cmp.i.v GTE
bf [82]

:[81]
pushi.e 33
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[82]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [85]

:[83]
push.v self.image_index
push.d 0.2
add.d.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 8
cmp.i.v GTE
bf [85]

:[84]
pushi.e 35
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[85]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [88]

:[86]
pushi.e 0
pop.v.i self.pattimer
push.v self.image_index
push.d 0.2
add.d.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 11
cmp.i.v GTE
bf [88]

:[87]
pushi.e 37
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[88]
push.v self.con
pushi.e 38
cmp.i.v EQ
bt [90]

:[89]
push.v self.con
push.d 38.1
cmp.d.v EQ
b [91]

:[90]
push.e 1

:[91]
bf [96]

:[92]
push.v self.image_index
push.d 0.05
add.d.v
pop.v.v self.image_index
push.v self.image_index
push.d 11.8
cmp.d.v GTE
bf [94]

:[93]
push.d 10.2
pop.v.d self.image_index

:[94]
push.v self.pattimer
pushi.e 1
add.i.v
pop.v.v self.pattimer
push.v self.pattimer
pushi.e 90
cmp.i.v EQ
bf [96]

:[95]
push.d 38.1
pop.v.d self.con
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.facechoice
pushi.e 90
pop.v.i global.typer
push.s "obj_asriel_overworldanim_440"@10129
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asriel_overworldanim_441"@10131
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
pop.v.v self.dl
pushi.e 0
push.v self.dl
conv.v.i
pop.v.i [stacktop]self.side

:[96]
push.v self.con
push.d 38.1
cmp.d.v EQ
bf [98]

:[97]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [101]

:[100]
push.d 38.2
pop.v.d self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[101]
push.v self.con
push.d 39.2
cmp.d.v EQ
bf [103]

:[102]
pushi.e 39
pop.v.i self.con
pushi.e 11
pop.v.i self.hug_rev
pushi.e 11
pop.v.i self.image_index

:[103]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [107]

:[104]
push.v self.hug_rev
push.d 0.3
cmp.d.v GT
bf [106]

:[105]
push.v self.hug_rev
push.d 0.1
sub.d.v
pop.v.v self.hug_rev
push.v self.image_index
push.d 0.1
sub.d.v
pop.v.v self.image_index
b [107]

:[106]
pushi.e 0
pop.v.i self.image_index
pushi.e 40
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.mc
conv.v.i
push.v [stacktop]self.x
pop.v.v self.mcx
pushi.e 1
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 2521
pop.v.i self.sprite_index

:[107]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [110]

:[108]
push.v self.mc
conv.v.i
dup.i 0
push.v [stacktop]self.image_index
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_index
push.v self.mc
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 1
add.i.v
pop.i.v [stacktop]self.x
push.v self.mc
conv.v.i
push.v [stacktop]self.x
push.v self.mcx
pushi.e 30
add.i.v
cmp.v.v GT
bf [110]

:[109]
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 49
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[110]
push.v self.con
pushi.e 50
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
bf [115]

:[114]
pushi.e 2530
pop.v.i self.sprite_index
push.s "obj_asriel_overworldanim_495"@10132
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asriel_overworldanim_496"@10134
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asriel_overworldanim_497"@10136
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asriel_overworldanim_498"@10138
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_asriel_overworldanim_499"@10140
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
pop.v.i global.msc
pushi.e 7
pop.v.i global.faceemotion
pushi.e 9
pop.v.i global.facechoice
pushi.e 89
pop.v.i global.typer
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dl
pushi.e 1
push.v self.dl
conv.v.i
pop.v.i [stacktop]self.side
push.d 50.1
pop.v.d self.con

:[115]
push.v self.con
push.d 50.1
cmp.d.v EQ
bf [117]

:[116]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [118]

:[117]
push.e 0

:[118]
bf [120]

:[119]
push.d 49.2
pop.v.d self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[120]
push.v self.con
push.d 50.2
cmp.d.v EQ
bf [122]

:[121]
pushi.e 2528
pop.v.i self.sprite_index
push.d 49.3
pop.v.d self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[122]
push.v self.con
push.d 50.3
cmp.d.v EQ
bf [124]

:[123]
pushi.e 0
pop.v.i global.msc
pushi.e 7
pop.v.i global.faceemotion
pushi.e 9
pop.v.i global.facechoice
pushi.e 89
pop.v.i global.typer
push.s "obj_asriel_overworldanim_533"@10142
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asriel_overworldanim_534"@10144
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
pop.v.v self.dl
pushi.e 1
push.v self.dl
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 52
pop.v.i self.con

:[124]
push.v self.con
pushi.e 52
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
bf [129]

:[128]
push.d -0.25
pop.v.d self.vspeed
push.d 0.1
pop.v.d self.image_speed
pushi.e 54
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[129]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [131]

:[130]
push.v self.y
call.i round(argc=1)
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 56
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[131]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [133]

:[132]
pushi.e 2526
pop.v.i self.sprite_index
pushi.e 58
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[133]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [135]

:[134]
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.faceemotion
pushi.e 9
pop.v.i global.facechoice
pushi.e 89
pop.v.i global.typer
push.s "obj_asriel_overworldanim_572"@10146
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asriel_overworldanim_573"@10148
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asriel_overworldanim_574"@10150
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
pop.v.v self.dl
pushi.e 1
push.v self.dl
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 60
pop.v.i self.con

:[135]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [137]

:[136]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [138]

:[137]
push.e 0

:[138]
bf [140]

:[139]
pushi.e 61
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[140]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [142]

:[141]
pushi.e 63
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2528
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.ttimer

:[142]
push.v self.con
pushi.e 64
cmp.i.v EQ
bf [end]

:[143]
pushi.e 1132
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2528
pop.v.i self.sprite_index
push.d -0.25
pop.v.d self.vspeed
push.d 0.05
pop.v.d self.image_speed
push.v self.ttimer
pushi.e 1
add.i.v
pop.v.v self.ttimer
push.v self.ttimer
pushi.e 40
cmp.i.v EQ
bf [145]

:[144]
pushi.e 558
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sw
pushi.e 1
push.v self.sw
conv.v.i
pop.v.i [stacktop]self.ex

:[145]
push.v self.ttimer
pushi.e 104
cmp.i.v EQ
bf [end]

:[146]
pushi.e 1
pushi.e -5
pushi.e 510
pop.v.i [array]global.flag
pushi.e 999
pop.v.i global.plot
pushi.e 1
pushi.e -5
pushi.e 7
pop.v.i [array]global.flag
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "F7"@47574
conv.s.v
push.s "F7"@47574
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i scr_enable_screen_border(argc=1)
popz.v
pushi.e 236
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]
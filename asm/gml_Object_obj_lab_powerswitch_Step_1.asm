.localvar 0 arguments

:[0]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 6
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i global.interact

:[4]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i global.facing
push.s "music/sfx_disturbing.ogg"@2877
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.dis
push.d 0.8
conv.d.v
push.d 0.4
conv.d.v
push.v self.dis
call.i caster_loop(argc=3)
popz.v
push.s "music/sfx_generate.ogg"@2730
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.tr
pushi.e 2229
conv.i.v
pushi.e 280
conv.i.v
pushi.e 60
conv.i.v
call.i scr_marker(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.am
push.d 0.1
pushi.e -1
pushi.e 0
push.v [array]self.am
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 2229
conv.i.v
pushi.e 280
conv.i.v
pushi.e 120
conv.i.v
call.i scr_marker(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.am
push.d 0.1
pushi.e -1
pushi.e 1
push.v [array]self.am
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 2229
conv.i.v
pushi.e 280
conv.i.v
pushi.e 160
conv.i.v
call.i scr_marker(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.am
push.d 0.1
pushi.e -1
pushi.e 2
push.v [array]self.am
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 2229
conv.i.v
pushi.e 280
conv.i.v
pushi.e 220
conv.i.v
call.i scr_marker(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.am
push.d 0.1
pushi.e -1
pushi.e 3
push.v [array]self.am
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 8
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 350
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [10]

:[7]
push.v self.dis
call.i caster_stop(argc=1)
popz.v
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [9]

:[8]
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 2230
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [8]

:[9]
popz.i
pushi.e -1
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e -1
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 47
pop.v.i global.typer
push.s "obj_lab_powerswitch_218"@14753
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

:[10]
push.v self.con
pushi.e 10
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
bf [15]

:[14]
pushi.e 11
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1173
conv.i.v
pushi.e 280
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.al
pushi.e 90
push.v self.al
conv.v.i
pop.v.i [stacktop]self.direction
push.v self.al
conv.v.i
push.v [stacktop]self.usprite
push.v self.al
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e -6
push.v self.al
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e -1
pushi.e -1
pushi.e 1
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
pushi.e -1
pushi.e 2
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.hspeed

:[15]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [19]

:[16]
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [18]

:[17]
pushi.e 2231
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [17]

:[18]
popz.i
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 1
push.v self.al
conv.v.i
pop.v.i [stacktop]self.fun
push.v self.al
conv.v.i
push.v [stacktop]self.utsprite
push.v self.al
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
pushi.e -1
pushi.e 1
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
pushi.e -1
pushi.e 2
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 13
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[19]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [21]

:[20]
pushi.e 6
pop.v.i global.facechoice
pushi.e 6
pop.v.i global.faceemotion
pushi.e 3
pushi.e -5
pushi.e 430
pop.v.i [array]global.flag
push.s "obj_lab_powerswitch_258"@14755
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
pop.v.v self.d
pushi.e 0
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 15
pop.v.i self.con

:[21]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
push.v self.con
pushi.e 15
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [28]

:[25]
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [27]

:[26]
pushi.e 2229
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [26]

:[27]
popz.i
pushi.e 16
pop.v.i self.con

:[28]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [33]

:[29]
pushi.e -1
pushi.e 0
push.v [array]self.am
conv.v.i
push.v [stacktop]self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 300
add.i.v
cmp.v.v GT
bf [33]

:[30]
pushi.e 20
pop.v.i self.con
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [32]

:[31]
pushi.e 2229
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [31]

:[32]
popz.i

:[33]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [37]

:[34]
push.s "obj_lab_powerswitch_294"@14757
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_295"@14759
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_296"@14761
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 495
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [36]

:[35]
push.s "obj_lab_powerswitch_299"@14763
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[36]
push.s "obj_lab_powerswitch_301"@14765
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_302"@14767
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_303"@14769
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_304"@14771
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_305"@14773
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_306"@14775
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_307"@14777
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_308"@14779
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_309"@14781
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_310"@14783
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_311"@14785
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_312"@14787
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_313"@14788
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_314"@14790
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_315"@14792
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_316"@14794
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_317"@14796
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_318"@14798
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_319"@14800
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_320"@14802
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_321"@14804
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_322"@14806
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_323"@14808
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_324"@14810
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_325"@14812
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_326"@14814
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 28
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_327"@14816
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 29
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_328"@14818
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 30
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_329"@14820
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 31
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_330"@14822
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 32
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_331"@14824
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 33
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_332"@14826
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 34
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_333"@14827
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 35
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_335"@14829
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 36
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_336"@14831
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 37
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_337"@14833
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 38
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_338"@14835
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 39
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_339"@14837
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 40
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_340"@14839
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 41
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_341"@14841
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 42
pop.v.v [array]global.msg
pushi.e 21
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 0
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side

:[37]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [39]

:[38]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [40]

:[39]
push.e 0

:[40]
bf [61]

:[41]
push.v 784.stringno
pop.v.v self.sn
push.v self.sn
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
push.v self.al
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.al
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[43]
push.v self.sn
pushi.e 1
cmp.i.v EQ
bt [48]

:[44]
push.v self.sn
pushi.e 3
cmp.i.v EQ
bt [48]

:[45]
push.v self.sn
pushi.e 6
cmp.i.v EQ
bt [48]

:[46]
push.v self.sn
pushi.e 9
cmp.i.v EQ
bt [48]

:[47]
push.v self.sn
pushi.e 19
cmp.i.v EQ
b [49]

:[48]
push.e 1

:[49]
bf [51]

:[50]
push.v self.al
conv.v.i
push.v [stacktop]self.utsprite
push.v self.al
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[51]
push.v self.sn
pushi.e 2
cmp.i.v EQ
bt [53]

:[52]
push.v self.sn
pushi.e 5
cmp.i.v EQ
b [54]

:[53]
push.e 1

:[54]
bf [56]

:[55]
push.v self.al
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.al
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[56]
push.v self.sn
pushi.e 8
cmp.i.v EQ
bt [58]

:[57]
push.v self.sn
pushi.e 13
cmp.i.v EQ
b [59]

:[58]
push.e 1

:[59]
bf [61]

:[60]
pushi.e 1736
push.v self.al
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[61]
push.v self.con
pushi.e 21
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
bf [68]

:[65]
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [67]

:[66]
pushi.e 2229
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [66]

:[67]
popz.i
pushi.e 22
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[68]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [72]

:[69]
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [71]

:[70]
pushi.e 2229
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [70]

:[71]
popz.i
push.v self.al
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.al
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 24
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[72]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [74]

:[73]
push.s "obj_lab_powerswitch_406"@14843
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lab_powerswitch_407"@14845
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
pop.v.v self.ds
pushi.e 0
push.v self.ds
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 26
pop.v.i self.con

:[74]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [76]

:[75]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [77]

:[76]
push.e 0

:[77]
bf [81]

:[78]
pushi.e 3
push.v self.al
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.al
conv.v.i
push.v [stacktop]self.dsprite
push.v self.al
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.25
push.v self.al
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [80]

:[79]
pushi.e 2229
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.25
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.am
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.am
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [79]

:[80]
popz.i
pushi.e 27
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[81]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [end]

:[82]
pushi.e 1576
pushenv [84]

:[83]
pushi.e 0
pop.v.i self.uncan

:[84]
popenv [83]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pushi.e -5
pushi.e 430
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 485
pop.v.i [array]global.flag
pushi.e 12
pushi.e -5
pushi.e 493
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 454
pop.v.i [array]global.flag
pushglb.v global.plot
pushi.e 201
cmp.i.v LT
bf [86]

:[85]
pushi.e 201
pop.v.i global.plot

:[86]
pushi.e 0
pop.v.i self.con
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v

:[end]